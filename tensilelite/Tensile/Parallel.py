################################################################################
#
# Copyright (C) 2016-2024 Advanced Micro Devices, Inc. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
################################################################################

import collections
import itertools
import os
import sys
import time

from joblib import Parallel, delayed


def CPUThreadCount(enable=True):
  from .Common import globalParameters
  if not enable:
    return 1
  else:
    if os.name == "nt":
      cpu_count = os.cpu_count()
    else:
      cpu_count = len(os.sched_getaffinity(0))
    cpuThreads = globalParameters["CpuThreads"]
    if cpuThreads < 1:
        return min(cpu_count, 32)  # Temporarily hack to fix oom issue, remove this after jenkin is fixed.
    return min(cpu_count, cpuThreads)

def OverwriteGlobalParameters(newGlobalParameters):
  from . import Common
  Common.globalParameters.clear()
  Common.globalParameters.update(newGlobalParameters)

def pcallWithGlobalParamsMultiArg(f, args, newGlobalParameters):
  OverwriteGlobalParameters(newGlobalParameters)
  return f(*args)

def pcallWithGlobalParamsSingleArg(f, arg, newGlobalParameters):
  OverwriteGlobalParameters(newGlobalParameters)
  return f(arg)

def apply_print_exception(item, *args):
  #print(item, args)
  try:
    if len(args) > 0:
      func = item
      args = args[0]
      return func(*args)
    else:
      func, item = item
      return func(item)
  except Exception:
    import traceback
    traceback.print_exc()
    raise
  finally:
    sys.stdout.flush()
    sys.stderr.flush()

def OverwriteGlobalParameters(newGlobalParameters):
  from . import Common
  Common.globalParameters.clear()
  Common.globalParameters.update(newGlobalParameters)

def ProcessingPool(enable=True, maxTasksPerChild=None):
  import multiprocessing
  import multiprocessing.dummy

  threadCount = CPUThreadCount()

  if (not enable) or threadCount <= 1:
    return multiprocessing.dummy.Pool(1)

  if multiprocessing.get_start_method() == "spawn":
    from . import Common
    return multiprocessing.Pool(threadCount, initializer=OverwriteGlobalParameters, maxtasksperchild=maxTasksPerChild, initargs=(Common.globalParameters,))
  else:
    return multiprocessing.Pool(threadCount, maxtasksperchild=maxTasksPerChild)

def ParallelMap(function, objects, message="", enable=True, method=None, maxTasksPerChild=None):
  """
  Generally equivalent to list(map(function, objects)), possibly executing in parallel.

    message: A message describing the operation to be performed.
    enable: May be set to false to disable parallelism.
    method: A function which can fetch the mapping function from a processing pool object.
        Leave blank to use .map(), other possiblities:
           - `lambda x: x.starmap` - useful if `function` takes multiple parameters.
           - `lambda x: x.imap` - lazy evaluation
           - `lambda x: x.imap_unordered` - lazy evaluation, does not preserve order of return value.
  """
  from .Common import globalParameters
  threadCount = CPUThreadCount(enable)
  pool = ProcessingPool(enable, maxTasksPerChild)

  if threadCount <= 1 and globalParameters["ShowProgressBar"]:
    # Provide a progress bar for single-threaded operation.
    # This works for method=None, and for starmap.
    mapFunc = map
    if method is not None:
      # itertools provides starmap which can fill in for pool.starmap.  It provides imap on Python 2.7.
      # If this works, we will use it, otherwise we will fallback to the "dummy" pool for single threaded
      # operation.
      try:
        mapFunc = method(itertools)
      except NameError:
        mapFunc = None

    if mapFunc is not None:
      from . import Utils
      return list(mapFunc(function, Utils.tqdm(objects, message)))

  mapFunc = pool.map
  if method: mapFunc = method(pool)

  objects = zip(itertools.repeat(function), objects)
  function = apply_print_exception

  countMessage = ""
  try:
    countMessage = " for {} tasks".format(len(objects))
  except TypeError: pass

  if message != "": message += ": "

  print("{0}Launching {1} threads{2}...".format(message, threadCount, countMessage))
  sys.stdout.flush()
  currentTime = time.time()
  rv = mapFunc(function, objects)
  totalTime = time.time() - currentTime
  print("{0}Done. ({1:.1f} secs elapsed)".format(message, totalTime))
  sys.stdout.flush()
  pool.close()
  return rv

def ParallelMap2(function, objects, message="", enable=True, multiArg=True):
  """
  Generally equivalent to list(map(function, objects)), possibly executing in parallel.

    message: A message describing the operation to be performed.
    enable: May be set to false to disable parallelism.
    multiArg: True if objects represent multiple arguments
                (differentiates multi args vs single collection arg)
  """
  from .Common import globalParameters
  from . import Utils
  threadCount = CPUThreadCount(enable)

  if threadCount <= 1 and globalParameters["ShowProgressBar"]:
    # Provide a progress bar for single-threaded operation.
    callFunc = lambda args: function(*args) if multiArg else lambda args: function(args)
    return [callFunc(args) for args in Utils.tqdm(objects, message)]

  countMessage = ""
  try:
    countMessage = " for {} tasks".format(len(objects))
  except TypeError: pass

  if message != "": message += ": "
  print("{0}Launching {1} threads{2}...".format(message, threadCount, countMessage))
  sys.stdout.flush()
  currentTime = time.time()

  pcall = pcallWithGlobalParamsMultiArg if multiArg else pcallWithGlobalParamsSingleArg
  pargs = zip(objects, itertools.repeat(globalParameters))
  rv = Parallel(n_jobs=threadCount)(delayed(pcall)(function, a, params) for a, params in pargs)

  totalTime = time.time() - currentTime
  print("{0}Done. ({1:.1f} secs elapsed)".format(message, totalTime))
  sys.stdout.flush()
  return rv
