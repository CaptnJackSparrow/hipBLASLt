
/******************************************/
/* Begin Kernel                           */
/******************************************/
.amdgcn_target "amdgcn-amd-amdhsa--gfx942"
.text
.protected Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB
.globl Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB
.p2align 8
.type Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_accum_offset 128 // accvgpr offset
  .amdhsa_next_free_vgpr 256 // vgprs
  .amdhsa_next_free_sgpr 102 // sgprs
  .amdhsa_group_segment_fixed_size 12800 // lds bytes
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
  .amdhsa_user_sgpr_count 13
  .amdhsa_user_sgpr_kernarg_preload_length 11
  .amdhsa_user_sgpr_kernarg_preload_offset 0
.end_amdhsa_kernel
.text
/* Num VGPR   =120 */
/* Num AccVGPR=8 */
/* Num SGPR   =76 */

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 4 x 2 */
/* SubGroup= 4 x 64 */
/* VectorWidthA=1 */
/* VectorWidthB=1 */
/* GlobalReadVectorWidthA=8, GlobalReadVectorWidthB=8 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=1 */
.amdgpu_metadata
---
custom.config:
   ProblemType:
      OperationType: GEMM
      DataTypeA: h
      DataTypeB: f8
      UseScaleAB: True
      DataType: h
      DestDataType: h
      ComputeDataType: s
      HighPrecisionAccumulate: True
      TransposeA: False
      TransposeB: False
      UseBeta: True
      Batched: True
   MatrixInstruction: [16, 16, 16, 1, 1, 1,2, 1,4]
   1LDSBuffer: 1
   DepthU: 128
   StaggerU: 4
   WorkGroupMapping: 1
   WaveSeparateGlobalReadA: 1
   WaveSeparateGlobalReadB: 1
   GlobalReadVectorWidthA: 8
   GlobalReadVectorWidthB: 8
   AssertFree0ElementMultiple: 8
   AssertSummationElementMultiple: 128
   GlobalSplitU: 19
   GlobalSplitUAlgorithm: MultipleBuffer
   InternalSupportParams: {SupportCustomWGM: True, SupportUserGSU: True}
   PreloadKernArgs: 1
   NoReject: 1
amdhsa.version:
  - 1
  - 1
amdhsa.kernels:
  - .name: Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB
    .symbol: 'Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB.kd'
    .language:                   OpenCL C
    .language_version:
      - 2
      - 0
    .args:
      - .name:            SizesFree0
        .size:            4
        .offset:          0
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree1
        .size:            4
        .offset:          4
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesFree2
        .size:            4
        .offset:          8
        .value_kind:      by_value
        .value_type:      u32
      - .name:            SizesSum0
        .size:            4
        .offset:          12
        .value_kind:      by_value
        .value_type:      u32
      - .name:            D
        .size:            8
        .offset:          16
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            C
        .size:            8
        .offset:          24
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            A
        .size:            8
        .offset:          32
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            B
        .size:            8
        .offset:          40
        .value_kind:      global_buffer
        .value_type:      f16
        .address_space:   generic
      - .name:            strideD0
        .size:            4
        .offset:          48
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideD1
        .size:            4
        .offset:          52
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC0
        .size:            4
        .offset:          56
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideC1
        .size:            4
        .offset:          60
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA0
        .size:            4
        .offset:          64
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideA1
        .size:            4
        .offset:          68
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB0
        .size:            4
        .offset:          72
        .value_kind:      by_value
        .value_type:      u32
      - .name:            strideB1
        .size:            4
        .offset:          76
        .value_kind:      by_value
        .value_type:      u32
      - .name:            alpha
        .size:            4
        .offset:          80
        .value_kind:      by_value
        .value_type:      f32
      - .name:            beta
        .size:            4
        .offset:          84
        .value_kind:      by_value
        .value_type:      f32
      - .name:            internalArgs
        .size:            4
        .offset:          88
        .value_kind:      by_value
        .value_type:      u32
      - .name:            AddressScaleA
        .size:            8
        .offset:          92
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            AddressScaleB
        .size:            8
        .offset:          100
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
    .group_segment_fixed_size:   12800
    .kernarg_segment_align:      8
    .kernarg_segment_size:       112
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 76
    .sgpr_spill_count:           0
    .vgpr_count:                 120
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Custom_Cijk_Ailk_Bljk_HF8_HHS_BH_SAB_MT16x128x128_MI16x16x1_GRVWA8_GRVWB8_DTVB:

/* Magic div and mod functions */
.macro V_MAGIC_DIV dstIdx:req dividend:req magicNumber:req magicShift:req magicA:req
    v_mul_hi_u32 v[\dstIdx+1] \dividend \magicNumber
    v_mul_lo_u32 v[\dstIdx+0] \dividend \magicA
    v_add_u32 v[\dstIdx+0] v[\dstIdx+0] v[\dstIdx+1]
    v_lshrrev_b32 v[\dstIdx+0] \magicShift v[\dstIdx+0]
.endm

/******************************************/
/* VGPR Assignments                       */
/******************************************/
/* ValuC range: [0-0), serializedStore enabled */
.set vgprValuC, 0
/* ValuA/B   Xn=PLR buffer idx,  In=InnerUnroll idx */
.set vgprValuA_X0_I0, 0
.set vgprValuA_X1_I0, 2
.set vgprValuA_X2_I0, 4
.set vgprValuA_X3_I0, 6
.set vgprValuA_X4_I0, 8
.set vgprValuA_X5_I0, 10
.set vgprValuA_X6_I0, 12
.set vgprValuA_X7_I0, 14
.set vgprValuA_X0_I0_D1, 16
.set vgprValuA_X1_I0_D1, 18
.set vgprValuA_X2_I0_D1, 20
.set vgprValuA_X3_I0_D1, 22
.set vgprValuA_X4_I0_D1, 24
.set vgprValuA_X5_I0_D1, 26
.set vgprValuA_X6_I0_D1, 28
.set vgprValuA_X7_I0_D1, 30
.set vgprValuB_X0_I0, 32
.set vgprValuB_X1_I0, 36
.set vgprValuB_X2_I0, 40
.set vgprValuB_X3_I0, 44
.set vgprValuB_X4_I0, 48
.set vgprValuB_X5_I0, 52
.set vgprValuB_X6_I0, 56
.set vgprValuB_X7_I0, 60

.set agprValuB_X0_I0, 8
.set agprValuB_X1_I0, 12
.set agprValuB_X2_I0, 16
.set agprValuB_X3_I0, 20
.set agprValuB_X4_I0, 24
.set agprValuB_X5_I0, 28
.set agprValuB_X6_I0, 32
.set agprValuB_X7_I0, 36

.set agprValuB_X0_I1, 40
.set agprValuB_X1_I1, 44
.set agprValuB_X2_I1, 48
.set agprValuB_X3_I1, 52
.set agprValuB_X4_I1, 56
.set agprValuB_X5_I1, 60
.set agprValuB_X6_I1, 64
.set agprValuB_X7_I1, 68

.set vgprLocalWriteAddrA, 64
// .set vgprLocalWriteAddrB, 65
.set vgprGlobalReadOffsetA, 66
.set vgprGlobalReadOffsetB, 67
.set vgprG2LA, 68
.set vgprG2LB, 72
.set vgprLocalReadAddrA, 65
// .set vgprLocalReadAddrB, 89
.set vgprValuB_X0_I1, 88
.set vgprValuB_X1_I1, 92
.set vgprValuB_X2_I1, 96
.set vgprValuB_X3_I1, 100
.set vgprValuB_X4_I1, 104
.set vgprValuB_X5_I1, 108
.set vgprValuB_X6_I1, 112
.set vgprValuB_X7_I1, 116
.set vgprCVT0, 120
.set vgprCVT1, 121
.set vgprSerial, 122

/******************************************/
/* SGPR Assignments                       */
/******************************************/
.set sgprKernArgAddress, 0
.set sgprWorkGroup0, 2
.set sgprWorkGroup1, 3
.set sgprWorkGroup2, 4
.set sgprGSUSumIdx, 6
.set sgprGSULog2BpeC, 5
.set sgprGSULog2BpeD, 8
.set sgprWGM, 9
.set sgprLoopCounterL, 10
.set sgprOrigLoopCounter, 11
.set sgprSrdD, 12
.set sgprSrdC, 16
.set sgprNumWorkGroups0, 20
.set sgprNumWorkGroups1, 21
.set sgprSizesFree, 24
.set sgprSizesSum, 27
.set sgprAddressD, 28
.set sgprAddressC, 30
.set sgprAddressA, 32
.set sgprAddressB, 34
.set sgprStridesD, 36
.set sgprStridesC, 38
.set sgprStridesA, 40
.set sgprStridesB, 42
.set sgprAlpha, 44
.set sgprBeta, 45
.set sgprGSU, 46
.set sgprSrdA, 48
.set sgprSrdB, 52
.set sgprShadowLimitA, 22
.set sgprShadowLimitB, 56
.set sgprStaggerUIter, 47
.set sgprWrapUA, 58
.set sgprWrapUB, 60
.set sgprGlobalReadIncsA, 62
.set sgprGlobalReadIncsB, 63
.set sgprScalarGlobalReadOffsetB, 64

/* Size Assignments */
.set sgprSizeI, sgprSizesFree+0
.set sgprSizeJ, sgprSizesFree+1
.set sgprSizeK, sgprSizesFree+2
.set sgprSizeL, sgprSizesSum+0

/* Stride Assignments */
.set constStrideD0I, 1
.set sgprStrideD1J, sgprStridesD+0
.set sgprStrideDK, sgprStridesD+1
.set constStrideC0I, 1
.set sgprStrideC1J, sgprStridesC+0
.set sgprStrideCK, sgprStridesC+1
.set constStrideA0I, 1
.set sgprStrideAL, sgprStridesA+0
.set sgprStrideAK, sgprStridesA+1
.set constStrideBL, 1
.set sgprStrideB1J, sgprStridesB+0
.set sgprStrideBK, sgprStridesB+1

.set MT0, 16
.set MT1, 128
.set DepthU, 128
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
.set BpeAGR, 2
.set BpeAGRLog2, 1
.set BpeBGR, 1
.set BpeBGRLog2, 0
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 8
.set SrdShiftLeftB, 8
/* 2GB limit - set offsets to -1 to exceed this and clamp */
.set BufferLimit, 0xffffffff
.set BufferOOB, 0x80000000

/******************************************/
/* Bits 127:96 of SRD.                    */
/* hex: 0x00020000                        */
/* dst_sel_x (3b): 0                      */
/* dst_sel_y (3b): 0                      */
/* dst_sel_z (3b): 0                      */
/* dst_sel_w (3b): 0                      */
/* num_format (3b): 0                     */
/* data_format (4b): 4                    */
/* user_vm_enable (1b): 0                 */
/* user_vm_mode (1b): 0                   */
/* index_stride (2b): 0                   */
/* add_tid_enable (1b): 0                 */
/* _unusedA (3b): 0                       */
/* nv (1b): 0                             */
/* _unusedB (2b): 0                       */
/* type (2b): 0                           */
/******************************************/
.set Srd127_96, 0x00020000

/* Global Offset A */
.macro GLOBAL_OFFSET_A vgprAddr:req vgprOffset0I:req vgprOffsetL:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideAL] v[\vgprOffsetL] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc v[\vgprOffset0I] v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0] 0x8 v[\vgprAddr+0]      // add prepad for pointer shift
    v_lshlrev_b32 v[\vgprAddr+0] 0x1 v[\vgprAddr+0]  // offset *= bytes/element
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetL:req vgprOffset1J:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideB1J] v[\vgprOffset1J] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc v[\vgprOffsetL] v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0] 0x8 v[\vgprAddr+0]      // add prepad for pointer shift
                                                       // offset *= bytes/element (multiplier is 1 do nothing)
.endm

/* Dynamic Scalar Divide: vQuotient=vDividend/vDivisor; vRemainder=vDividend%vDivisor; */
.macro DYNAMIC_VECTOR_DIVIDE vQuotient vRemainder vDividend vDivisor vTmp0 vTmp1 sTmp
    v_cvt_f32_u32 v[\vQuotient] v[\vDivisor]
    v_rcp_f32 v[\vQuotient] v[\vQuotient]
    v_mul_f32 v[\vQuotient] 0x4f800000 v[\vQuotient]
    v_cvt_u32_f32 v[\vQuotient] v[\vQuotient]
    v_mul_lo_u32 v[\vRemainder] v[\vDivisor] v[\vQuotient]
    v_mul_hi_u32 v[\vTmp0] v[\vDivisor] v[\vQuotient]
    v_sub_co_u32 v[\vTmp1] vcc 0x0 v[\vRemainder]
    v_cmp_ne_i32 s[\sTmp:\sTmp+1] 0x0 v[\vTmp0]
    v_cndmask_b32 v[\vRemainder] v[\vTmp1] v[\vRemainder] s[\sTmp:\sTmp+1]
    v_mul_hi_u32 v[\vRemainder] v[\vRemainder] v[\vQuotient]
    v_sub_co_u32 v[\vTmp0] vcc v[\vQuotient] v[\vRemainder]
    v_add_co_u32 v[\vQuotient] vcc v[\vQuotient] v[\vRemainder]
    v_cndmask_b32 v[\vQuotient] v[\vQuotient] v[\vTmp0] s[\sTmp:\sTmp+1]
    v_mul_hi_u32 v[\vQuotient] v[\vQuotient] v[\vDividend]
    v_mul_lo_u32 v[\vRemainder] v[\vQuotient] v[\vDivisor]
    v_sub_co_u32 v[\vTmp0] vcc v[\vDividend] v[\vRemainder]
    v_cmp_ge_u32 s[\sTmp:\sTmp+1] v[\vDividend] v[\vRemainder]
    v_add_co_u32 v[\vRemainder] vcc 0x1 v[\vQuotient]
    v_add_co_u32 v[\vTmp1] vcc -1 v[\vQuotient]
    v_cmp_le_u32 vcc v[\vDivisor] v[\vTmp0]
    s_and_b64 vcc s[\sTmp:\sTmp+1] vcc
    v_cndmask_b32 v[\vQuotient] v[\vQuotient] v[\vRemainder] vcc
    v_cndmask_b32 v[\vQuotient] v[\vTmp1] v[\vQuotient] s[\sTmp:\sTmp+1]
    v_cmp_ne_i32 vcc 0x0 v[\vDivisor]
    v_cndmask_b32 v[\vQuotient] -1 v[\vQuotient] vcc // final result
    v_mul_lo_u32 v[\vRemainder] v[\vQuotient] v[\vDivisor]
    v_sub_co_u32 v[\vRemainder] vcc v[\vDividend] v[\vRemainder] // final result
.endm

/******************************************/
/* Allocate Resources                     */
/******************************************/

/* Load Kernel Args */
s_load_dwordx16 s[24:39], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x0
s_load_dwordx4 s[40:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x40
s_load_dwordx2 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x50
s_load_dword s46, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x58
s_branch label_common_kernel_entry

/* pad 55 snops to satisfy 0x100 code size for Preload Backward Compatibility Prologue */
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_nop 0
s_load_dword s35, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x2c
s_load_dwordx8 s[36:43], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x30
s_load_dwordx2 s[44:45], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x50
s_load_dword s46, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x58
s_mov_b32 s24, s2                                  // move preload data to correct sgpr
s_mov_b32 s25, s3                                  // move preload data to correct sgpr
s_mov_b32 s26, s4                                  // move preload data to correct sgpr
s_mov_b32 s27, s5                                  // move preload data to correct sgpr
s_mov_b32 s28, s6                                  // move preload data to correct sgpr
s_mov_b32 s29, s7                                  // move preload data to correct sgpr
s_mov_b32 s30, s8                                  // move preload data to correct sgpr
s_mov_b32 s31, s9                                  // move preload data to correct sgpr
s_mov_b32 s32, s10                                 // move preload data to correct sgpr
s_mov_b32 s33, s11                                 // move preload data to correct sgpr
s_mov_b32 s34, s12                                 // move preload data to correct sgpr
label_common_kernel_entry:  /// for both preload/non-preload common code
s_mov_b32 s[sgprWorkGroup0+0], s13                 // restore workgroup id
s_mov_b32 s[sgprWorkGroup0+1], s14                 // restore workgroup id
s_mov_b32 s[sgprWorkGroup0+2], s15                 // restore workgroup id
s_mov_b32 m0, 0x3200                               // LDS clamp at 12800 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id
/* init: add vgpr [0...64) to pool */
/* init: add vgpr [0...0) to pool */
/* init: add agpr [0...8) to pool */

/******************************************/
/* Local Read Addresses                   */
/******************************************/

/* local read addresses: tile assignments a/b */
/* lr0I */
v_and_b32 v1, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
v_lshrrev_b32 v1, 4, v1                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v1, 0, v1                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v1, 0x4, v1                          // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_u32 v0, v1, v0                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v1, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v1, 0x7, v1                          // 5. K offset: lrKOffset = kIdx * mStride(128)
v_add_u32 v0, v1, v0                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
/* lr1J */
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v1, 0x7, v1                          // 1. N offset: nOffset = nIdx * nStride(128)
v_lshrrev_b32 v2, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v2, 0, v2                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v2, 0xb, v2                          // 2. block offset: bnOffset = bnIdx * strideBlock(2048)
v_add_u32 v1, v2, v1                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v2, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v2, 4, v2                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 0x3, v2                          // 5. K offset: lrKOffset = kIdx * mStride(8)
v_add_u32 v1, v2, v1                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v2, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v2, 3, v2                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(4)
v_lshlrev_b32 v2, 0xb, v2                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(2048)
v_add_u32 v1, v2, v1                               // 7. final local read offset: flrOffset = lrOffset + WOffset

/* local read addresses: final offsets a */
v_lshrrev_b32 v2, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s22, 16                                  // LSU offset: stride = MT0(16) + PAD0(0)
v_mul_lo_u32 v2, s22, v2                           // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrA], v2, v0, 0x1  // Final Offset: offset = (lro0*VW+lsuoffset)*bpe
v_lshrrev_b32 v3, 8, v[vgprLocalReadAddrA]         // Final Offset: padding 16 per block 256
v_lshlrev_b32 v3, 0x5, v3                          // Final Offset: padding 16 per block 256
v_add_u32 v[vgprLocalReadAddrA], v3, v[vgprLocalReadAddrA] // Final Offset: add padding 16 per block 256

/* local read addresses: final offsets b */
// v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
// s_mov_b32 s22, 128                                 // LSU offset: stride = MT1(128) + PAD1(0)
// v_mul_lo_u32 v0, s22, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
// v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v1, 0x1  // Final Offset: offset = (lro1*VW+lsuoffset)*bpe
// v_lshrrev_b32 v2, 8, v[vgprLocalReadAddrB]         // Final Offset: padding 16 per block 256
// v_lshlrev_b32 v2, 0x5, v2                          // Final Offset: padding 16 per block 256
// v_add_u32 v[vgprLocalReadAddrB], v2, v[vgprLocalReadAddrB] // Final Offset: add padding 16 per block 256

/* local read addresses: declare addresses a */
/* N/A */

/* local read addresses: declare addresses b */
// v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x1200, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)

/******************************************/
/* Local Write Addresses                  */
/******************************************/
/* LVCA = 2 */
/* v1 = A-unroll = serial/LVCA */
v_and_b32 v4, 63, v[vgprSerial]                    // v4 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 1, v4                            // v1 = v4 / 2
v_and_b32 v0, 1, v4                                // v0 = v4 % 2
v_readfirstlane_b32 s22, v[vgprSerial]             // WaveIdxWavefrontWidth
s_lshr_b32 s22, s22, 0x6                           // WaveId
s_mul_i32 s22, s22, 32                             // Each wave loads continuous lsp(32)*nrp(1) columns
v_add_u32 v1, s22, v1                              // Add back to column index
/* tile *= glvw */
v_lshlrev_b32 v0, 0x3, v0                          // v0 = v0 * 8
v_mov_b32 v4, v1                                   // copy for GlobalSplitU
/* LVCB = 16 */
/* v3 = B-unroll = serial%LVCB */
v_and_b32 v5, 63, v[vgprSerial]                    // v5 = v[vgprSerial] % 64
v_lshrrev_b32 v2, 4, v5                            // v2 = v5 / 16
v_and_b32 v3, 15, v5                               // v3 = v5 % 16
v_readfirstlane_b32 s22, v[vgprSerial]             // WaveIdxWavefrontWidth
s_lshr_b32 s22, s22, 0x6                           // WaveId
s_mul_i32 s22, s22, 32                             // Each wave loads continuous lsp(4)*nrp(8) columns
v_add_u32 v2, s22, v2                              // Add back to column index
/* unroll *= glvw */
v_lshlrev_b32 v3, 0x3, v3                          // v3 = v3 * 8
v_mov_b32 v5, v3                                   // copy for GlobalSplitU
/* lwaUnrollAssignmentA = v4 */
/* lwaUnrollAssignmentB = v5 */

/* local write addresses: first offset a */
v_mul_u32_u24 v[vgprLocalWriteAddrA], 0x10, v4     // lwAL**(MTA + PAD)
v_add_lshl_u32 v[vgprLocalWriteAddrA], v0, v[vgprLocalWriteAddrA], 0x1 // lwFOA = (lwAA + lwAL*(MT0I+PAD))*bpe
v_lshrrev_b32 v6, 8, v[vgprLocalWriteAddrA]        // padding 16 per block 256
v_lshlrev_b32 v6, 0x5, v6                          // padding 16 per block 256
v_add_u32 v[vgprLocalWriteAddrA], v6, v[vgprLocalWriteAddrA] // add padding 16 per block 256

/* local write addresses: first offset b */
// v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x80, v2     // lwBL**(DepthU_Compute + PAD)
// v_add_lshl_u32 v[vgprLocalWriteAddrB], v5, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(DepthU+PAD))*bpe
// v_lshrrev_b32 v6, 8, v[vgprLocalWriteAddrB]        // padding 16 per block 256
// v_lshlrev_b32 v6, 0x5, v6                          // padding 16 per block 256
// v_add_u32 v[vgprLocalWriteAddrB], v6, v[vgprLocalWriteAddrB] // add padding 16 per block 256
// v_add_co_u32 v[vgprLocalWriteAddrB], vcc, 0x1200, v[vgprLocalWriteAddrB] // lwFOB = lwB1J + lwBL*MT1J + LDS_OFFSET_B=2304*2
s_waitcnt lgkmcnt(0)                               // wait for 48 bytes of kern args
s_and_b32 s[sgprWGM], s[sgprGSU], 0xff00
s_lshr_b32 s[sgprWGM], s[sgprWGM], 0x8
s_and_b32 s[sgprGSU], s[sgprGSU], 0xff
label_stop:
v_mov_b32 v8, MT0                                  // set MT0 into sgpr
v_mov_b32 v7, s[sgprSizesFree+0]                   // set Free0 size
v_cvt_f32_u32 v6, v8                               // v6 = ceil(v7 / v8)
v_rcp_iflag_f32 v6, v6                             // v6 = ceil(v7 / v8)
v_cvt_f32_u32 v9, v7                               // v6 = ceil(v7 / v8)
v_mul_f32 v6, v6, v9                               // v6 = ceil(v7 / v8)
v_cvt_u32_f32 v6, v6                               // v6 = ceil(v7 / v8)
v_mul_u32_u24 v9, v6, v8                           // v6 = ceil(v7 / v8)
v_sub_u32 v9, v7, v9                               // v6 = ceil(v7 / v8)
v_cmp_ne_u32 vcc, v9, 0                            // v6 = ceil(v7 / v8)
v_addc_co_u32 v6, vcc, v6, 0, vcc                  // ceil
v_mov_b32 v8, MT1                                  // set MT1 into sgpr
v_mov_b32 v7, s[sgprSizesFree+1]                   // set Free1 size
v_readfirstlane_b32 s[sgprNumWorkGroups0], v6      // set back to numWorkGroup0
v_cvt_f32_u32 v6, v8                               // v6 = ceil(v7 / v8)
v_rcp_iflag_f32 v6, v6                             // v6 = ceil(v7 / v8)
v_cvt_f32_u32 v9, v7                               // v6 = ceil(v7 / v8)
v_mul_f32 v6, v6, v9                               // v6 = ceil(v7 / v8)
v_cvt_u32_f32 v6, v6                               // v6 = ceil(v7 / v8)
v_mul_u32_u24 v9, v6, v8                           // v6 = ceil(v7 / v8)
v_sub_u32 v9, v7, v9                               // v6 = ceil(v7 / v8)
v_cmp_ne_u32 vcc, v9, 0                            // v6 = ceil(v7 / v8)
v_addc_co_u32 v6, vcc, v6, 0, vcc                  // ceil
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprNumWorkGroups1], v6      // set back to numWorkGroup1
s_sub_u32 s[sgprAddressA+0], s[sgprAddressA+0], 16 // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressA+1], s[sgprAddressA+1], 0 // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprAddressB+0], s[sgprAddressB+0], 8  // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressB+1], s[sgprAddressB+1], 0 // pre-pad to make room for possible pointer shift

/* Short circuit condition if Alpha == 0, then sumDims=0 */
v_cmp_eq_f32 vcc, s[sgprAlpha], 0.0                // s[Alpha] == 0.0f ?
s_cbranch_vccz label_AlphaNonZero                  // branch if s[Alpha] != 0
s_mov_b32 s[sgprSizesSum+0], 0x0                   // Set summation dim=0 if Alpha == 0
label_AlphaNonZero:

/******************************************/
/* Begin setupNewTile                     */
/******************************************/

/* global read addresses: work-group */
/* graWorkGroup mapping */
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU                           // branch if GSU == 1
// GSU-not-WGMapRR :nwg1 = (size1J + MT1J - 1) / MT1J;
v_cvt_f32_u32 v6, s[sgprGSU]                       // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_rcp_iflag_f32 v6, v6                             // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_cvt_f32_u32 v7, s[sgprWorkGroup1]                // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_mul_f32 v6, v6, v7                               // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_cvt_u32_f32 v6, v6                               // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_mul_u32_u24 v7, v6, s[sgprGSU]                   // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_sub_u32 v7, s[sgprWorkGroup1], v7                // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_cmpx_eq_u32 exec, v7, s[sgprGSU]                 // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_add_u32 v6, 1, v6                                // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_mov_b32 v7, 0                                    // s[sgprGSUSumIdx] = s[sgprWorkGroup1] % s[sgprGSU]
s_mov_b64 exec, -1                                 // s[sgprWorkGroup1] = s[sgprWorkGroup1] / s[sgprGSU]
v_readfirstlane_b32 s[sgprWorkGroup1], v6
v_readfirstlane_b32 s[sgprGSUSumIdx], v7
s_mov_b32 s[sgprGSULog2BpeC], 1
s_mov_b32 s[sgprGSULog2BpeD], 2
s_branch label_GSU_End
label_GSU:
s_mov_b64 s[sgprGSUSumIdx:sgprGSUSumIdx+1], 0      // Set GSUSumIdx to 0
s_mov_b32 s[sgprGSULog2BpeC], 1
s_mov_b32 s[sgprGSULog2BpeD], 1
label_GSU_End:
s_cmp_le_u32 s[sgprWGM], 1                         // WGM <= 1 ?
s_cbranch_scc1 label_WGM                           // branch if WGM <= 1
v_cvt_f32_u32 v6, s[sgprWGM]                       // WGM
v_rcp_iflag_f32 v6, v6                             // WGM
v_cvt_f32_u32 v7, s[sgprWorkGroup1]                // WGM
v_mul_f32 v6, v6, v7                               // WGM
v_cvt_u32_f32 v6, v6                               // WGM
v_mul_u32_u24 v7, v6, s[sgprWGM]                   // WGM
v_sub_u32 v7, s[sgprWorkGroup1], v7                // WGM
v_cmpx_eq_u32 exec, v7, s[sgprWGM]                 // WGM
v_add_u32 v6, 1, v6                                // WGM
s_mov_b64 exec, -1                                 // WGM
v_readfirstlane_b32 s74, v6
s_mul_i32 s75, s74, s[sgprWGM]                     // quotient * non-magic divisor
s_sub_u32 s75, s[sgprWorkGroup1], s75              // WorkGroup1=remainder
s_mul_i32 s75, s75, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s75, s75, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg0
v_cvt_f32_u32 v6, s[sgprWGM]                       // WGM
v_rcp_iflag_f32 v6, v6                             // WGM
v_cvt_f32_u32 v7, s[sgprNumWorkGroups1]            // WGM
v_mul_f32 v6, v6, v7                               // WGM
v_cvt_u32_f32 v6, v6                               // WGM
v_mul_u32_u24 v7, v6, s[sgprWGM]                   // WGM
v_sub_u32 v7, s[sgprNumWorkGroups1], v7            // WGM
v_cmpx_eq_u32 exec, v7, s[sgprWGM]                 // WGM
v_add_u32 v6, 1, v6                                // WGM
s_mov_b64 exec, -1                                 // WGM
v_readfirstlane_b32 s72, v6
s_mul_i32 s73, s[sgprWGM], s72                     // quotient * non-magic divisor
s_sub_u32 s71, s[sgprNumWorkGroups1], s73          // WorkGroup1=remainder
s_cmp_eq_u32 s71, 0                                // remainder == 0 ?
s_cmov_b32 s71, s[sgprWGM]                         // remainder = WGM if remainder == 0
s_cmp_ge_u32 s74, s72                              // blockId >= numFullBlocks ?
s_cselect_b32 s72, s71, s[sgprWGM]
v_cvt_f32_u32 v6, s72                              // s[sgprWorkGroup0] = s75 / s72
v_rcp_iflag_f32 v6, v6                             // s[sgprWorkGroup0] = s75 / s72
v_cvt_f32_u32 v7, s75                              // s[sgprWorkGroup0] = s75 / s72
v_mul_f32 v6, v6, v7                               // s[sgprWorkGroup0] = s75 / s72
v_cvt_u32_f32 v6, v6                               // s[sgprWorkGroup0] = s75 / s72
v_mul_u32_u24 v7, v6, s72                          // s[sgprWorkGroup0] = s75 / s72
v_sub_u32 v7, s75, v7                              // s[sgprWorkGroup0] = s75 / s72
v_cmpx_eq_u32 exec, v7, s72                        // s[sgprWorkGroup0] = s75 / s72
v_add_u32 v6, 1, v6                                // s[sgprWorkGroup0] = s75 / s72
v_mov_b32 v7, 0                                    // s[sgprWorkGroup1] = s75 % s72
s_mov_b64 exec, -1                                 // s[sgprWorkGroup0] = s75 / s72
v_readfirstlane_b32 s[sgprWorkGroup0], v6
v_readfirstlane_b32 s[sgprWorkGroup1], v7
s_mul_i32 s74, s74, s[sgprWGM]                     // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s74 // wg1 += blockId * WGM
label_WGM:

/* global read addresses: tile offset assignment a */
/* graTileAssignmentA = v0 */

/* global read addresses: tile offset assignment b */
/* graTileAssignmentB = v2 */

/* global read addresses: unroll assignment a */
/* v1 */

/* global read addresses: unroll assignment b */
/* v3 */

/* global read addresses: other free assignments */
/* s[sgprWorkGroup2] */

/* global read addresses: tile offsets a */

/* global read addresses: tile offsets b */

/* global read addresses: unroll offsets a */

/* global read addresses: unroll offsets b */

/* global read addresses: final offsets a */
GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  0,  1, 6 // gROA_0_0_0_0

/* global read addresses: final offsets b */
// GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 6 // gROB_0_0_0_0
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
// v_lshlrev_b32 v1, 0x7, v1                          // 1. N offset: nOffset = nIdx * nStride(128)
v_mul_lo_u32 v1, v1, s[sgprStrideB1J]
// v_lshrrev_b32 v2, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
// v_and_b32 v2, 0, v2                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
// v_lshlrev_b32 v2, 0xb, v2                          // 2. block offset: bnOffset = bnIdx * strideBlock(2048)
// v_add_u32 v1, v2, v1                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
// v_and_b32 v2, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v2, 4, v2                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 0x3, v2                          // 5. K offset: lrKOffset = kIdx * mStride(8)
v_add_u32 v1, v2, v1                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset

v_lshrrev_b32 v2, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
// v_and_b32 v2, 3, v2                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(4)
// v_lshlrev_b32 v2, 0xb, v2                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(2048)
v_lshlrev_b32 v2, 4, v2                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(2048)
v_mul_lo_u32 v2, v2, s[sgprStrideB1J]
// v_add_u32 v1, v2, v1                               // 7. final local read offset: flrOffset = lrOffset + WOffset
v_add_u32 v[vgprGlobalReadOffsetB], v1, v2
v_add_u32 v[vgprGlobalReadOffsetB], v[vgprGlobalReadOffsetB], 8

s_mul_i32 s[sgprScalarGlobalReadOffsetB+0], s[sgprStrideB1J], 64 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_add_u32 s[sgprScalarGlobalReadOffsetB+1], 0, 32 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetB+2], s[sgprStrideB1J], 64 // compute offset diff (scaled tileDim)
s_add_u32 s[sgprScalarGlobalReadOffsetB+2], s[sgprScalarGlobalReadOffsetB+2], 32 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_add_u32 s[sgprScalarGlobalReadOffsetB+3], 0, 64 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetB+4], s[sgprStrideB1J], 64 // compute offset diff (scaled tileDim)
s_add_u32 s[sgprScalarGlobalReadOffsetB+4], s[sgprScalarGlobalReadOffsetB+4], 64 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_add_u32 s[sgprScalarGlobalReadOffsetB+5], 0, 96 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetB+6], s[sgprStrideB1J], 64 // compute offset diff (scaled tileDim)
s_add_u32 s[sgprScalarGlobalReadOffsetB+6], s[sgprScalarGlobalReadOffsetB+6], 96 // compute offset diff (scaled tileDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)

/* global read addresses: addresses a */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s75, s[sgprWorkGroup0], 16            // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup0], 16               // WorkGroup[01] * MT
s_mul_hi_u32 s73, 128, s[sgprGSUSumIdx]            // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_i32 s72, 128, s[sgprGSUSumIdx]               // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_hi_u32 s73, s72, s[sgprStrideAL]             // tlu=1, scaled unroll-offset by stride
s_mul_i32 s72, s72, s[sgprStrideAL]                // tlu=1, scaled unroll-offset by stride
s_add_u32 s74, s74, s72                            // accum GsuOffset term to tilestart
s_addc_u32 s75, s75, s73                           // accum GsuOffset term to tilestart
s_mov_b32 s[sgprShadowLimitA+0], 1                 // Init tensor size
s_mov_b32 s[sgprShadowLimitA+1], 0                 // init tensor size
s_sub_u32 s72, s[sgprSizeI], 1                     // (size-1)
s_mul_hi_u32 s73, constStrideA0I, s72              // stride x (size-1)
s_mul_i32 s72, constStrideA0I, s72                 // stride x (size-1)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // sum tensor size
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // sum tensor size
s_sub_u32 s72, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s73, s[sgprStrideAL], s72             // stride x (size-1)
s_mul_i32 s72, s[sgprStrideAL], s72                // stride x (size-1)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // sum tensor size
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // sum tensor size
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // sub tileStart
s_lshl_b64 s[sgprShadowLimitA:sgprShadowLimitA+1], s[sgprShadowLimitA:sgprShadowLimitA+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 16 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s72, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
s_lshl_b64 s[74:75], s[74:75], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s74    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s75   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD

/* global read addresses: addresses b */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s75, s[sgprWorkGroup1], 128           // WorkGroup[01] * MT
s_mul_i32 s74, s[sgprWorkGroup1], 128              // WorkGroup[01] * MT
s_mul_hi_u32 s75, s74, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s74, s74, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_mul_hi_u32 s73, 128, s[sgprGSUSumIdx]            // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_i32 s72, 128, s[sgprGSUSumIdx]               // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_add_u32 s74, s74, s72                            // accum GsuOffset term to tilestart
s_addc_u32 s75, s75, s73                           // accum GsuOffset term to tilestart
s_mov_b32 s[sgprShadowLimitB+0], 1                 // Init tensor size
s_mov_b32 s[sgprShadowLimitB+1], 0                 // init tensor size
s_sub_u32 s72, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s73, constStrideBL, s72               // stride x (size-1)
s_mul_i32 s72, constStrideBL, s72                  // stride x (size-1)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // sum tensor size
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // sum tensor size
s_sub_u32 s72, s[sgprSizeJ], 1                     // (size-1)
s_mul_hi_u32 s73, s[sgprStrideB1J], s72            // stride x (size-1)
s_mul_i32 s72, s[sgprStrideB1J], s72               // stride x (size-1)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // sum tensor size
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // sum tensor size
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // sub tileStart
                                                   // Set limit to use bytes (byte is 1, do nothing)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 8 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s73, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s72, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s74, s74, s72                            // accum wg term to tilestart
s_addc_u32 s75, s75, s73                           // accum wg term to tilestart
                                                   // tileStart *= BPE (multiplier is 1, do nothing)
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s74    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s75   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD
s_mul_i32 s71, s[sgprGSU], DepthU*BpeAGR
s_mul_i32 s[sgprGlobalReadIncsA+0], s71, s[sgprStrideAL] // incrA unrollIdx)

// Cache Swizzle
s_or_b32 s[sgprSrdA+1], s[sgprSrdA+1], 0x40000000
s_or_b32 s[sgprSrdB+1], s[sgprSrdB+1], 0x40000000

/* global read addresses: increments b */
s_mul_i32 s71, s[sgprGSU], DepthU*BpeBGR
s_mov_b32 s[sgprGlobalReadIncsB+0], s71            // incrB (unrollIdx)
/* declare loop num iterations */
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 7 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 128
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_1                         // branch if GSU == 1
v_cvt_f32_u32 v0, s[sgprGSU]                       // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_rcp_iflag_f32 v0, v0                             // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_cvt_f32_u32 v1, s[sgprLoopCounterL]              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_mul_f32 v0, v0, v1                               // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_cvt_u32_f32 v0, v0                               // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_mul_u32_u24 v1, v0, s[sgprGSU]                   // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_sub_u32 v1, s[sgprLoopCounterL], v1              // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_cmpx_eq_u32 exec, v1, s[sgprGSU]                 // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_add_u32 v0, 1, v0                                // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_mov_b32 v1, 0                                    // s[sgprGSUSumIdx+1] = s[sgprLoopCounterL] % s[sgprGSU]
s_mov_b64 exec, -1                                 // s[sgprLoopCounterL] = s[sgprLoopCounterL] / s[sgprGSU]
v_readfirstlane_b32 s[sgprLoopCounterL], v0
v_readfirstlane_b32 s[sgprGSUSumIdx+1], v1
s_add_u32 s72, 1, s[sgprLoopCounterL]              // tmp<-numIterMyWg+
s_cmp_lt_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx < numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], s72                // numIterMyWg++ if needed
label_GSU_1:
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter
s_mov_b32 s72, 0x4                                 // init staggerU
label_beginStaggerUIter:
s_lshl_b32 s73, s72, 0                             // shift by StaggerUStride
s_cmp_ge_u32 s[sgprOrigLoopCounter], s73           // loopCount >= current shift Count
s_cbranch_scc1 label_endStaggerUIter               // jump to end
s_lshr_b32 s72, s72, 1                             // step down to smaller stagger
s_branch label_beginStaggerUIter                   // jump to begin
label_endStaggerUIter:
s_sub_u32 s73, s72, 1                              // staggerU mask
s_cmp_ge_u32 s72, 1                                // if current staggerU >= 1
s_cselect_b32 s[sgprStaggerUIter], s73, 0          // set Mask
s_and_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], s[sgprWorkGroup0] // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], 0 // shift by StaggerUStride

/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_i32 s73, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s72, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_i32 s73, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s72, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_add_u32 s[sgprStaggerUIter], s[sgprStaggerUIter], 2 // Subtract (PGR-1); StaggerUIter now contains target iteration to wrap
/* local read addresses: init pointers a */

/* localReadInitPointers */
/* local read addresses: init pointers b */

/* localReadInitPointers */

/* prefetch: global -> local */
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?
s_cbranch_scc1 label_ShadowInitStart               // skip to ShadowInitStart iter b/c numIter==0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LB+0:vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LB+2:vgprG2LB+2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:32 // G -> Reg 0_0_2_0
buffer_load_dwordx2 v[vgprG2LB+4:vgprG2LB+4+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:64 // G -> Reg 0_0_4_0
buffer_load_dwordx2 v[vgprG2LB+6:vgprG2LB+6+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:96 // G -> Reg 0_0_6_0
buffer_load_dwordx2 v[vgprG2LB+8:vgprG2LB+8+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx2 v[vgprG2LB+10:vgprG2LB+10+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:32 // G -> Reg 0_0_3_0
buffer_load_dwordx2 v[vgprG2LB+12:vgprG2LB+12+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:64 // G -> Reg 0_0_5_0
buffer_load_dwordx2 v[vgprG2LB+14:vgprG2LB+14+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:96 // G -> Reg 0_0_7_0

/* global read inc A loopL */
s_add_u32 s74, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s74, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s74              // Is this wrapIter? (pf)
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/******************************************/
/* End setupNewTile                       */
/******************************************/
label_ShadowInitStart:
s_mov_b32 s[sgprSrdD+0], s[sgprAddressD+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdD+1], s[sgprAddressD+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdD+2], 0x80000000
s_mov_b32 s[sgprSrdD+3], Srd127_96                 // Set bits 127_96 in post-loop SRD

s_mov_b32 s[sgprSrdC+0], s[sgprAddressC+0]         // init SRD base address (lower)
s_mov_b32 s[sgprSrdC+1], s[sgprAddressC+1]         // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdC+2], 0x80000000
s_mov_b32 s[sgprSrdC+3], Srd127_96                 // Set bits 127_96 in post-loop SRD


s_mul_i32 s74, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s73, s74, s[sgprStrideC1J]            // ScaleC s74 by Stride
s_mul_i32 s72, s74, s[sgprStrideC1J]               // ScaleC s74 by Stride
s_lshl_b64 s[72:73], s[72:73], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s72    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s73   // add hi to SRD
s_mul_hi_u32 s73, s74, s[sgprStrideD1J]            // ScaleD s74 by Stride
s_mul_i32 s72, s74, s[sgprStrideD1J]               // ScaleD s74 by Stride
s_lshl_b64 s[72:73], s[72:73], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s72    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s73   // add hi to SRD

s_mul_hi_u32 s73, s[sgprWorkGroup2], s[sgprStrideCK] // ScaleC s[sgprWorkGroup2] by Stride
s_mul_i32 s72, s[sgprWorkGroup2], s[sgprStrideCK]  // ScaleC s[sgprWorkGroup2] by Stride
s_lshl_b64 s[72:73], s[72:73], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s73       // add hi to SRD
s_mul_hi_u32 s73, s[sgprWorkGroup2], s[sgprStrideDK] // ScaleD s[sgprWorkGroup2] by Stride
s_mul_i32 s72, s[sgprWorkGroup2], s[sgprStrideDK]  // ScaleD s[sgprWorkGroup2] by Stride
s_lshl_b64 s[72:73], s[72:73], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s72        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s73       // add hi to SRD

s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_2                         // branch if GSU == 1
// GSU Output Buffer offset: Free0 + (Free1-1)*StrideC1J + (Free2-1)*StrideCK * GSUIdx * bpe%s
s_mul_hi_u32 s73, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_mul_i32 s72, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_sub_u32 s75, s[sgprSizesFree+1], 1               // Free1
s_mul_i32 s75, s75, s[sgprGSUSumIdx]               // Free1
s_mul_hi_u32 s74, s75, s[sgprStrideC1J]            // Free1
s_mul_i32 s71, s75, s[sgprStrideC1J]               // Free1
s_add_u32 s72, s72, s71                            // Free1
s_addc_u32 s73, s73, s74                           // Free1
s_sub_u32 s75, s[sgprSizesFree+2], 1               // Free2
s_mul_i32 s75, s75, s[sgprGSUSumIdx]               // Free2
s_mul_hi_u32 s74, s75, s[sgprStrideCK]             // Free2
s_mul_i32 s71, s75, s[sgprStrideCK]                // Free2
s_add_u32 s72, s72, s71                            // Free2
s_addc_u32 s73, s73, s74                           // Free2
s_lshl_b64 s[72:73], s[72:73], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s72        // add lo GSU offset to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s73       // add hi GSU offset to SRD
label_GSU_2:
.set sgprGSULog2BpeC, UNDEF

/* initC: remove ValuC vgpr buffer [0...0) from pool */

/* initC: remove acc vgpr buffer [0...8) from pool */

/* initC: remove ValuA/B vgpr buffer [0...64) from pool */
v_accvgpr_write acc0, 0x0                          // initC
v_accvgpr_write acc1, 0x0                          // initC
v_accvgpr_write acc2, 0x0                          // initC
v_accvgpr_write acc3, 0x0                          // initC
v_accvgpr_write acc4, 0x0                          // initC
v_accvgpr_write acc5, 0x0                          // initC
v_accvgpr_write acc6, 0x0                          // initC
v_accvgpr_write acc7, 0x0                          // initC
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_YTL4DTN72M1L39WY_0   // Only branch on scc1
s_getpc_b64 s[72:73]                               // addr of next instr
s_add_i32 s74, label_PrefetchGlobalLastIterEnd, 0x4 // target branch offset
s_add_u32 s72, s72, s74                            // add target branch offset
s_addc_u32 s73, s73, 0                             // add high and carry
s_setpc_b64 s[72:73]                               // branch to label_PrefetchGlobalLastIterEnd
label_NoBranch_YTL4DTN72M1L39WY_0:
s_waitcnt vmcnt(0)                                 // 8wait for global read

/* local write a */
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0

/* local write b */
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0]
v_accvgpr_write acc[agprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1]
v_accvgpr_write acc[agprValuB_X0_I0+0+2], v[vgprValuB_X0_I0+0+2]
v_accvgpr_write acc[agprValuB_X0_I0+0+3], v[vgprValuB_X0_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X2_I0+0+0], v[vgprValuB_X2_I0+0+0]
v_accvgpr_write acc[agprValuB_X2_I0+0+1], v[vgprValuB_X2_I0+0+1]
v_accvgpr_write acc[agprValuB_X2_I0+0+2], v[vgprValuB_X2_I0+0+2]
v_accvgpr_write acc[agprValuB_X2_I0+0+3], v[vgprValuB_X2_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X4_I0+0+0], v[vgprValuB_X4_I0+0+0]
v_accvgpr_write acc[agprValuB_X4_I0+0+1], v[vgprValuB_X4_I0+0+1]
v_accvgpr_write acc[agprValuB_X4_I0+0+2], v[vgprValuB_X4_I0+0+2]
v_accvgpr_write acc[agprValuB_X4_I0+0+3], v[vgprValuB_X4_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X6_I0+0+0], v[vgprValuB_X6_I0+0+0]
v_accvgpr_write acc[agprValuB_X6_I0+0+1], v[vgprValuB_X6_I0+0+1]
v_accvgpr_write acc[agprValuB_X6_I0+0+2], v[vgprValuB_X6_I0+0+2]
v_accvgpr_write acc[agprValuB_X6_I0+0+3], v[vgprValuB_X6_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X1_I0+0+0], v[vgprValuB_X1_I0+0+0]
v_accvgpr_write acc[agprValuB_X1_I0+0+1], v[vgprValuB_X1_I0+0+1]
v_accvgpr_write acc[agprValuB_X1_I0+0+2], v[vgprValuB_X1_I0+0+2]
v_accvgpr_write acc[agprValuB_X1_I0+0+3], v[vgprValuB_X1_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X3_I0+0+0], v[vgprValuB_X3_I0+0+0]
v_accvgpr_write acc[agprValuB_X3_I0+0+1], v[vgprValuB_X3_I0+0+1]
v_accvgpr_write acc[agprValuB_X3_I0+0+2], v[vgprValuB_X3_I0+0+2]
v_accvgpr_write acc[agprValuB_X3_I0+0+3], v[vgprValuB_X3_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X5_I0+0+0], v[vgprValuB_X5_I0+0+0]
v_accvgpr_write acc[agprValuB_X5_I0+0+1], v[vgprValuB_X5_I0+0+1]
v_accvgpr_write acc[agprValuB_X5_I0+0+2], v[vgprValuB_X5_I0+0+2]
v_accvgpr_write acc[agprValuB_X5_I0+0+3], v[vgprValuB_X5_I0+0+3]

v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X7_I0+0+0], v[vgprValuB_X7_I0+0+0]
v_accvgpr_write acc[agprValuB_X7_I0+0+1], v[vgprValuB_X7_I0+0+1]
v_accvgpr_write acc[agprValuB_X7_I0+0+2], v[vgprValuB_X7_I0+0+2]
v_accvgpr_write acc[agprValuB_X7_I0+0+3], v[vgprValuB_X7_I0+0+3]

/* local write swap a */
v_xor_b32 v[vgprLocalWriteAddrA+0], 0x2000, v[vgprLocalWriteAddrA+0] // swap Red Blk

/* local write swap b */
// v_xor_b32 v[vgprLocalWriteAddrB+0], 0x2000, v[vgprLocalWriteAddrB+0] // swap Red Blk

s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // PGR=2 but only 1 loop
s_cbranch_scc1 label_skipPGR2_0                    // PGR=2 but only 1 loop
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LB+0:vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LB+2:vgprG2LB+2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:32 // G -> Reg 0_0_2_0
buffer_load_dwordx2 v[vgprG2LB+4:vgprG2LB+4+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:64 // G -> Reg 0_0_4_0
buffer_load_dwordx2 v[vgprG2LB+6:vgprG2LB+6+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:96 // G -> Reg 0_0_6_0
buffer_load_dwordx2 v[vgprG2LB+8:vgprG2LB+8+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx2 v[vgprG2LB+10:vgprG2LB+10+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:32 // G -> Reg 0_0_3_0
buffer_load_dwordx2 v[vgprG2LB+12:vgprG2LB+12+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:64 // G -> Reg 0_0_5_0
buffer_load_dwordx2 v[vgprG2LB+14:vgprG2LB+14+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:96 // G -> Reg 0_0_7_0
label_skipPGR2_0:

s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write
// Skip force waitcnt0
s_barrier

/* local read prefetch a */
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0

/* local read prefetch b */

/* local read inc a */
/* N/A, lro->64 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/* local read inc b */
/* N/A, lro->32 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/******************************************/
/* Unrolled Loop(s) - Begin               */
/******************************************/
label_openLoopL:
s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // LoopCounterL < EndCounter
s_cbranch_scc1 label_toPGR1_0                      // PGR=2 but only 1 loop, toPGR1
s_cmp_le_u32 s[sgprLoopCounterL], 0x2              // LoopCounterL < EndCounter
s_cbranch_scc1 label_LoopEndL                      // do not enter LoopL
label_LoopBeginL:

/******************************************/
/* Unrolled Loop 1/2 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I0+0+0+0:agprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+0], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+1], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I0+4+0+0:agprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:2  */
ds_read_u16 v[vgprValuA_X2_I0+0], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+0], v[vgprLocalReadAddrA] offset:1184 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=2 iui=0
ds_read_u16 v[vgprValuA_X2_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=2 iui=0
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I0+0+2+0:agprValuB_X0_I0+0+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:3  */
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+1], v[vgprLocalReadAddrA] offset:1248 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=2 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I0+4+2+0:agprValuB_X0_I0+4+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=2 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=2 skipReadsIterB=0 readsPerIterB=2 */

/* iter 2 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:4  */
ds_read_u16 v[vgprValuA_X3_I0+0], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=3 iui=0
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+0], v[vgprLocalReadAddrA] offset:1312 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=3 iui=0
ds_read_u16 v[vgprValuA_X3_I0+1], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=3 iui=0
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I0+0+0+0:agprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:5  */
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+1], v[vgprLocalReadAddrA] offset:1376 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=3 iui=0
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I0+4+0+0:agprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=1 numReadsIterA=3 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 3 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:6  */
ds_read_u16 v[vgprValuA_X4_I0+0], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+0], v[vgprLocalReadAddrA] offset:2336 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=4 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I0+0+2+0:agprValuB_X2_I0+0+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:7  */
ds_read_u16 v[vgprValuA_X4_I0+1], v[vgprLocalReadAddrA] offset:2368 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+1], v[vgprLocalReadAddrA] offset:2400 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=4 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I0+4+2+0:agprValuB_X2_I0+4+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=2 numReadsIterA=4 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 4 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:8  */
ds_read_u16 v[vgprValuA_X5_I0+0], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+0], v[vgprLocalReadAddrA] offset:2464 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=5 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I0+0+0+0:agprValuB_X4_I0+0+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
ds_read_u16 v[vgprValuA_X5_I0+1], v[vgprLocalReadAddrA] offset:2496 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+1], v[vgprLocalReadAddrA] offset:2528 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=5 iui=0
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I0+4+0+0:agprValuB_X4_I0+4+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=3 numReadsIterA=5 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 5 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:10  */
ds_read_u16 v[vgprValuA_X6_I0+0], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+0], v[vgprLocalReadAddrA] offset:3488 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=6 iui=0
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I0+0+2+0:agprValuB_X4_I0+0+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:11  */
ds_read_u16 v[vgprValuA_X6_I0+1], v[vgprLocalReadAddrA] offset:3520 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+1], v[vgprLocalReadAddrA] offset:3552 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=6 iui=0
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X0_I1+0+0], v[vgprValuB_X0_I0+0+0]
v_accvgpr_write acc[agprValuB_X0_I1+0+1], v[vgprValuB_X0_I0+0+1]
v_accvgpr_write acc[agprValuB_X0_I1+0+2], v[vgprValuB_X0_I0+0+2]
v_accvgpr_write acc[agprValuB_X0_I1+0+3], v[vgprValuB_X0_I0+0+3]

s_waitcnt vmcnt(7)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X2_I1+0+0], v[vgprValuB_X2_I0+0+0]
v_accvgpr_write acc[agprValuB_X2_I1+0+1], v[vgprValuB_X2_I0+0+1]
v_accvgpr_write acc[agprValuB_X2_I1+0+2], v[vgprValuB_X2_I0+0+2]
v_accvgpr_write acc[agprValuB_X2_I1+0+3], v[vgprValuB_X2_I0+0+3]

s_waitcnt vmcnt(6)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X4_I1+0+0], v[vgprValuB_X4_I0+0+0]
v_accvgpr_write acc[agprValuB_X4_I1+0+1], v[vgprValuB_X4_I0+0+1]
v_accvgpr_write acc[agprValuB_X4_I1+0+2], v[vgprValuB_X4_I0+0+2]
v_accvgpr_write acc[agprValuB_X4_I1+0+3], v[vgprValuB_X4_I0+0+3]

s_waitcnt vmcnt(5)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X6_I1+0+0], v[vgprValuB_X6_I0+0+0]
v_accvgpr_write acc[agprValuB_X6_I1+0+1], v[vgprValuB_X6_I0+0+1]
v_accvgpr_write acc[agprValuB_X6_I1+0+2], v[vgprValuB_X6_I0+0+2]
v_accvgpr_write acc[agprValuB_X6_I1+0+3], v[vgprValuB_X6_I0+0+3]
buffer_load_dwordx2 v[vgprG2LB+0:vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LB+2:vgprG2LB+2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:32 // G -> Reg 0_0_2_0
buffer_load_dwordx2 v[vgprG2LB+4:vgprG2LB+4+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:64 // G -> Reg 0_0_4_0
buffer_load_dwordx2 v[vgprG2LB+6:vgprG2LB+6+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:96 // G -> Reg 0_0_6_0

s_waitcnt vmcnt(8)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X1_I1+0+0], v[vgprValuB_X1_I0+0+0]
v_accvgpr_write acc[agprValuB_X1_I1+0+1], v[vgprValuB_X1_I0+0+1]
v_accvgpr_write acc[agprValuB_X1_I1+0+2], v[vgprValuB_X1_I0+0+2]
v_accvgpr_write acc[agprValuB_X1_I1+0+3], v[vgprValuB_X1_I0+0+3]

s_waitcnt vmcnt(7)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X3_I1+0+0], v[vgprValuB_X3_I0+0+0]
v_accvgpr_write acc[agprValuB_X3_I1+0+1], v[vgprValuB_X3_I0+0+1]
v_accvgpr_write acc[agprValuB_X3_I1+0+2], v[vgprValuB_X3_I0+0+2]
v_accvgpr_write acc[agprValuB_X3_I1+0+3], v[vgprValuB_X3_I0+0+3]

s_waitcnt vmcnt(6)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X5_I1+0+0], v[vgprValuB_X5_I0+0+0]
v_accvgpr_write acc[agprValuB_X5_I1+0+1], v[vgprValuB_X5_I0+0+1]
v_accvgpr_write acc[agprValuB_X5_I1+0+2], v[vgprValuB_X5_I0+0+2]
v_accvgpr_write acc[agprValuB_X5_I1+0+3], v[vgprValuB_X5_I0+0+3]

s_waitcnt vmcnt(5)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X7_I1+0+0], v[vgprValuB_X7_I0+0+0]
v_accvgpr_write acc[agprValuB_X7_I1+0+1], v[vgprValuB_X7_I0+0+1]
v_accvgpr_write acc[agprValuB_X7_I1+0+2], v[vgprValuB_X7_I0+0+2]
v_accvgpr_write acc[agprValuB_X7_I1+0+3], v[vgprValuB_X7_I0+0+3]
buffer_load_dwordx2 v[vgprG2LB+8:vgprG2LB+8+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx2 v[vgprG2LB+10:vgprG2LB+10+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:32 // G -> Reg 0_0_3_0
buffer_load_dwordx2 v[vgprG2LB+12:vgprG2LB+12+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:64 // G -> Reg 0_0_5_0
buffer_load_dwordx2 v[vgprG2LB+14:vgprG2LB+14+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:96 // G -> Reg 0_0_7_0

/* local write swap offsets a */
v_xor_b32 v[vgprLocalWriteAddrA+0], 0x2000, v[vgprLocalWriteAddrA+0] // swap Red Blk

/* local write swap offsets b */
// v_xor_b32 v[vgprLocalWriteAddrB+0], 0x2000, v[vgprLocalWriteAddrB+0] // swap Red Blk
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I0+4+2+0:agprValuB_X4_I0+4+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=4 numReadsIterA=6 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 6 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:12  */
ds_read_u16 v[vgprValuA_X7_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+0], v[vgprLocalReadAddrA] offset:3616 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=7 iui=0
s_waitcnt lgkmcnt(2)                              // wait for prior local read local write old=0, new=11 newLW=9 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I0+0+0+0:agprValuB_X6_I0+0+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:13  */
ds_read_u16 v[vgprValuA_X7_I0+1], v[vgprLocalReadAddrA] offset:3648 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+1], v[vgprLocalReadAddrA] offset:3680 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=7 iui=0

/* local read swap offsets a */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk

/* local read swap offsets b */
// v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I0+4+0+0:agprValuB_X6_I0+4+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=5 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 7 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:14  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip force waitcnt0
s_barrier
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I0+0+2+0:agprValuB_X6_I0+0+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:15  */
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I0+4+2+0:agprValuB_X6_I0+4+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=6 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=1 readsPerIterB=2 */

s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x2              // counterL==2
s_cbranch_scc1 label_LoopOddEnd                    // restart LoopL

/******************************************/
/* Unrolled Loop 2/2 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I1+0+0+0:agprValuB_X0_I1+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+0], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+1], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I1+4+0+0:agprValuB_X0_I1+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:2  */
ds_read_u16 v[vgprValuA_X2_I0+0], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+0], v[vgprLocalReadAddrA] offset:1184 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=2 iui=0
ds_read_u16 v[vgprValuA_X2_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=2 iui=0
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I1+0+2+0:agprValuB_X0_I1+0+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:3  */
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+1], v[vgprLocalReadAddrA] offset:1248 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=2 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I1+4+2+0:agprValuB_X0_I1+4+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=2 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=2 skipReadsIterB=0 readsPerIterB=2 */

/* iter 2 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:4  */
ds_read_u16 v[vgprValuA_X3_I0+0], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=3 iui=0
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+0], v[vgprLocalReadAddrA] offset:1312 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=3 iui=0
ds_read_u16 v[vgprValuA_X3_I0+1], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=3 iui=0
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I1+0+0+0:agprValuB_X2_I1+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:5  */
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+1], v[vgprLocalReadAddrA] offset:1376 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=3 iui=0
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I1+4+0+0:agprValuB_X2_I1+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=1 numReadsIterA=3 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 3 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:6  */
ds_read_u16 v[vgprValuA_X4_I0+0], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+0], v[vgprLocalReadAddrA] offset:2336 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=4 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I1+0+2+0:agprValuB_X2_I1+0+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:7  */
ds_read_u16 v[vgprValuA_X4_I0+1], v[vgprLocalReadAddrA] offset:2368 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+1], v[vgprLocalReadAddrA] offset:2400 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=4 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I1+4+2+0:agprValuB_X2_I1+4+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=2 numReadsIterA=4 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 4 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:8  */
ds_read_u16 v[vgprValuA_X5_I0+0], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+0], v[vgprLocalReadAddrA] offset:2464 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=5 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I1+0+0+0:agprValuB_X4_I1+0+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
ds_read_u16 v[vgprValuA_X5_I0+1], v[vgprLocalReadAddrA] offset:2496 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+1], v[vgprLocalReadAddrA] offset:2528 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=5 iui=0
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I1+4+0+0:agprValuB_X4_I1+4+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=3 numReadsIterA=5 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 5 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:10  */
ds_read_u16 v[vgprValuA_X6_I0+0], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+0], v[vgprLocalReadAddrA] offset:3488 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=6 iui=0
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I1+0+2+0:agprValuB_X4_I1+0+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:11  */
ds_read_u16 v[vgprValuA_X6_I0+1], v[vgprLocalReadAddrA] offset:3520 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+1], v[vgprLocalReadAddrA] offset:3552 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=6 iui=0
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
buffer_load_dwordx4 v[vgprG2LA+0:vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0]
v_accvgpr_write acc[agprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1]
v_accvgpr_write acc[agprValuB_X0_I0+0+2], v[vgprValuB_X0_I0+0+2]
v_accvgpr_write acc[agprValuB_X0_I0+0+3], v[vgprValuB_X0_I0+0+3]

s_waitcnt vmcnt(7)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X2_I0+0+0], v[vgprValuB_X2_I0+0+0]
v_accvgpr_write acc[agprValuB_X2_I0+0+1], v[vgprValuB_X2_I0+0+1]
v_accvgpr_write acc[agprValuB_X2_I0+0+2], v[vgprValuB_X2_I0+0+2]
v_accvgpr_write acc[agprValuB_X2_I0+0+3], v[vgprValuB_X2_I0+0+3]

s_waitcnt vmcnt(6)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X4_I0+0+0], v[vgprValuB_X4_I0+0+0]
v_accvgpr_write acc[agprValuB_X4_I0+0+1], v[vgprValuB_X4_I0+0+1]
v_accvgpr_write acc[agprValuB_X4_I0+0+2], v[vgprValuB_X4_I0+0+2]
v_accvgpr_write acc[agprValuB_X4_I0+0+3], v[vgprValuB_X4_I0+0+3]

s_waitcnt vmcnt(5)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X6_I0+0+0], v[vgprValuB_X6_I0+0+0]
v_accvgpr_write acc[agprValuB_X6_I0+0+1], v[vgprValuB_X6_I0+0+1]
v_accvgpr_write acc[agprValuB_X6_I0+0+2], v[vgprValuB_X6_I0+0+2]
v_accvgpr_write acc[agprValuB_X6_I0+0+3], v[vgprValuB_X6_I0+0+3]
buffer_load_dwordx2 v[vgprG2LB+0:vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LB+2:vgprG2LB+2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:32 // G -> Reg 0_0_2_0
buffer_load_dwordx2 v[vgprG2LB+4:vgprG2LB+4+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:64 // G -> Reg 0_0_4_0
buffer_load_dwordx2 v[vgprG2LB+6:vgprG2LB+6+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:96 // G -> Reg 0_0_6_0

s_waitcnt vmcnt(8)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X1_I0+0+0], v[vgprValuB_X1_I0+0+0]
v_accvgpr_write acc[agprValuB_X1_I0+0+1], v[vgprValuB_X1_I0+0+1]
v_accvgpr_write acc[agprValuB_X1_I0+0+2], v[vgprValuB_X1_I0+0+2]
v_accvgpr_write acc[agprValuB_X1_I0+0+3], v[vgprValuB_X1_I0+0+3]

s_waitcnt vmcnt(7)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X3_I0+0+0], v[vgprValuB_X3_I0+0+0]
v_accvgpr_write acc[agprValuB_X3_I0+0+1], v[vgprValuB_X3_I0+0+1]
v_accvgpr_write acc[agprValuB_X3_I0+0+2], v[vgprValuB_X3_I0+0+2]
v_accvgpr_write acc[agprValuB_X3_I0+0+3], v[vgprValuB_X3_I0+0+3]

s_waitcnt vmcnt(6)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X5_I0+0+0], v[vgprValuB_X5_I0+0+0]
v_accvgpr_write acc[agprValuB_X5_I0+0+1], v[vgprValuB_X5_I0+0+1]
v_accvgpr_write acc[agprValuB_X5_I0+0+2], v[vgprValuB_X5_I0+0+2]
v_accvgpr_write acc[agprValuB_X5_I0+0+3], v[vgprValuB_X5_I0+0+3]

s_waitcnt vmcnt(5)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X7_I0+0+0], v[vgprValuB_X7_I0+0+0]
v_accvgpr_write acc[agprValuB_X7_I0+0+1], v[vgprValuB_X7_I0+0+1]
v_accvgpr_write acc[agprValuB_X7_I0+0+2], v[vgprValuB_X7_I0+0+2]
v_accvgpr_write acc[agprValuB_X7_I0+0+3], v[vgprValuB_X7_I0+0+3]
buffer_load_dwordx2 v[vgprG2LB+8:vgprG2LB+8+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx2 v[vgprG2LB+10:vgprG2LB+10+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:32 // G -> Reg 0_0_3_0
buffer_load_dwordx2 v[vgprG2LB+12:vgprG2LB+12+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:64 // G -> Reg 0_0_5_0
buffer_load_dwordx2 v[vgprG2LB+14:vgprG2LB+14+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:96 // G -> Reg 0_0_7_0

/* local write swap offsets a */
v_xor_b32 v[vgprLocalWriteAddrA+0], 0x2000, v[vgprLocalWriteAddrA+0] // swap Red Blk

/* local write swap offsets b */
// v_xor_b32 v[vgprLocalWriteAddrB+0], 0x2000, v[vgprLocalWriteAddrB+0] // swap Red Blk
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I1+4+2+0:agprValuB_X4_I1+4+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=4 numReadsIterA=6 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 6 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:12  */
ds_read_u16 v[vgprValuA_X7_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+0], v[vgprLocalReadAddrA] offset:3616 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=7 iui=0
s_waitcnt lgkmcnt(2)                              // wait for prior local read local write old=0, new=11 newLW=9 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I1+0+0+0:agprValuB_X6_I1+0+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:13  */
ds_read_u16 v[vgprValuA_X7_I0+1], v[vgprLocalReadAddrA] offset:3648 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+1], v[vgprLocalReadAddrA] offset:3680 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=7 iui=0

/* local read swap offsets a */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk

/* local read swap offsets b */
// v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I1+4+0+0:agprValuB_X6_I1+4+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=5 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 7 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:14  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip force waitcnt0
s_barrier
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I1+0+2+0:agprValuB_X6_I1+0+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:15  */
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I1+4+2+0:agprValuB_X6_I1+4+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=6 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=1 readsPerIterB=2 */

/******************************************/
/* Unrolled Loop - End                    */
/******************************************/

/* closeLoop loopL finalLoop=1 tailLoop=0 */
s_sub_u32 s[sgprLoopCounterL], s[sgprLoopCounterL], 1 // dec counterL
s_cmp_eq_i32 s[sgprLoopCounterL], 0x2              // counterL==2
s_cbranch_scc0 label_LoopBeginL                    // restart LoopL
label_LoopEndL:

/* Before NLL: Check VGPR.checkin for INT8 LW */

/******************************************/
/* Ord. NoGlobalLoadLoop - Begin          */
/******************************************/

/* iter 0 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I0+0+0+0:agprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+0], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+1], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I0+4+0+0:agprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:2  */
ds_read_u16 v[vgprValuA_X2_I0+0], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+0], v[vgprLocalReadAddrA] offset:1184 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=2 iui=0
ds_read_u16 v[vgprValuA_X2_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=2 iui=0
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I0+0+2+0:agprValuB_X0_I0+0+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:3  */
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+1], v[vgprLocalReadAddrA] offset:1248 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=2 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I0+4+2+0:agprValuB_X0_I0+4+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=2 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=2 skipReadsIterB=0 readsPerIterB=2 */

/* iter 2 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:4  */
ds_read_u16 v[vgprValuA_X3_I0+0], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=3 iui=0
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+0], v[vgprLocalReadAddrA] offset:1312 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=3 iui=0
ds_read_u16 v[vgprValuA_X3_I0+1], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=3 iui=0
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I0+0+0+0:agprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:5  */
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+1], v[vgprLocalReadAddrA] offset:1376 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=3 iui=0
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I0+4+0+0:agprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=1 numReadsIterA=3 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 3 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:6  */
ds_read_u16 v[vgprValuA_X4_I0+0], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+0], v[vgprLocalReadAddrA] offset:2336 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=4 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I0+0+2+0:agprValuB_X2_I0+0+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:7  */
ds_read_u16 v[vgprValuA_X4_I0+1], v[vgprLocalReadAddrA] offset:2368 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+1], v[vgprLocalReadAddrA] offset:2400 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=4 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I0+4+2+0:agprValuB_X2_I0+4+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=2 numReadsIterA=4 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 4 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:8  */
ds_read_u16 v[vgprValuA_X5_I0+0], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+0], v[vgprLocalReadAddrA] offset:2464 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=5 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I0+0+0+0:agprValuB_X4_I0+0+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
ds_read_u16 v[vgprValuA_X5_I0+1], v[vgprLocalReadAddrA] offset:2496 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+1], v[vgprLocalReadAddrA] offset:2528 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=5 iui=0
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I0+4+0+0:agprValuB_X4_I0+4+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=3 numReadsIterA=5 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 5 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:10  */
ds_read_u16 v[vgprValuA_X6_I0+0], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+0], v[vgprLocalReadAddrA] offset:3488 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=6 iui=0
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I0+0+2+0:agprValuB_X4_I0+0+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:11  */
ds_read_u16 v[vgprValuA_X6_I0+1], v[vgprLocalReadAddrA] offset:3520 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+1], v[vgprLocalReadAddrA] offset:3552 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=6 iui=0
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X0_I1+0+0], v[vgprValuB_X0_I0+0+0]
v_accvgpr_write acc[agprValuB_X0_I1+0+1], v[vgprValuB_X0_I0+0+1]
v_accvgpr_write acc[agprValuB_X0_I1+0+2], v[vgprValuB_X0_I0+0+2]
v_accvgpr_write acc[agprValuB_X0_I1+0+3], v[vgprValuB_X0_I0+0+3]

s_waitcnt vmcnt(6)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X2_I1+0+0], v[vgprValuB_X2_I0+0+0]
v_accvgpr_write acc[agprValuB_X2_I1+0+1], v[vgprValuB_X2_I0+0+1]
v_accvgpr_write acc[agprValuB_X2_I1+0+2], v[vgprValuB_X2_I0+0+2]
v_accvgpr_write acc[agprValuB_X2_I1+0+3], v[vgprValuB_X2_I0+0+3]

s_waitcnt vmcnt(5)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X4_I1+0+0], v[vgprValuB_X4_I0+0+0]
v_accvgpr_write acc[agprValuB_X4_I1+0+1], v[vgprValuB_X4_I0+0+1]
v_accvgpr_write acc[agprValuB_X4_I1+0+2], v[vgprValuB_X4_I0+0+2]
v_accvgpr_write acc[agprValuB_X4_I1+0+3], v[vgprValuB_X4_I0+0+3]

s_waitcnt vmcnt(4)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X6_I1+0+0], v[vgprValuB_X6_I0+0+0]
v_accvgpr_write acc[agprValuB_X6_I1+0+1], v[vgprValuB_X6_I0+0+1]
v_accvgpr_write acc[agprValuB_X6_I1+0+2], v[vgprValuB_X6_I0+0+2]
v_accvgpr_write acc[agprValuB_X6_I1+0+3], v[vgprValuB_X6_I0+0+3]

s_waitcnt vmcnt(3)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X1_I1+0+0], v[vgprValuB_X1_I0+0+0]
v_accvgpr_write acc[agprValuB_X1_I1+0+1], v[vgprValuB_X1_I0+0+1]
v_accvgpr_write acc[agprValuB_X1_I1+0+2], v[vgprValuB_X1_I0+0+2]
v_accvgpr_write acc[agprValuB_X1_I1+0+3], v[vgprValuB_X1_I0+0+3]

s_waitcnt vmcnt(2)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X3_I1+0+0], v[vgprValuB_X3_I0+0+0]
v_accvgpr_write acc[agprValuB_X3_I1+0+1], v[vgprValuB_X3_I0+0+1]
v_accvgpr_write acc[agprValuB_X3_I1+0+2], v[vgprValuB_X3_I0+0+2]
v_accvgpr_write acc[agprValuB_X3_I1+0+3], v[vgprValuB_X3_I0+0+3]

s_waitcnt vmcnt(1)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X5_I1+0+0], v[vgprValuB_X5_I0+0+0]
v_accvgpr_write acc[agprValuB_X5_I1+0+1], v[vgprValuB_X5_I0+0+1]
v_accvgpr_write acc[agprValuB_X5_I1+0+2], v[vgprValuB_X5_I0+0+2]
v_accvgpr_write acc[agprValuB_X5_I1+0+3], v[vgprValuB_X5_I0+0+3]

s_waitcnt vmcnt(0)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X7_I1+0+0], v[vgprValuB_X7_I0+0+0]
v_accvgpr_write acc[agprValuB_X7_I1+0+1], v[vgprValuB_X7_I0+0+1]
v_accvgpr_write acc[agprValuB_X7_I1+0+2], v[vgprValuB_X7_I0+0+2]
v_accvgpr_write acc[agprValuB_X7_I1+0+3], v[vgprValuB_X7_I0+0+3]

/* local write swap offsets a */
v_xor_b32 v[vgprLocalWriteAddrA+0], 0x2000, v[vgprLocalWriteAddrA+0] // swap Red Blk

/* local write swap offsets b */
// v_xor_b32 v[vgprLocalWriteAddrB+0], 0x2000, v[vgprLocalWriteAddrB+0] // swap Red Blk
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I0+4+2+0:agprValuB_X4_I0+4+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=4 numReadsIterA=6 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 6 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:12  */
ds_read_u16 v[vgprValuA_X7_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+0], v[vgprLocalReadAddrA] offset:3616 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=7 iui=0
s_waitcnt lgkmcnt(2)                              // wait for prior local read local write old=0, new=11 newLW=9 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I0+0+0+0:agprValuB_X6_I0+0+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:13  */
ds_read_u16 v[vgprValuA_X7_I0+1], v[vgprLocalReadAddrA] offset:3648 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+1], v[vgprLocalReadAddrA] offset:3680 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=7 iui=0

/* local read swap offsets a */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk

/* local read swap offsets b */
// v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I0+4+0+0:agprValuB_X6_I0+4+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=5 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 7 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:14  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip force waitcnt0
s_barrier
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I0+0+2+0:agprValuB_X6_I0+0+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:15  */
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I0+4+2+0:agprValuB_X6_I0+4+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=6 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=1 readsPerIterB=2 */

/******************************************/
/* Ord. NoLoadLoop - Begin                */
/******************************************/

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I1+0+0+0:agprValuB_X0_I1+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+0], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+1], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I1+4+0+0:agprValuB_X0_I1+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:2  */
ds_read_u16 v[vgprValuA_X2_I0+0], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+0], v[vgprLocalReadAddrA] offset:1184 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=2 iui=0
ds_read_u16 v[vgprValuA_X2_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=2 iui=0
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I1+0+2+0:agprValuB_X0_I1+0+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:3  */
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+1], v[vgprLocalReadAddrA] offset:1248 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I1+4+2+0:agprValuB_X0_I1+4+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=2 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=2 skipReadsIterB=0 readsPerIterB=2 */

/* iter 2 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:4  */
ds_read_u16 v[vgprValuA_X3_I0+0], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=3 iui=0
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+0], v[vgprLocalReadAddrA] offset:1312 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=3 iui=0
ds_read_u16 v[vgprValuA_X3_I0+1], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=3 iui=0
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I1+0+0+0:agprValuB_X2_I1+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:5  */
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+1], v[vgprLocalReadAddrA] offset:1376 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=3 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I1+4+0+0:agprValuB_X2_I1+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=1 numReadsIterA=3 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 3 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:6  */
ds_read_u16 v[vgprValuA_X4_I0+0], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+0], v[vgprLocalReadAddrA] offset:2336 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=4 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I1+0+2+0:agprValuB_X2_I1+0+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:7  */
ds_read_u16 v[vgprValuA_X4_I0+1], v[vgprLocalReadAddrA] offset:2368 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+1], v[vgprLocalReadAddrA] offset:2400 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=4 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I1+4+2+0:agprValuB_X2_I1+4+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=2 numReadsIterA=4 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 4 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:8  */
ds_read_u16 v[vgprValuA_X5_I0+0], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+0], v[vgprLocalReadAddrA] offset:2464 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=5 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I1+0+0+0:agprValuB_X4_I1+0+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
ds_read_u16 v[vgprValuA_X5_I0+1], v[vgprLocalReadAddrA] offset:2496 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+1], v[vgprLocalReadAddrA] offset:2528 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=5 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I1+4+0+0:agprValuB_X4_I1+4+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=3 numReadsIterA=5 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 5 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:10  */
ds_read_u16 v[vgprValuA_X6_I0+0], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+0], v[vgprLocalReadAddrA] offset:3488 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=6 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I1+0+2+0:agprValuB_X4_I1+0+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:11  */
ds_read_u16 v[vgprValuA_X6_I0+1], v[vgprLocalReadAddrA] offset:3520 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+1], v[vgprLocalReadAddrA] offset:3552 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=6 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I1+4+2+0:agprValuB_X4_I1+4+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=4 numReadsIterA=6 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 6 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:12  */
ds_read_u16 v[vgprValuA_X7_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+0], v[vgprLocalReadAddrA] offset:3616 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=7 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I1+0+0+0:agprValuB_X6_I1+0+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:13  */
ds_read_u16 v[vgprValuA_X7_I0+1], v[vgprLocalReadAddrA] offset:3648 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+1], v[vgprLocalReadAddrA] offset:3680 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=7 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I1+4+0+0:agprValuB_X6_I1+4+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=5 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 7 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:14  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I1+0+2+0:agprValuB_X6_I1+0+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:15  */
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I1+4+2+0:agprValuB_X6_I1+4+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=6 numReadsIterA=7 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

s_branch label_PrefetchGlobalLastIterEnd

label_LoopOddEnd:
/******************************************/
/* Ord. NoGlobalLoadLoop - Begin          */
/******************************************/

/* iter 0 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I1+0+0+0:agprValuB_X0_I1+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+0], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+1], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s72, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s73, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I1+4+0+0:agprValuB_X0_I1+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:2  */
ds_read_u16 v[vgprValuA_X2_I0+0], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+0], v[vgprLocalReadAddrA] offset:1184 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=2 iui=0
ds_read_u16 v[vgprValuA_X2_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=2 iui=0
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I1+0+2+0:agprValuB_X0_I1+0+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:3  */
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+1], v[vgprLocalReadAddrA] offset:1248 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=2 iui=0

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I1+4+2+0:agprValuB_X0_I1+4+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=2 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=2 skipReadsIterB=0 readsPerIterB=2 */

/* iter 2 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:4  */
ds_read_u16 v[vgprValuA_X3_I0+0], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=3 iui=0
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+0], v[vgprLocalReadAddrA] offset:1312 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=3 iui=0
ds_read_u16 v[vgprValuA_X3_I0+1], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=3 iui=0
s_cselect_b32 s72, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I1+0+0+0:agprValuB_X2_I1+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:5  */
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+1], v[vgprLocalReadAddrA] offset:1376 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=3 iui=0
s_cselect_b32 s73, s[sgprWrapUB+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I1+4+0+0:agprValuB_X2_I1+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=1 numReadsIterA=3 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 3 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:6  */
ds_read_u16 v[vgprValuA_X4_I0+0], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+0], v[vgprLocalReadAddrA] offset:2336 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=4 iui=0
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I1+0+2+0:agprValuB_X2_I1+0+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:7  */
ds_read_u16 v[vgprValuA_X4_I0+1], v[vgprLocalReadAddrA] offset:2368 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+1], v[vgprLocalReadAddrA] offset:2400 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=4 iui=0
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I1+4+2+0:agprValuB_X2_I1+4+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=2 numReadsIterA=4 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 4 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:8  */
ds_read_u16 v[vgprValuA_X5_I0+0], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+0], v[vgprLocalReadAddrA] offset:2464 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=5 iui=0
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I1+0+0+0:agprValuB_X4_I1+0+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
ds_read_u16 v[vgprValuA_X5_I0+1], v[vgprLocalReadAddrA] offset:2496 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+1], v[vgprLocalReadAddrA] offset:2528 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=5 iui=0
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I1+4+0+0:agprValuB_X4_I1+4+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=3 numReadsIterA=5 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 5 (swap and reset local write pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:10  */
ds_read_u16 v[vgprValuA_X6_I0+0], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+0], v[vgprLocalReadAddrA] offset:3488 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=6 iui=0
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I1+0+2+0:agprValuB_X4_I1+0+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:11  */
ds_read_u16 v[vgprValuA_X6_I0+1], v[vgprLocalReadAddrA] offset:3520 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+1], v[vgprLocalReadAddrA] offset:3552 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=6 iui=0
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0
/* sched write - iter 5 writesPerItem=1 */
s_waitcnt vmcnt(7)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+0+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X0_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0]
v_accvgpr_write acc[agprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1]
v_accvgpr_write acc[agprValuB_X0_I0+0+2], v[vgprValuB_X0_I0+0+2]
v_accvgpr_write acc[agprValuB_X0_I0+0+3], v[vgprValuB_X0_I0+0+3]

s_waitcnt vmcnt(6)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+2+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X2_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X2_I0+0+0], v[vgprValuB_X2_I0+0+0]
v_accvgpr_write acc[agprValuB_X2_I0+0+1], v[vgprValuB_X2_I0+0+1]
v_accvgpr_write acc[agprValuB_X2_I0+0+2], v[vgprValuB_X2_I0+0+2]
v_accvgpr_write acc[agprValuB_X2_I0+0+3], v[vgprValuB_X2_I0+0+3]

s_waitcnt vmcnt(5)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+4+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X4_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X4_I0+0+0], v[vgprValuB_X4_I0+0+0]
v_accvgpr_write acc[agprValuB_X4_I0+0+1], v[vgprValuB_X4_I0+0+1]
v_accvgpr_write acc[agprValuB_X4_I0+0+2], v[vgprValuB_X4_I0+0+2]
v_accvgpr_write acc[agprValuB_X4_I0+0+3], v[vgprValuB_X4_I0+0+3]

s_waitcnt vmcnt(4)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+6+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X6_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X6_I0+0+0], v[vgprValuB_X6_I0+0+0]
v_accvgpr_write acc[agprValuB_X6_I0+0+1], v[vgprValuB_X6_I0+0+1]
v_accvgpr_write acc[agprValuB_X6_I0+0+2], v[vgprValuB_X6_I0+0+2]
v_accvgpr_write acc[agprValuB_X6_I0+0+3], v[vgprValuB_X6_I0+0+3]

s_waitcnt vmcnt(3)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X1_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X1_I0+0+0], v[vgprValuB_X1_I0+0+0]
v_accvgpr_write acc[agprValuB_X1_I0+0+1], v[vgprValuB_X1_I0+0+1]
v_accvgpr_write acc[agprValuB_X1_I0+0+2], v[vgprValuB_X1_I0+0+2]
v_accvgpr_write acc[agprValuB_X1_I0+0+3], v[vgprValuB_X1_I0+0+3]

s_waitcnt vmcnt(2)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+10+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X3_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X3_I0+0+0], v[vgprValuB_X3_I0+0+0]
v_accvgpr_write acc[agprValuB_X3_I0+0+1], v[vgprValuB_X3_I0+0+1]
v_accvgpr_write acc[agprValuB_X3_I0+0+2], v[vgprValuB_X3_I0+0+2]
v_accvgpr_write acc[agprValuB_X3_I0+0+3], v[vgprValuB_X3_I0+0+3]

s_waitcnt vmcnt(1)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+12+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X5_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X5_I0+0+0], v[vgprValuB_X5_I0+0+0]
v_accvgpr_write acc[agprValuB_X5_I0+0+1], v[vgprValuB_X5_I0+0+1]
v_accvgpr_write acc[agprValuB_X5_I0+0+2], v[vgprValuB_X5_I0+0+2]
v_accvgpr_write acc[agprValuB_X5_I0+0+3], v[vgprValuB_X5_I0+0+3]

s_waitcnt vmcnt(0)                                 // 8wait for global read
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+0], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+1], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+2], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprCVT0:vgprCVT1], v[vgprG2LB+14+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuB_X7_I0+0+3], v[vgprCVT1] dst_sel:WORD_1 // Convert to FP16
v_accvgpr_write acc[agprValuB_X7_I0+0+0], v[vgprValuB_X7_I0+0+0]
v_accvgpr_write acc[agprValuB_X7_I0+0+1], v[vgprValuB_X7_I0+0+1]
v_accvgpr_write acc[agprValuB_X7_I0+0+2], v[vgprValuB_X7_I0+0+2]
v_accvgpr_write acc[agprValuB_X7_I0+0+3], v[vgprValuB_X7_I0+0+3]

/* local write swap offsets a */
v_xor_b32 v[vgprLocalWriteAddrA+0], 0x2000, v[vgprLocalWriteAddrA+0] // swap Red Blk

/* local write swap offsets b */
// v_xor_b32 v[vgprLocalWriteAddrB+0], 0x2000, v[vgprLocalWriteAddrB+0] // swap Red Blk
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I1+4+2+0:agprValuB_X4_I1+4+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=4 numReadsIterA=6 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 6 (reset local read pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:12  */
ds_read_u16 v[vgprValuA_X7_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+0], v[vgprLocalReadAddrA] offset:3616 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=7 iui=0
s_waitcnt lgkmcnt(2)                              // wait for prior local read local write old=0, new=11 newLW=9 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I1+0+0+0:agprValuB_X6_I1+0+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:13  */
ds_read_u16 v[vgprValuA_X7_I0+1], v[vgprLocalReadAddrA] offset:3648 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+1], v[vgprLocalReadAddrA] offset:3680 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=7 iui=0

/* local read swap offsets a */
v_xor_b32 v[vgprLocalReadAddrA], 0x2000, v[vgprLocalReadAddrA] // swap Red Blk

/* local read swap offsets b */
// v_xor_b32 v[vgprLocalReadAddrB], 0x2000, v[vgprLocalReadAddrB] // swap Red Blk

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I1+4+0+0:agprValuB_X6_I1+4+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=5 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 7 */
/*  grEndMfmaIndex:11, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:14  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip force waitcnt0
s_barrier
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I1+0+2+0:agprValuB_X6_I1+0+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:15  */
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I1+4+2+0:agprValuB_X6_I1+4+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=1 */
/* dataAtIterA=6 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=1 readsPerIterB=2 */
label_toPGR1_0:
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc0 label_GSU_3                         // branch if GSU != 1
label_GSU_3:

/******************************************/
/* Ord. NoLoadLoop - Begin                */
/******************************************/

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I0+0+0+0:agprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */
ds_read_u16 v[vgprValuA_X1_I0+0], v[vgprLocalReadAddrA] offset:128 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+0], v[vgprLocalReadAddrA] offset:160 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=1 iui=0
ds_read_u16 v[vgprValuA_X1_I0+1], v[vgprLocalReadAddrA] offset:192 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=1 iui=0
ds_read_u16_d16_hi v[vgprValuA_X1_I0_D1+1], v[vgprLocalReadAddrA] offset:224 // L -> Reg lro=64 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I0+4+0+0:agprValuB_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=2 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:2  */
ds_read_u16 v[vgprValuA_X2_I0+0], v[vgprLocalReadAddrA] offset:1152 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=2 iui=0
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+0], v[vgprLocalReadAddrA] offset:1184 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=2 iui=0
ds_read_u16 v[vgprValuA_X2_I0+1], v[vgprLocalReadAddrA] offset:1216 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=2 iui=0
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0+0], v[vgprValuA_X1_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0+1], v[vgprValuA_X1_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X0_I0+0+2+0:agprValuB_X0_I0+0+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:3  */
ds_read_u16_d16_hi v[vgprValuA_X2_I0_D1+1], v[vgprLocalReadAddrA] offset:1248 // L -> Reg lro=512 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=2 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X0_I0+4+2+0:agprValuB_X0_I0+4+2+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=2 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=2 skipReadsIterB=0 readsPerIterB=2 */

/* iter 2 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:4  */
ds_read_u16 v[vgprValuA_X3_I0+0], v[vgprLocalReadAddrA] offset:1280 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=3 iui=0
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+0], v[vgprLocalReadAddrA] offset:1312 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=3 iui=0
ds_read_u16 v[vgprValuA_X3_I0+1], v[vgprLocalReadAddrA] offset:1344 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=3 iui=0
s_waitcnt lgkmcnt(3)                               // wait for prior local read local write old=0, new=3 newLW=0 newLR=3
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0+0], v[vgprValuA_X2_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0+1], v[vgprValuA_X2_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I0+0+0+0:agprValuB_X2_I0+0+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:5  */
ds_read_u16_d16_hi v[vgprValuA_X3_I0_D1+1], v[vgprLocalReadAddrA] offset:1376 // L -> Reg lro=576 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=3 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I0+4+0+0:agprValuB_X2_I0+4+0+0+1], v[vgprValuA_X2_I0+0+0+0:vgprValuA_X2_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=1 numReadsIterA=3 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 3 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:6  */
ds_read_u16 v[vgprValuA_X4_I0+0], v[vgprLocalReadAddrA] offset:2304 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+0], v[vgprLocalReadAddrA] offset:2336 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=4 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0+0], v[vgprValuA_X3_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0+1], v[vgprValuA_X3_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X2_I0+0+2+0:agprValuB_X2_I0+0+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:7  */
ds_read_u16 v[vgprValuA_X4_I0+1], v[vgprLocalReadAddrA] offset:2368 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=4 iui=0
ds_read_u16_d16_hi v[vgprValuA_X4_I0_D1+1], v[vgprLocalReadAddrA] offset:2400 // L -> Reg lro=1024 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=4 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X2_I0+4+2+0:agprValuB_X2_I0+4+2+0+1], v[vgprValuA_X3_I0+0+0+0:vgprValuA_X3_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=2 numReadsIterA=4 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 4 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:8  */
ds_read_u16 v[vgprValuA_X5_I0+0], v[vgprLocalReadAddrA] offset:2432 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+0], v[vgprLocalReadAddrA] offset:2464 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=5 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0+0], v[vgprValuA_X4_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0+1], v[vgprValuA_X4_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I0+0+0+0:agprValuB_X4_I0+0+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
ds_read_u16 v[vgprValuA_X5_I0+1], v[vgprLocalReadAddrA] offset:2496 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=5 iui=0
ds_read_u16_d16_hi v[vgprValuA_X5_I0_D1+1], v[vgprLocalReadAddrA] offset:2528 // L -> Reg lro=1088 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=5 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I0+4+0+0:agprValuB_X4_I0+4+0+0+1], v[vgprValuA_X4_I0+0+0+0:vgprValuA_X4_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=3 numReadsIterA=5 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 5 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:10  */
ds_read_u16 v[vgprValuA_X6_I0+0], v[vgprLocalReadAddrA] offset:3456 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+0], v[vgprLocalReadAddrA] offset:3488 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=6 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0+0], v[vgprValuA_X5_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0+1], v[vgprValuA_X5_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X4_I0+0+2+0:agprValuB_X4_I0+0+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:11  */
ds_read_u16 v[vgprValuA_X6_I0+1], v[vgprLocalReadAddrA] offset:3520 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=6 iui=0
ds_read_u16_d16_hi v[vgprValuA_X6_I0_D1+1], v[vgprLocalReadAddrA] offset:3552 // L -> Reg lro=1536 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=6 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X4_I0+4+2+0:agprValuB_X4_I0+4+2+0+1], v[vgprValuA_X5_I0+0+0+0:vgprValuA_X5_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=4 numReadsIterA=6 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=1 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 6 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:12  */
ds_read_u16 v[vgprValuA_X7_I0+0], v[vgprLocalReadAddrA] offset:3584 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+0], v[vgprLocalReadAddrA] offset:3616 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=7 iui=0
s_waitcnt lgkmcnt(2)                               // wait for prior local read local write old=0, new=2 newLW=0 newLR=2
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0+0], v[vgprValuA_X6_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0+1], v[vgprValuA_X6_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I0+0+0+0:agprValuB_X6_I0+0+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:13  */
ds_read_u16 v[vgprValuA_X7_I0+1], v[vgprLocalReadAddrA] offset:3648 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=7 iui=0
ds_read_u16_d16_hi v[vgprValuA_X7_I0_D1+1], v[vgprLocalReadAddrA] offset:3680 // L -> Reg lro=1600 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=7 iui=0
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I0+4+0+0:agprValuB_X6_I0+4+0+0+1], v[vgprValuA_X6_I0+0+0+0:vgprValuA_X6_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=5 numReadsIterA=7 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

/* iter 7 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:11, lwEndMfmaIndex:11  */
/*  numMfmaForLR:1, syncPlrMfmaIndex:14  */
/*  mfmaIndex:14  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
/* pack scheduling: packAIdx:2, packBIdx:0 */
v_or_b32 v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0+0], v[vgprValuA_X7_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0+1], v[vgprValuA_X7_I0_D1+1] // pack two half Vgpr to one Vgpr
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
s_nop 0                                            // VALU packing writes to be consumed by matrix instruction
v_mfma_f32_16x16x16_f16 acc[0:3], acc[agprValuB_X6_I0+0+2+0:agprValuB_X6_I0+0+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:15  */
v_mfma_f32_16x16x16_f16 acc[4:7], acc[agprValuB_X6_I0+4+2+0:agprValuB_X6_I0+4+2+0+1], v[vgprValuA_X7_I0+0+0+0:vgprValuA_X7_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/* numPrefetchIter=0 */
/* dataAtIterA=6 numReadsIterA=7 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=2 numReadsIterB=3 skipReadsIterB=0 readsPerIterB=2 */

label_PrefetchGlobalLastIterEnd:

/******************************************/
/* Tail Loop                              */
/******************************************/

/* Tail: add ValuA/B vgpr buffer [0...64) to pool */

/* local write reset offsets a */
v_and_b32 v[vgprLocalWriteAddrA], 0xf01fff, v[vgprLocalWriteAddrA] // reset to Red

/* local write reset offsets b */
// v_and_b32 v[vgprLocalWriteAddrB], 0xf01fff, v[vgprLocalWriteAddrB] // reset to Red

// numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 127, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 128
s_cmp_lg_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx == numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], 0x0                // numIter=0 if gsuSimIdx!=remainder
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
s_cbranch_scc1 label_SkipTailLoopL                 // skip to end of tail loop b/c numIter==0

/* remove stagger offsets for tail loop */
s_sub_i32 s72, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s73, s72, s[sgprGlobalReadIncsA+0]    // start offset S in bytes
s_mul_i32 s72, s72, s[sgprGlobalReadIncsA+0]       // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_sub_i32 s72, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s73, s72, s[sgprGlobalReadIncsB+0]    // start offset S in bytes
s_mul_i32 s72, s72, s[sgprGlobalReadIncsB+0]       // start offset S in bytes
s_sub_u32 s72, s72, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s73, s73, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s72        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s73       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s72 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s73 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/* Update M0 for DTLDS */

/* global read A */
/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LA+0+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+0], v[vgprG2LA+0+0], v0      // HasEccHalf: pack
/* g2l=0, load component 2 */
buffer_load_short_d16 v[vgprG2LA+0+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:4 // load one buffer value
/* g2l=0, load component 3 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:6 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+1], v[vgprG2LA+0+1], v0      // HasEccHalf: pack
/* g2l=0, load component 4 */
buffer_load_short_d16 v[vgprG2LA+0+2], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:8 // load one buffer value
/* g2l=0, load component 5 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:10 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+2], v[vgprG2LA+0+2], v0      // HasEccHalf: pack
/* g2l=0, load component 6 */
buffer_load_short_d16 v[vgprG2LA+0+3], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:12 // load one buffer value
/* g2l=0, load component 7 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:14 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LA+0+3], v[vgprG2LA+0+3], v0      // HasEccHalf: pack

/* Update M0 for DTLDS */

/* global read B */
/* g2l=0, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:1 // load one buffer value
/* g2l=0, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:2 // load one buffer value
/* g2l=0, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:3 // load one buffer value
/* g2l=0, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+0+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:4 // load one buffer value
/* g2l=0, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:5 // load one buffer value
/* g2l=0, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:6 // load one buffer value
/* g2l=0, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v2      // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+0+1], v[vgprG2LB+0+1], v4      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+0+1], v[vgprG2LB+0+1], v5      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+0+1], v[vgprG2LB+0+1], v6      // pack a sub 8-bit with dest
/* g2l=4, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+2+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:1 // load one buffer value
/* g2l=4, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:2 // load one buffer value
/* g2l=4, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:3 // load one buffer value
/* g2l=4, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+2+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:4 // load one buffer value
/* g2l=4, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:5 // load one buffer value
/* g2l=4, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:6 // load one buffer value
/* g2l=4, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+0] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+2+0], v[vgprG2LB+2+0], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+2+0], v[vgprG2LB+2+0], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+2+0], v[vgprG2LB+2+0], v2      // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+2+1], v[vgprG2LB+2+1], v4      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+2+1], v[vgprG2LB+2+1], v5      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+2+1], v[vgprG2LB+2+1], v6      // pack a sub 8-bit with dest
/* g2l=8, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+4+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:0 // load one buffer value
/* g2l=8, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:1 // load one buffer value
/* g2l=8, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:2 // load one buffer value
/* g2l=8, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:3 // load one buffer value
/* g2l=8, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+4+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:4 // load one buffer value
/* g2l=8, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:5 // load one buffer value
/* g2l=8, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:6 // load one buffer value
/* g2l=8, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+1] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+4+0], v[vgprG2LB+4+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+4+0], v[vgprG2LB+4+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+4+0], v[vgprG2LB+4+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+4+1], v[vgprG2LB+4+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+4+1], v[vgprG2LB+4+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+4+1], v[vgprG2LB+4+1], v6    // pack a sub 8-bit with dest
/* g2l=12, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+6+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:0 // load one buffer value
/* g2l=12, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:1 // load one buffer value
/* g2l=12, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:2 // load one buffer value
/* g2l=12, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:3 // load one buffer value
/* g2l=12, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+6+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:4 // load one buffer value
/* g2l=12, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:5 // load one buffer value
/* g2l=12, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:6 // load one buffer value
/* g2l=12, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+2] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+6+0], v[vgprG2LB+6+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+6+0], v[vgprG2LB+6+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+6+0], v[vgprG2LB+6+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+6+1], v[vgprG2LB+6+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+6+1], v[vgprG2LB+6+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+6+1], v[vgprG2LB+6+1], v6    // pack a sub 8-bit with dest
/* g2l=16, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+8+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:0 // load one buffer value
/* g2l=16, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:1 // load one buffer value
/* g2l=16, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:2 // load one buffer value
/* g2l=16, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:3 // load one buffer value
/* g2l=16, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+8+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:4 // load one buffer value
/* g2l=16, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:5 // load one buffer value
/* g2l=16, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:6 // load one buffer value
/* g2l=16, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+3] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+8+0], v[vgprG2LB+8+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+8+0], v[vgprG2LB+8+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+8+0], v[vgprG2LB+8+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+8+1], v[vgprG2LB+8+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+8+1], v[vgprG2LB+8+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+8+1], v[vgprG2LB+8+1], v6    // pack a sub 8-bit with dest
/* g2l=20, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+10+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:0 // load one buffer value
/* g2l=20, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:1 // load one buffer value
/* g2l=20, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:2 // load one buffer value
/* g2l=20, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:3 // load one buffer value
/* g2l=20, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+10+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:4 // load one buffer value
/* g2l=20, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:5 // load one buffer value
/* g2l=20, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:6 // load one buffer value
/* g2l=20, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+4] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+10+0], v[vgprG2LB+10+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+10+0], v[vgprG2LB+10+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+10+0], v[vgprG2LB+10+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+10+1], v[vgprG2LB+10+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+10+1], v[vgprG2LB+10+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+10+1], v[vgprG2LB+10+1], v6    // pack a sub 8-bit with dest
/* g2l=24, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+12+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:0 // load one buffer value
/* g2l=24, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:1 // load one buffer value
/* g2l=24, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:2 // load one buffer value
/* g2l=24, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:3 // load one buffer value
/* g2l=24, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+12+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:4 // load one buffer value
/* g2l=24, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:5 // load one buffer value
/* g2l=24, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:6 // load one buffer value
/* g2l=24, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+5] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+12+0], v[vgprG2LB+12+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+12+0], v[vgprG2LB+12+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+12+0], v[vgprG2LB+12+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+12+1], v[vgprG2LB+12+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+12+1], v[vgprG2LB+12+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+12+1], v[vgprG2LB+12+1], v6    // pack a sub 8-bit with dest
/* g2l=28, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LB+14+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:0 // load one buffer value
/* g2l=28, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:1 // load one buffer value
/* g2l=28, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:2 // load one buffer value
/* g2l=28, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:3 // load one buffer value
/* g2l=28, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LB+14+1], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:4 // load one buffer value
/* g2l=28, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:5 // load one buffer value
/* g2l=28, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:6 // load one buffer value
/* g2l=28, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], s[sgprScalarGlobalReadOffsetB+6] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+14+0], v[vgprG2LB+14+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LB+14+0], v[vgprG2LB+14+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+14+0], v[vgprG2LB+14+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+14+1], v[vgprG2LB+14+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LB+14+1], v[vgprG2LB+14+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LB+14+1], v[vgprG2LB+14+1], v6    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)                                 // 2wait for global read
// Skip force waitcnt0
s_barrier

/* local write a */
ds_write_b128 v[vgprLocalWriteAddrA], v[vgprG2LA+0:vgprG2LA+0+3] offset:0 // lwoA_0_0_0_0 = (0*LSCA) + (0*LSPA)(*MT0I+PAD) = 0

/* local write b */
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+0+0], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+0+0], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+0+1], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+0+1], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+0+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+0+2], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+0+2], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+0+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+0+3], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+0+3], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+4+0], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+4+0], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+4+1], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+4+1], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+2+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+4+2], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+4+2], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+2+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+4+3], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+4+3], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+8+0], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+8+0], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+8+1], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+8+1], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+4+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+8+2], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+8+2], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+4+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+8+3], v0 dst_sel:WORD_0   // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+8+3], v1 dst_sel:WORD_1   // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+12+0], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+12+0], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+12+1], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+12+1], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+6+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+12+2], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+12+2], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+6+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+12+3], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+12+3], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+16+0], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+16+0], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+16+1], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+16+1], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+8+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+16+2], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+16+2], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+8+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+16+3], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+16+3], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+20+0], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+20+0], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+20+1], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+20+1], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+10+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+20+2], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+20+2], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+10+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+20+3], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+20+3], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+24+0], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+24+0], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+24+1], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+24+1], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+12+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+24+2], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+24+2], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+12+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+24+3], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+24+3], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+28+0], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+28+0], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+28+1], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+28+1], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+14+1] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+28+2], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+28+2], v1 dst_sel:WORD_1  // Convert to FP16
v_cvt_pk_f32_fp8 v[0:1], v[vgprG2LB+14+1] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprG2LB+28+3], v0 dst_sel:WORD_0  // Convert to FP16
v_cvt_f16_f32 v[vgprG2LB+28+3], v1 dst_sel:WORD_1  // Convert to FP16

/* Recalc local read offsets */
/* lr0I */
v_and_b32 v1, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
v_lshrrev_b32 v1, 4, v1                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v1, 0, v1                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v1, 0x4, v1                          // 2. block offset: bnOffset = bnIdx * strideBlock(16)
v_add_u32 v0, v1, v0                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v1, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v1, 0x6, v1                          // 5. K offset: lrKOffset = kIdx * mStride(64)
v_add_u32 v0, v1, v0                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
/* lr1J */
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v1, 0x7, v1                          // 1. N offset: nOffset = nIdx * nStride(128)
v_lshrrev_b32 v2, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v2, 0, v2                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v2, 0xb, v2                          // 2. block offset: bnOffset = bnIdx * strideBlock(2048)
v_add_u32 v1, v2, v1                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v2, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v2, 4, v2                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 0x2, v2                          // 5. K offset: lrKOffset = kIdx * mStride(4)
v_add_u32 v1, v2, v1                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v2, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v2, 3, v2                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(4)
v_lshlrev_b32 v2, 0xb, v2                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(2048)
v_add_u32 v1, v2, v1                               // 7. final local read offset: flrOffset = lrOffset + WOffset
v_lshrrev_b32 v2, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s5, 16                                   // LSU offset: stride = MT0(16) + PAD0(0)
v_mul_lo_u32 v2, s5, v2                            // LSU offset: lsuoffset = sgid*(MT0+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrA], v2, v0, 0x1  // Final Offset: offset = (lro0*VW+lsuoffset)*bpe
v_lshrrev_b32 v3, 8, v[vgprLocalReadAddrA]         // Final Offset: padding 16 per block 256
v_lshlrev_b32 v3, 0x5, v3                          // Final Offset: padding 16 per block 256
v_add_u32 v[vgprLocalReadAddrA], v3, v[vgprLocalReadAddrA] // Final Offset: add padding 16 per block 256
/* N/A */
// v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
// s_mov_b32 s5, 128                                  // LSU offset: stride = MT1(128) + PAD1(0)
// v_mul_lo_u32 v0, s5, v0                            // LSU offset: lsuoffset = sgid*(MT1+PAD)
// v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v1, 0x1  // Final Offset: offset = (lro1*VW+lsuoffset)*bpe
// v_lshrrev_b32 v2, 8, v[vgprLocalReadAddrB]         // Final Offset: padding 16 per block 256
// v_lshlrev_b32 v2, 0x5, v2                          // Final Offset: padding 16 per block 256
// v_add_u32 v[vgprLocalReadAddrB], v2, v[vgprLocalReadAddrB] // Final Offset: add padding 16 per block 256
// v_add_co_u32 v[vgprLocalReadAddrB+0], vcc, 0x1200, v[vgprLocalReadAddrB+0] //  += LdsOffsetB (lower)
s_waitcnt lgkmcnt(0)                               // 5wait for local write
// Skip force waitcnt0
s_barrier

/* local read reset offsets a */

/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrA], 0x1fff, v[vgprLocalReadAddrA] // reset Red,Blk -> Red

/* local read reset offsets b */

/* localReadResetOffsets */
/* handled internally */
// v_and_b32 v[vgprLocalReadAddrB], 0x1fff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */

/* tail loop: macs */
label_TailLoopBeginL:

/* Tail: remove ValuA/B vgpr buffer [0...64) from pool */

/* Tail: add address/G2L vgpr [64...106) to pool */

/* local read a */
ds_read_u16 v[vgprValuA_X0_I0+0], v[vgprLocalReadAddrA] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+0], v[vgprLocalReadAddrA] offset:32 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=1 oIdx=0 buffer=0 iui=0
ds_read_u16 v[vgprValuA_X0_I0+1], v[vgprLocalReadAddrA] offset:64 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=2 oIdx=0 buffer=0 iui=0
ds_read_u16_d16_hi v[vgprValuA_X0_I0_D1+1], v[vgprLocalReadAddrA] offset:96 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=3 oIdx=0 buffer=0 iui=0

/* local read b */
// ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
// ds_read_b64 v[vgprValuB_X0_I0+2:vgprValuB_X0_I0+2+1], v[vgprLocalReadAddrB] offset:18432 // L -> Reg lro=0 swapByteOffset=0 ti=64 vIdx=1 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc a */
s_mov_b32 s5, 0x240                                // inc
v_add_co_u32 v[vgprLocalReadAddrA], vcc, s5, v[vgprLocalReadAddrA] // lrA += 576 (LSU*(MT+PAD)*bpe)

/* local read inc b */
// s_mov_b32 s5, 0x20                                 // inc
// v_add_co_u32 v[vgprLocalReadAddrB], vcc, s5, v[vgprLocalReadAddrB] // lrB += 32 (LSU*bpe)
s_waitcnt lgkmcnt(0)                               // 4wait for local read
v_or_b32 v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0+0], v[vgprValuA_X0_I0_D1+0] // pack two half Vgpr to one Vgpr
v_or_b32 v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0+1], v[vgprValuA_X0_I0_D1+1] // pack two half Vgpr to one Vgpr
v_and_b32 v64, 63, v[vgprSerial]                   // v64 = v[vgprSerial] % 64
v_lshrrev_b32 v64, 4, v64                          // v64 = v64 / 16
v_lshlrev_b32 v64, 0x2, v64                        // v64 = v64 * 4
v_cmp_ge_i32 s[72:73], v64, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0], v[vgprValuA_X0_I0+0+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+0+1], v[vgprValuA_X0_I0+0+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+0], v[vgprValuB_X0_I0+2+0], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+2+1], v[vgprValuB_X0_I0+2+1], 0x0, s[72:73] // set 0 if K_idx >= sizeL
v_sub_u32 v64, s[sgprLoopCounterL], v64            // get distance between size and k index
v_cmp_lt_i32 s[72:73], v64, 4                      // set partial 0 if distance less than input per thread
s_and_b32 s71, s[sgprLoopCounterL], 3              // get inputs for edge thread
s_sub_u32 s71, 4, s71                              // use shift to fill 0 for outside element
s_lshl_b32 s71, s71, 4                             // use shift to fill 0 for outside element
v_lshlrev_b64 v[66:67], s71, v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v66, s[72:73]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0+1], v67, s[72:73]
v_lshlrev_b64 v[66:67], s71, v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v66, s[72:73]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0+1], v67, s[72:73]
v_lshlrev_b64 v[66:67], s71, v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+0], v[vgprValuB_X0_I0+2+0+0+0], v66, s[72:73]
v_cndmask_b32 v[vgprValuB_X0_I0+2+0+0+1], v[vgprValuB_X0_I0+2+0+0+1], v67, s[72:73]
s_nop 1
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+2+0+0:vgprValuB_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[4:7] // left value = acc[4+0:7+0]

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x10 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x10 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 label_TailLoopBeginL                // restart LoopL
label_TailLoopEndL:
label_SkipTailLoopL:

/* Tail: remove address/G2L [64...106) from pool */
label_Summation_End_OM3VLOBPAU8FSHCB_0:
/* endSummation: add vgpr [0...106) to pool */
.set sgprStaggerUIter, UNDEF
.set sgprSrdA, UNDEF
.set sgprSrdB, UNDEF
.set sgprShadowLimitB, UNDEF
.set sgprWrapUA, UNDEF
.set sgprWrapUB, UNDEF
.set sgprGlobalReadIncsA, UNDEF
.set sgprGlobalReadIncsB, UNDEF
.set sgprScalarGlobalReadOffsetB, UNDEF
/* load store sgprs */
.set sgprAddressScaleA, 48
.set sgprAddressScaleB, 50
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc0 label_GSU_4                         // branch if GSU != 1
s_load_dwordx4 s[48:51], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x5c
label_GSU_4:

/* Mapping of Acc register -> C Vgpr register */

/* not-LocalSplitU: global write indices */
/* computeStoreVgprs */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_lshrrev_b32 v5, 0, v4                            // v5 = v4 / 1
v_mul_lo_u32 v5, 0x10, v5                          // wave coordination offset 1
v_and_b32 v1, 63, v[vgprSerial]                    // v1 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 4, v1                            // v1 = v1 / 16
v_lshlrev_b32 v1, 0x2, v1                          // thread0 * continuous_output
v_add_lshl_u32 v1, v5, v1, 0                       // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v2, v1, s[sgprStrideC1J]              //  offset 1
v_mul_lo_u32 v3, v1, s[sgprStrideD1J]              //  offset 1
v_and_b32 v0, 0, v4                                // v0 = v4 % 1
v_mul_lo_u32 v0, 0x10, v0                          // wave coordination offset 0
v_and_b32 v5, 15, v[vgprSerial]                    // v5 = v[vgprSerial] % 16
v_add_lshl_u32 v0, v5, v0, 0                       // coordination 0 = vwA * (wave_id0 + tid0)
s_mul_i32 s5, 16, s[sgprWorkGroup0]                // wgp0 * MT0
v_add_u32 v0, s5, v0                               // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s5, 128, s[sgprWorkGroup1]               // wgp1 * MT1
v_add_u32 v1, s5, v1                               // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/* not-LocalSplitU: global write */

/******************************************/
/* Global Write Elements                  */
/******************************************/
s_waitcnt lgkmcnt(0)                               // wait for 16 bytes of kern args.
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_5                         // branch if GSU == 1
s_and_b32 s52, 15, s[sgprSizeI]                    // s52 = s[sgprSizeI] % 16
s_add_u32 s53, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s53                // wg0 >= nwg0-1 ?
s_cselect_b32 s52, s52, 0                          // set rMT0
s_cmpk_gt_u32 s52, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
s_and_b32 s52, 127, s[sgprSizeJ]                   // s52 = s[sgprSizeJ] % 128
s_add_u32 s53, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s53                // wg1 >= nwg1-1
s_cselect_b32 s52, s52, 0                          // set rMT1
s_cmpk_gt_u32 s52, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
label_GW_B0_E0:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=110 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,1,0:vw1); (0,0,2,0:vw1); (0,0,3,0:vw1); (1,0,0,0:vw1); (1,0,1,0:vw1); (1,0,2,0:vw1); (1,0,3,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_lshl_u32 v6, v3, v0, 0x2                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc1            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+10], acc2           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+11], acc3           // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+12], acc4           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+13], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+14], acc6           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+15], acc7           // copy acc to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dword v8, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s52, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v9, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s52, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v10, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s52, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v11, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_mul_i32 s52, s[sgprStrideD1J], 244               // scale StrideD *= numRows(61) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v12, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s52, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v13, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s52, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v14, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_lshl_b32 s52, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dword v15, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_B0_E1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=56 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,1,0:vw1); (0,0,2,0:vw1); (0,0,3,0:vw1); (1,0,0,0:vw1); (1,0,1,0:vw1); (1,0,2,0:vw1); (1,0,3,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v22, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v6, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v22, v6, s[56:57]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v8, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v8, v22, v8, s[56:57]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v10, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, v22, v10, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v12, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v12, v22, v12, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
v_add_co_u32 v1, vcc, v1, 61                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s52, s[sgprStrideC1J], 61                // scale stride
v_add_u32 v2, v2, s52                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s52, s[sgprStrideD1J], 61                // scale stride
v_add_u32 v3, v3, s52                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v14, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v14, v22, v14, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v16, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v22, v16, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v18, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v22, v18, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v20, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v22, v20, s[56:57]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+7], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc1            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+11], acc2           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+13], acc3           // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc4           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+17], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+19], acc6           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+21], acc7           // copy acc to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dword v7, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v9, v8, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v11, v10, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v13, v12, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v15, v14, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v17, v16, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v19, v18, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dword v21, v20, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_End:
s_getpc_b64 s[52:53]                               // addr of next instr
s_add_i32 s54, label_KernelEnd, 0x4                // target branch offset
s_add_u32 s52, s52, s54                            // add target branch offset
s_addc_u32 s53, s53, 0                             // add high and carry
s_setpc_b64 s[52:53]                               // branch to label_KernelEnd
label_GSU_5:
s_mov_b32 s5, 1.0                                  // init as 1
s_cmp_eq_u64 s[sgprAddressScaleA:sgprAddressScaleA+1], 0 // s[AddressScaleA] == 0 ?
s_cbranch_scc1 label_ScaleAValid                   // branch if s[AddressScaleA] == 0
s_load_dword s5, s[sgprAddressScaleA:sgprAddressScaleA+1], 0 // load scaleA
label_ScaleAValid:
s_mov_b32 s47, 1.0                                 // init as 1
s_cmp_eq_u64 s[sgprAddressScaleB:sgprAddressScaleB+1], 0 // s[AddressScaleB] == 0 ?
s_cbranch_scc1 label_ScaleBValid                   // branch if s[AddressScaleB] == 0
s_load_dword s47, s[sgprAddressScaleB:sgprAddressScaleB+1], 0 // load scaleB
label_ScaleBValid:
v_mov_b32 v4, s[sgprAlpha]
s_waitcnt lgkmcnt(0)                               // wait for scaleAB load
v_mul_f32 v4, v4, s5
v_mul_f32 v4, v4, s47
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprAlpha], v4               // Update Alpha
s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 label_GW_Beta                       // Branch if Beta is not zero

s_and_b32 s52, 15, s[sgprSizeI]                    // s52 = s[sgprSizeI] % 16
s_add_u32 s53, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s53                // wg0 >= nwg0-1 ?
s_cselect_b32 s52, s52, 0                          // set rMT0
s_cmpk_gt_u32 s52, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1_1                    // jump if edges required
s_and_b32 s52, 127, s[sgprSizeJ]                   // s52 = s[sgprSizeJ] % 128
s_add_u32 s53, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s53                // wg1 >= nwg1-1
s_cselect_b32 s52, s52, 0                          // set rMT1
s_cmpk_gt_u32 s52, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1_1                    // jump if edges required
label_GW_B0_E0_1:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=110 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,1,0:vw1); (0,0,2,0:vw1); (0,0,3,0:vw1); (1,0,0,0:vw1); (1,0,1,0:vw1); (1,0,2,0:vw1); (1,0,3,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_lshl_u32 v6, v3, v0, 0x1                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc1            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+10], acc2           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+11], acc3           // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+12], acc4           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+13], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+14], acc6           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+15], acc7           // copy acc to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+10], s[sgprAlpha], v[vgprValuC+10] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+12], s[sgprAlpha], v[vgprValuC+12] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v8, v[vgprValuC+8]                   // convert C to fp16
buffer_store_short v8, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v9, v[vgprValuC+9]                   // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v9, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v10, v[vgprValuC+10]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v10, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v11, v[vgprValuC+11]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v11, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v12, v[vgprValuC+12]                 // convert C to fp16
s_mul_i32 s52, s[sgprStrideD1J], 122               // scale StrideD *= numRows(61) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v12, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v13, v[vgprValuC+13]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v13, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v14, v[vgprValuC+14]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v14, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v15, v[vgprValuC+15]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v15, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B0_E1_1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=56 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,1,0:vw1); (0,0,2,0:vw1); (0,0,3,0:vw1); (1,0,0,0:vw1); (1,0,1,0:vw1); (1,0,2,0:vw1); (1,0,3,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v22, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v6, v3, v0, 0x1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v22, v6, s[56:57]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v8, v3, v0, 0x1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v8, v22, v8, s[56:57]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v10, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v10, v22, v10, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v12, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v12, v22, v12, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
v_add_co_u32 v1, vcc, v1, 61                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s52, s[sgprStrideC1J], 61                // scale stride
v_add_u32 v2, v2, s52                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s52, s[sgprStrideD1J], 61                // scale stride
v_add_u32 v3, v3, s52                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v14, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v14, v22, v14, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v16, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v16, v22, v16, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v18, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v22, v18, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v20, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v22, v20, s[56:57]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+7], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc1            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+11], acc2           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+13], acc3           // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+15], acc4           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+17], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+19], acc6           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+21], acc7           // copy acc to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+7], s[sgprAlpha], v[vgprValuC+7] // *= alpha
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha

/* apply mask, calc new C and issue writes */
v_cvt_f16_f32 v7, v[vgprValuC+7]                   // convert C to fp16
buffer_store_short v7, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v9, v[vgprValuC+9]                   // convert C to fp16
buffer_store_short v9, v8, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v11, v[vgprValuC+11]                 // convert C to fp16
buffer_store_short v11, v10, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v13, v[vgprValuC+13]                 // convert C to fp16
buffer_store_short v13, v12, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v15, v[vgprValuC+15]                 // convert C to fp16
buffer_store_short v15, v14, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v17, v[vgprValuC+17]                 // convert C to fp16
buffer_store_short v17, v16, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v19, v[vgprValuC+19]                 // convert C to fp16
buffer_store_short v19, v18, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cvt_f16_f32 v21, v[vgprValuC+21]                 // convert C to fp16
buffer_store_short v21, v20, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_Beta:
s_and_b32 s52, 15, s[sgprSizeI]                    // s52 = s[sgprSizeI] % 16
s_add_u32 s53, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s53                // wg0 >= nwg0-1 ?
s_cselect_b32 s52, s52, 0                          // set rMT0
s_cmpk_gt_u32 s52, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
s_and_b32 s52, 127, s[sgprSizeJ]                   // s52 = s[sgprSizeJ] % 128
s_add_u32 s53, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s53                // wg1 >= nwg1-1
s_cselect_b32 s52, s52, 0                          // set rMT1
s_cmpk_gt_u32 s52, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
label_GW_B1_E0:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=54 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,1,0:vw1); (0,0,2,0:vw1); (0,0,3,0:vw1); (1,0,0,0:vw1); (1,0,1,0:vw1); (1,0,2,0:vw1); (1,0,3,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_add_lshl_u32 v7, v2, v0, 0x1                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
buffer_load_short_d16 v8, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32 s52, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v10, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32 s52, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v12, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32 s52, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v14, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
s_mul_i32 s52, s[sgprStrideC1J], 122               // scale StrideC *= numRows(61) * bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v16, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
s_lshl_b32 s52, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v18, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
s_lshl_b32 s52, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v20, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
s_lshl_b32 s52, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_short_d16 v22, v7, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v6, v3, v0, 0x1                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+9], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+11], acc1           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+13], acc2           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+15], acc3           // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+17], acc4           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+19], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+21], acc6           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+23], acc7           // copy acc to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+9], s[sgprAlpha], v[vgprValuC+9] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+13], s[sgprAlpha], v[vgprValuC+13] // *= alpha
v_mul_f32 v[vgprValuC+15], s[sgprAlpha], v[vgprValuC+15] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+19], s[sgprAlpha], v[vgprValuC+19] // *= alpha
v_mul_f32 v[vgprValuC+21], s[sgprAlpha], v[vgprValuC+21] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt vmcnt(7)                                 // vmcnt(7) = 8 - 1 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+9], s[sgprBeta], v8, v[vgprValuC+9] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v9, v[vgprValuC+9]                   // convert C to fp16
buffer_store_short v9, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(6) = 8 - 2 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+11], s[sgprBeta], v10, v[vgprValuC+11] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v11, v[vgprValuC+11]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v11, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(5) = 8 - 3 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+13], s[sgprBeta], v12, v[vgprValuC+13] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v13, v[vgprValuC+13]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v13, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(4) = 8 - 4 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+15], s[sgprBeta], v14, v[vgprValuC+15] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v15, v[vgprValuC+15]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v15, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(3) = 8 - 5 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+17], s[sgprBeta], v16, v[vgprValuC+17] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v17, v[vgprValuC+17]                 // convert C to fp16
s_mul_i32 s52, s[sgprStrideD1J], 122               // scale StrideD *= numRows(61) * bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v17, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(2) = 8 - 6 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+19], s[sgprBeta], v18, v[vgprValuC+19] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v19, v[vgprValuC+19]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v19, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(1) = 8 - 7 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+21], s[sgprBeta], v20, v[vgprValuC+21] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v21, v[vgprValuC+21]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v21, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(7)                                 // vmcnt(0) = 8 - 8 (beta) (interleaved)
v_fma_mix_f32 v[vgprValuC+23], s[sgprBeta], v22, v[vgprValuC+23] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v23, v[vgprValuC+23]                 // convert C to fp16
s_lshl_b32 s52, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s52        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_short v23, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B1_E1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=36 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw1); (0,0,1,0:vw1); (0,0,2,0:vw1); (0,0,3,0:vw1); (1,0,0,0:vw1); (1,0,1,0:vw1); (1,0,2,0:vw1); (1,0,3,0:vw1) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v30, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v6, v2, v0, 0x1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v30, v6, s[56:57]                // LDC clip if OOB. offset
buffer_load_short_d16 v7, v6, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v6, v3, v0, 0x1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v30, v6, s[56:57]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v9, v2, v0, 0x1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v30, v9, s[56:57]                // LDC clip if OOB. offset
buffer_load_short_d16 v10, v9, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v9, v3, v0, 0x1                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v9, v30, v9, s[56:57]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v12, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v12, v30, v12, s[56:57]              // LDC clip if OOB. offset
buffer_load_short_d16 v13, v12, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v12, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v12, v30, v12, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v15, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v15, v30, v15, s[56:57]              // LDC clip if OOB. offset
buffer_load_short_d16 v16, v15, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v15, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v15, v30, v15, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,0,0,0) */
v_add_co_u32 v1, vcc, v1, 61                       // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
s_mul_i32 s52, s[sgprStrideC1J], 61                // scale stride
v_add_u32 v2, v2, s52                              // ROWINC- Move cinRowPtr to next row
s_mul_i32 s52, s[sgprStrideD1J], 61                // scale stride
v_add_u32 v3, v3, s52                              // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v18, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v30, v18, s[56:57]              // LDC clip if OOB. offset
buffer_load_short_d16 v19, v18, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v18, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v18, v30, v18, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v21, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v21, v30, v21, s[56:57]              // LDC clip if OOB. offset
buffer_load_short_d16 v22, v21, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v21, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v21, v30, v21, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v24, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v30, v24, s[56:57]              // LDC clip if OOB. offset
buffer_load_short_d16 v25, v24, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v24, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v30, v24, s[56:57]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(1,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[52:53], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[56:57], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[56:57], s[52:53], s[56:57]             // in0 && in1
v_add_lshl_u32 v27, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v30, v27, s[56:57]              // LDC clip if OOB. offset
buffer_load_short_d16 v28, v27, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v27, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v27, v30, v27, s[56:57]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+11], acc1           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+14], acc2           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+17], acc3           // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+20], acc4           // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+23], acc5           // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+26], acc6           // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+29], acc7           // copy acc to vreg[7]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0), (1, 0, 0, 0), (1, 0, 1, 0), (1, 0, 2, 0), (1, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+8], s[sgprAlpha], v[vgprValuC+8] // *= alpha
v_mul_f32 v[vgprValuC+11], s[sgprAlpha], v[vgprValuC+11] // *= alpha
v_mul_f32 v[vgprValuC+14], s[sgprAlpha], v[vgprValuC+14] // *= alpha
v_mul_f32 v[vgprValuC+17], s[sgprAlpha], v[vgprValuC+17] // *= alpha
v_mul_f32 v[vgprValuC+20], s[sgprAlpha], v[vgprValuC+20] // *= alpha
v_mul_f32 v[vgprValuC+23], s[sgprAlpha], v[vgprValuC+23] // *= alpha
v_mul_f32 v[vgprValuC+26], s[sgprAlpha], v[vgprValuC+26] // *= alpha
v_mul_f32 v[vgprValuC+29], s[sgprAlpha], v[vgprValuC+29] // *= alpha
s_waitcnt vmcnt(0)                                 // wait for Beta

/* apply mask, calc new C and issue writes */
v_fma_mix_f32 v[vgprValuC+8], s[sgprBeta], v7, v[vgprValuC+8] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v8, v[vgprValuC+8]                   // convert C to fp16
buffer_store_short v8, v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+11], s[sgprBeta], v10, v[vgprValuC+11] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v11, v[vgprValuC+11]                 // convert C to fp16
buffer_store_short v11, v9, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+14], s[sgprBeta], v13, v[vgprValuC+14] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v14, v[vgprValuC+14]                 // convert C to fp16
buffer_store_short v14, v12, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+17], s[sgprBeta], v16, v[vgprValuC+17] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v17, v[vgprValuC+17]                 // convert C to fp16
buffer_store_short v17, v15, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+20], s[sgprBeta], v19, v[vgprValuC+20] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v20, v[vgprValuC+20]                 // convert C to fp16
buffer_store_short v20, v18, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+23], s[sgprBeta], v22, v[vgprValuC+23] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v23, v[vgprValuC+23]                 // convert C to fp16
buffer_store_short v23, v21, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+26], s[sgprBeta], v25, v[vgprValuC+26] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v26, v[vgprValuC+26]                 // convert C to fp16
buffer_store_short v26, v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_fma_mix_f32 v[vgprValuC+29], s[sgprBeta], v28, v[vgprValuC+29] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_cvt_f16_f32 v29, v[vgprValuC+29]                 // convert C to fp16
buffer_store_short v29, v27, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_End_1:
label_KernelEnd:
s_endpgm                                           // Kernel End
