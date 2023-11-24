#!/bin/bash

pattern=$1
shortname=0
outFileNamePrefixOld="None"
echo "kernel list" > kernel_list.txt
for asm in *$pattern*.s; do
    inFileName=$(echo $asm | cut -d "." -f 1)
    lineNum=$(grep -n -m 1 ".end_amdgpu_metadata" $inFileName.s | awk -F  ":" '{print $1}')
    lineNum=$((lineNum+=1))

    outFileNamePrefix=$(echo $inFileName | awk -F  "MT" '{print $1}')
    if [ $outFileNamePrefixOld != $outFileNamePrefix ]; then
        shortname=0
    fi
    outFileNamePrefixOld=$outFileNamePrefix

    outFileName=$(echo $outFileNamePrefix)"shortname$shortname"
    head -$lineNum $inFileName.s > $outFileName.s
    sed -i "s/$inFileName/$outFileName/g" $outFileName.s
    shortname=$((shortname+=1))

    /opt/rocm/llvm/bin/clang++ -x assembler -target amdgcn-amd-amdhsa -mcode-object-version=4 -mcpu=gfx942 -mwavefrontsize64 -c -o temp.o $inFileName.s
    /opt/rocm/llvm/bin/llvm-objdump --triple=amdgcn-amd-amdhsa--gfx942 -d temp.o | grep "// " | grep ": " | sed "s/.*: //" | sed "s/ \([0-9a-f]*\)/, 0x\1/" |sed "s/^/.long 0x/" >>  $outFileName.s
    rm temp.o

    echo \"$outFileName\", >> kernel_list.txt
done