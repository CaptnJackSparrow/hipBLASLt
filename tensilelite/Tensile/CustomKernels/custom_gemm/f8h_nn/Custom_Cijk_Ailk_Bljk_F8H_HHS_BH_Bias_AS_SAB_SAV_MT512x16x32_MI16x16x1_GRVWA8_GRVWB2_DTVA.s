
/******************************************/
/* Begin Kernel                           */
/******************************************/
// .amdgcn_target "amdgcn-amd-amdhsa--gfx942"
.text
.protected Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA
.globl Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA
.p2align 8
.type Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA,@function
.section .rodata,#alloc
.p2align 6
.amdhsa_kernel Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_accum_offset 128 // accvgpr offset
  .amdhsa_next_free_vgpr 256 // vgprs
  .amdhsa_next_free_sgpr 80 // sgprs
  .amdhsa_group_segment_fixed_size 4096 // lds bytes
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
.end_amdhsa_kernel
.text
/* Num VGPR   =96 */
/* Num AccVGPR=32 */
/* Num SGPR   =80 */

/******************************************/
/* Optimizations and Config:              */
/******************************************/
/* ThreadTile= 32 x 1 */
/* SubGroup= 16 x 16 */
/* VectorWidthA=8 */
/* VectorWidthB=1 */
/* GlobalReadVectorWidthA=8, GlobalReadVectorWidthB=2 */
/* DirectToLdsA=False */
/* DirectToLdsB=False */
/* UseSgprForGRO=1 */
.amdgpu_metadata
---
custom.config:
   ProblemType:
      OperationType: GEMM
      DataTypeA: f8
      DataTypeB: h
      UseScaleAB: True
      DataType: h
      DestDataType: h
      ComputeDataType: s
      HighPrecisionAccumulate: True
      TransposeA: False
      TransposeB: False
      UseBeta: True
      Batched: True
      UseBias: True
      Activation: True
      UseScaleAlphaVec: True
   MatrixInstruction: [16, 16, 16, 1, 1, 8,1, 4,1]
   1LDSBuffer: 1
   DepthU: 32
   StaggerU: 4
   WorkGroupMapping: 1
   WaveSeparateGlobalReadA: 0
   WaveSeparateGlobalReadB: 0
   GlobalReadVectorWidthA: 8
   GlobalReadVectorWidthB: 2
   AssertFree0ElementMultiple: 8
   AssertSummationElementMultiple: 1
   GlobalSplitU: 16
   GlobalSplitUAlgorithm: MultipleBuffer
   InternalSupportParams: {SupportCustomWGM: True, SupportUserGSU: True, SupportCustomStaggerU: True}
   PreloadKernArgs: 0
   NoReject: 1
amdhsa.version:
  - 1
  - 1
amdhsa.kernels:
  - .name: Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA
    .symbol: 'Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA.kd'
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
      - .name:            AddressScaleAlphaVec
        .size:            8
        .offset:          108
        .value_kind:      global_buffer
        .value_type:      f32
        .address_space:   generic
      - .name:            bias
        .size:            8
        .offset:          116
        .value_kind:      global_buffer
        .value_type:      void
        .address_space:   generic
      - .name:            biasType
        .size:            4
        .offset:          124
        .value_kind:      by_value
        .value_type:      u32
      - .name:            StrideBias
        .size:            4
        .offset:          128
        .value_kind:      by_value
        .value_type:      u32
      - .name:            activationAlpha
        .size:            4
        .offset:          132
        .value_kind:      by_value
        .value_type:      f32
      - .name:            activationBeta
        .size:            4
        .offset:          136
        .value_kind:      by_value
        .value_type:      f32
      - .name:            activationType
        .size:            4
        .offset:          140
        .value_kind:      by_value
        .value_type:      u32
    .group_segment_fixed_size:   4096
    .kernarg_segment_align:      8
    .kernarg_segment_size:       144
    .max_flat_workgroup_size:    256
    .private_segment_fixed_size: 0
    .sgpr_count:                 80
    .sgpr_spill_count:           0
    .vgpr_count:                 96
    .vgpr_spill_count:           0
    .wavefront_size:             64
...
.end_amdgpu_metadata
Custom_Cijk_Ailk_Bljk_F8H_HHS_BH_Bias_AS_SAB_SAV_MT512x16x32_MI16x16x1_GRVWA8_GRVWB2_DTVA:

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
.set vgprValuA_X1_I0, 16
.set vgprValuB_X0_I0, 32
.set vgprValuB_X1_I0, 34
.set vgprLocalReadAddrB, 36
.set vgprLocalWriteAddrB, 37
.set vgprGlobalReadOffsetA, 38
.set vgprGlobalReadOffsetB, 39
.set vgprG2LA, 40
.set vgprG2LB, 72
.set vgprSerial, 73
.set vgprTmpG2LAx16, 74
.set vgprTmpCVTx2, 90

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
.set sgprStaggerU, 47
.set sgprStaggerUIter, 58
.set sgprWrapUA, 59
.set sgprWrapUB, 61
.set sgprGlobalReadIncsA, 63
.set sgprGlobalReadIncsB, 64
.set sgprPackKForV0, 65
.set sgprPackKForV1, 66
.set sgprScalarGlobalReadOffsetA, 67

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

.set MT0, 512
.set MT1, 16
.set DepthU, 32
.set BpeA, 2
.set BpeALog2, 1
.set BpeB, 2
.set BpeBLog2, 1
.set BpeAGR, 1
.set BpeAGRLog2, 0
.set BpeBGR, 2
.set BpeBGRLog2, 1
/* Number of elements to shift-left SRD */
.set SrdShiftLeftA, 8
.set SrdShiftLeftB, 2
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
                                                       // offset *= bytes/element (multiplier is 1 do nothing)
.endm

/* Global Offset B */
.macro GLOBAL_OFFSET_B vgprAddr:req vgprOffsetL:req vgprOffset1J:req vgprTmp:req
    v_mul_lo_u32 v[\vgprTmp+0] s[sgprStrideB1J] v[\vgprOffset1J] // mul d1 lower
    v_add_co_u32 v[\vgprAddr+0] vcc v[\vgprOffsetL] v[\vgprTmp+0] // accumulate K lower
    v_add_u32 v[\vgprAddr+0] 0x2 v[\vgprAddr+0]      // add prepad for pointer shift
    v_lshlrev_b32 v[\vgprAddr+0] 0x1 v[\vgprAddr+0]  // offset *= bytes/element
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
s_mov_b32 s[sgprPackKForV0], 0x05040100
s_mov_b32 s[sgprPackKForV1], 0x07060302
s_mov_b32 m0, 0x1000                               // LDS clamp at 4096 bytes
v_mov_b32 v[vgprSerial], v0                        // thread serial id
/* init: add vgpr [0...52) to pool */
/* init: add vgpr [0...0) to pool */
/* init: add agpr [0...32) to pool */

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
v_lshlrev_b32 v0, 0x3, v0                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(8)
v_and_b32 v1, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v1, 0xb, v1                          // 5. K offset: lrKOffset = kIdx * mStride(2048)
v_add_u32 v0, v1, v0                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v1, 3, v1                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(4)
v_lshlrev_b32 v1, 0x7, v1                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(128)
v_add_u32 v0, v1, v0                               // 7. final local read offset: flrOffset = lrOffset + WOffset
/* lr1J */
v_and_b32 v2, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v1, 15, v2                               // 1. N offset: nIdx = wtid % MI_N(16)
v_lshlrev_b32 v1, 0x5, v1                          // 1. N offset: nOffset = nIdx * nStride(32)
v_lshrrev_b32 v2, 4, v2                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
v_and_b32 v2, 0, v2                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
v_lshlrev_b32 v2, 0x9, v2                          // 2. block offset: bnOffset = bnIdx * strideBlock(512)
v_add_u32 v1, v2, v1                               // 3. add N and block offset: bnOffset = block and N offset
                                                   // 4. apply VectorWidth: bnOffset = bnOffset * vw(1) (multiplier is 1, do nothing)
v_and_b32 v2, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v2, 4, v2                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
v_lshlrev_b32 v2, 0x2, v2                          // 5. K offset: lrKOffset = kIdx * mStride(4)
v_add_u32 v1, v2, v1                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset

/* local read addresses: final offsets b */
v_lshrrev_b32 v0, 8, v[vgprSerial]                 // LSU offset: sgid = Serial / subGroup(256)
s_mov_b32 s74, 16                                  // LSU offset: stride = MT1(16) + PAD1(0)
v_mul_lo_u32 v0, s74, v0                           // LSU offset: lsuoffset = sgid*(MT1+PAD)
v_add_lshl_u32 v[vgprLocalReadAddrB], v0, v1, 0x1  // Final Offset: offset = (lro1*VW+lsuoffset)*bpe
v_lshrrev_b32 v2, 7, v[vgprLocalReadAddrB]         // Final Offset: padding 4 per block 128
v_lshlrev_b32 v2, 0x3, v2                          // Final Offset: padding 4 per block 128
v_add_u32 v[vgprLocalReadAddrB], v2, v[vgprLocalReadAddrB] // Final Offset: add padding 4 per block 128

/* local read addresses: declare addresses a */
/* N/A */

/* local read addresses: declare addresses b */

/******************************************/
/* Local Write Addresses                  */
/******************************************/
/* LVCA = 64 */
/* v1 = A-unroll = serial/LVCA */
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // v1 = v[vgprSerial] / 64
v_and_b32 v0, 63, v[vgprSerial]                    // v0 = v[vgprSerial] % 64
/* tile *= glvw */
v_lshlrev_b32 v0, 0x3, v0                          // v0 = v0 * 8
v_mov_b32 v4, v1                                   // copy for GlobalSplitU
/* LVCB = 16 */
/* v3 = B-unroll = serial%LVCB */
v_lshrrev_b32 v2, 4, v[vgprSerial]                 // v2 = v[vgprSerial] / 16
v_and_b32 v3, 15, v[vgprSerial]                    // v3 = v[vgprSerial] % 16
/* unroll *= glvw */
v_lshlrev_b32 v3, 0x1, v3                          // v3 = v3 * 2
v_mov_b32 v5, v3                                   // copy for GlobalSplitU
/* lwaUnrollAssignmentA = v4 */
/* lwaUnrollAssignmentB = v5 */

/* local write addresses: first offset b */
v_mul_u32_u24 v[vgprLocalWriteAddrB], 0x20, v2     // lwBL**(DepthU_Compute + PAD)
v_add_lshl_u32 v[vgprLocalWriteAddrB], v5, v[vgprLocalWriteAddrB], 0x1 // lwFOB = (lwBB + lwBL*(DepthU+PAD))*bpe
v_lshrrev_b32 v6, 7, v[vgprLocalWriteAddrB]        // padding 4 per block 128
v_lshlrev_b32 v6, 0x3, v6                          // padding 4 per block 128
v_add_u32 v[vgprLocalWriteAddrB], v6, v[vgprLocalWriteAddrB] // add padding 4 per block 128
s_waitcnt lgkmcnt(0)                               // wait for 92 bytes of kern args
s_and_b32 s[sgprWGM], s[sgprGSU], 0xff00
s_lshr_b32 s[sgprWGM], s[sgprWGM], 0x8
s_and_b32 s[sgprStaggerU], s[sgprGSU], 0xffff0000
s_lshr_b32 s[sgprStaggerU], s[sgprStaggerU], 0x10
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
s_sub_u32 s[sgprAddressA+0], s[sgprAddressA+0], 8  // pre-pad to make room for possible pointer shift
s_subb_u32 s[sgprAddressA+1], s[sgprAddressA+1], 0 // pre-pad to make room for possible pointer shift
s_sub_u32 s[sgprAddressB+0], s[sgprAddressB+0], 4  // pre-pad to make room for possible pointer shift
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
v_readfirstlane_b32 s76, v6
s_mul_i32 s77, s76, s[sgprWGM]                     // quotient * non-magic divisor
s_sub_u32 s77, s[sgprWorkGroup1], s77              // WorkGroup1=remainder
s_mul_i32 s77, s77, s[sgprNumWorkGroups0]          // (wg1 % WGM)*nwg0
s_add_u32 s77, s77, s[sgprWorkGroup0]              // wgSerial = wg0 + (wg1 % WGM)*nwg0
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
v_readfirstlane_b32 s74, v6
s_mul_i32 s75, s[sgprWGM], s74                     // quotient * non-magic divisor
s_sub_u32 s78, s[sgprNumWorkGroups1], s75          // WorkGroup1=remainder
s_cmp_eq_u32 s78, 0                                // remainder == 0 ?
s_cmov_b32 s78, s[sgprWGM]                         // remainder = WGM if remainder == 0
s_cmp_ge_u32 s76, s74                              // blockId >= numFullBlocks ?
s_cselect_b32 s74, s78, s[sgprWGM]
v_cvt_f32_u32 v6, s74                              // s[sgprWorkGroup0] = s77 / s74
v_rcp_iflag_f32 v6, v6                             // s[sgprWorkGroup0] = s77 / s74
v_cvt_f32_u32 v7, s77                              // s[sgprWorkGroup0] = s77 / s74
v_mul_f32 v6, v6, v7                               // s[sgprWorkGroup0] = s77 / s74
v_cvt_u32_f32 v6, v6                               // s[sgprWorkGroup0] = s77 / s74
v_mul_u32_u24 v7, v6, s74                          // s[sgprWorkGroup0] = s77 / s74
v_sub_u32 v7, s77, v7                              // s[sgprWorkGroup0] = s77 / s74
v_cmpx_eq_u32 exec, v7, s74                        // s[sgprWorkGroup0] = s77 / s74
v_add_u32 v6, 1, v6                                // s[sgprWorkGroup0] = s77 / s74
v_mov_b32 v7, 0                                    // s[sgprWorkGroup1] = s77 % s74
s_mov_b64 exec, -1                                 // s[sgprWorkGroup0] = s77 / s74
v_readfirstlane_b32 s[sgprWorkGroup0], v6
v_readfirstlane_b32 s[sgprWorkGroup1], v7
s_mul_i32 s76, s76, s[sgprWGM]                     // blockId * WGM
s_add_u32 s[sgprWorkGroup1], s[sgprWorkGroup1], s76 // wg1 += blockId * WGM
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
// GLOBAL_OFFSET_A vgprGlobalReadOffsetA+0,  0,  1, 6 // gROA_0_0_0_0

v_and_b32 v1, 63, v[vgprSerial]                    // 0. thread id in wave: wtid = tid % wavelength(64)
v_and_b32 v0, 15, v1                               // 1. N offset: nIdx = wtid % MI_N(16)
                                                   // 1. N offset: nOffset = nIdx * nStride(1) (multiplier is 1, do nothing)
// v_lshrrev_b32 v1, 4, v1                            // 2. block offset: bnIdx = wtid / dividedForBlkId(16)
// v_and_b32 v1, 0, v1                                // 2. block offset: bnIdx = bnIdx % num1DBlocks(1)
// v_lshlrev_b32 v1, 0x4, v1                          // 2. block offset: bnOffset = bnIdx * strideBlock(16)
// v_add_u32 v0, v1, v0                               // 3. add N and block offset: bnOffset = block and N offset
v_lshlrev_b32 v0, 0x3, v0                          // 4. apply VectorWidth: bnOffset = bnOffset * vw(8)
// v_and_b32 v1, 63, v[vgprSerial]                    // 5. thread id in wave: wtid = tid % wavelength(64)
v_lshrrev_b32 v1, 4, v1                            // 5. K offset: kIdx = wtid / (MIN(16) * MIBB(1))
// v_lshlrev_b32 v1, 0xb, v1                          // 5. K offset: lrKOffset = kIdx * mStride(2048)
v_mul_lo_u32 v1, 4, v1
v_mul_lo_u32 v1, s[sgprStrideAL], v1
v_add_u32 v0, v1, v0                               // 6. offset in wave: lrOffset = bnOffset + lrKOffset
v_lshrrev_b32 v1, 6, v[vgprSerial]                 // 7. wave offset in N dimen: wtid = tid / dividedForWaveId(64)
v_and_b32 v1, 3, v1                                // 7. wave offset in M dimen: wtid0 = wtid / num1DWaves(4)
v_lshlrev_b32 v1, 0x7, v1                          // 7. wave offset in M dimen: wOffset = wtid0 * W0Stride(128)
// v_add_u32 v0, v1, v0                               // 7. final local read offset: flrOffset = lrOffset + WOffset
v_add_u32 v[vgprGlobalReadOffsetA], v1, v0
v_add_u32 v[vgprGlobalReadOffsetA], 8, v[vgprGlobalReadOffsetA]      // add prepad for pointer shift

s_mul_i32 s[sgprScalarGlobalReadOffsetA+0], s[sgprStrideAL], 1 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+1], s[sgprStrideAL], 2 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+2], s[sgprStrideAL], 3 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+3], s[sgprStrideAL], 16 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+4], s[sgprStrideAL], 17 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+5], s[sgprStrideAL], 18 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)
s_mul_i32 s[sgprScalarGlobalReadOffsetA+6], s[sgprStrideAL], 19 // compute offset diff (scaled unrollDim)
                                                   // scalar offset *= bytes/element (multiplier is 1, do nothing)


/* global read addresses: final offsets b */
GLOBAL_OFFSET_B vgprGlobalReadOffsetB+0,  3,  2, 6 // gROB_0_0_0_0

/* global read addresses: addresses a */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s77, s[sgprWorkGroup0], 512           // WorkGroup[01] * MT
s_mul_i32 s76, s[sgprWorkGroup0], 512              // WorkGroup[01] * MT
s_mul_hi_u32 s75, 32, s[sgprGSUSumIdx]             // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_i32 s74, 32, s[sgprGSUSumIdx]                // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_hi_u32 s75, s74, s[sgprStrideAL]             // tlu=1, scaled unroll-offset by stride
s_mul_i32 s74, s74, s[sgprStrideAL]                // tlu=1, scaled unroll-offset by stride
s_add_u32 s76, s76, s74                            // accum GsuOffset term to tilestart
s_addc_u32 s77, s77, s75                           // accum GsuOffset term to tilestart
s_mov_b32 s[sgprShadowLimitA+0], 1                 // Init tensor size
s_mov_b32 s[sgprShadowLimitA+1], 0                 // init tensor size
s_sub_u32 s74, s[sgprSizeI], 1                     // (size-1)
s_mul_hi_u32 s75, constStrideA0I, s74              // stride x (size-1)
s_mul_i32 s74, constStrideA0I, s74                 // stride x (size-1)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // sum tensor size
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // sum tensor size
s_sub_u32 s74, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s75, s[sgprStrideAL], s74             // stride x (size-1)
s_mul_i32 s74, s[sgprStrideAL], s74                // stride x (size-1)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // sum tensor size
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // sum tensor size
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s76 // sub tileStart
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s77 // sub tileStart
                                                   // Set limit to use bytes (byte is 1, do nothing)
s_add_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], 8 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s75, s[sgprStrideAK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s74, s[sgprStrideAK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s76, s76, s74                            // accum wg term to tilestart
s_addc_u32 s77, s77, s75                           // accum wg term to tilestart
                                                   // tileStart *= BPE (multiplier is 1, do nothing)
s_add_u32 s[sgprSrdA+0], s[sgprAddressA+0], s76    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdA+1], s[sgprAddressA+1], s77   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdA+3], Srd127_96                 // Set bits 127_96 in SRD

/* global read addresses: addresses b */
/* max read offset = size[n] * stride[n-1] */
s_mul_hi_u32 s77, s[sgprWorkGroup1], 16            // WorkGroup[01] * MT
s_mul_i32 s76, s[sgprWorkGroup1], 16               // WorkGroup[01] * MT
s_mul_hi_u32 s77, s76, s[sgprStrideB1J]            // tlu=0, scaled tile-offset by stride
s_mul_i32 s76, s76, s[sgprStrideB1J]               // tlu=0, scaled tile-offset by stride
s_mul_hi_u32 s75, 32, s[sgprGSUSumIdx]             // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_mul_i32 s74, 32, s[sgprGSUSumIdx]                // gsuOffset = DepthU*bpeGR*GSUSumIdx
s_add_u32 s76, s76, s74                            // accum GsuOffset term to tilestart
s_addc_u32 s77, s77, s75                           // accum GsuOffset term to tilestart
s_mov_b32 s[sgprShadowLimitB+0], 1                 // Init tensor size
s_mov_b32 s[sgprShadowLimitB+1], 0                 // init tensor size
s_sub_u32 s74, s[sgprSizeL], 1                     // (size-1)
s_mul_hi_u32 s75, constStrideBL, s74               // stride x (size-1)
s_mul_i32 s74, constStrideBL, s74                  // stride x (size-1)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // sum tensor size
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // sum tensor size
s_sub_u32 s74, s[sgprSizeJ], 1                     // (size-1)
s_mul_hi_u32 s75, s[sgprStrideB1J], s74            // stride x (size-1)
s_mul_i32 s74, s[sgprStrideB1J], s74               // stride x (size-1)
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // sum tensor size
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // sum tensor size
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s76 // sub tileStart
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s77 // sub tileStart
s_lshl_b64 s[sgprShadowLimitB:sgprShadowLimitB+1], s[sgprShadowLimitB:sgprShadowLimitB+1], 0x1 // Set limit to use bytes
s_add_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], 4 // extend limit for pre-pad
s_addc_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], 0 // extend limit for pre-pad
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_mul_hi_u32 s75, s[sgprStrideBK], s[sgprWorkGroup2] // Stride*WG
s_mul_i32 s74, s[sgprStrideBK], s[sgprWorkGroup2]  // Stride*WG
s_add_u32 s76, s76, s74                            // accum wg term to tilestart
s_addc_u32 s77, s77, s75                           // accum wg term to tilestart
s_lshl_b64 s[76:77], s[76:77], 0x1                 // tileStart *= BPE
s_add_u32 s[sgprSrdB+0], s[sgprAddressB+0], s76    // SRD base = Address+ tileStart0
s_addc_u32 s[sgprSrdB+1], s[sgprAddressB+1], s77   // SRD base = Address+ tileStart1
s_mov_b32 s[sgprSrdB+3], Srd127_96                 // Set bits 127_96 in SRD
s_mul_i32 s74, s[sgprGSU], DepthU*BpeAGR
s_mul_i32 s[sgprGlobalReadIncsA+0], s74, s[sgprStrideAL] // incrA unrollIdx)

// Swizzle
s_or_b32 s[sgprSrdA+1], s[sgprSrdA+1], 0xC0000000
s_or_b32 s[sgprSrdB+1], s[sgprSrdB+1], 0xC0000000

/* global read addresses: increments b */
s_mul_i32 s74, s[sgprGSU], DepthU*BpeBGR
s_mov_b32 s[sgprGlobalReadIncsB+0], s74            // incrB (unrollIdx)
/* declare loop num iterations */
s_lshr_b32 s[sgprLoopCounterL], s[sgprSizesSum+0], 5 // s[sgprLoopCounterL] = s[sgprSizesSum+0] / 32
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
s_add_u32 s74, 1, s[sgprLoopCounterL]              // tmp<-numIterMyWg+
s_cmp_lt_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx < numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], s74                // numIterMyWg++ if needed
label_GSU_1:
s_mov_b32 s[sgprOrigLoopCounter], s[sgprLoopCounterL] // copy loop counter
s_and_b32 s76, s[sgprStaggerU], 0x1f00
s_lshr_b32 s76, s76, 0x8
s_and_b32 s77, s[sgprStaggerU], 0xe000
s_and_b32 s[sgprStaggerU], s[sgprStaggerU], 0xff
s_mov_b32 s74, s[sgprStaggerU]                     // init staggerU
label_beginStaggerUIter:
s_lshl_b32 s75, s74, s76                           // shift by StaggerUStride
s_cmp_ge_u32 s[sgprOrigLoopCounter], s75           // loopCount >= current shift Count
s_cbranch_scc1 label_endStaggerUIter               // jump to end
s_lshr_b32 s74, s74, 1                             // step down to smaller stagger
s_branch label_beginStaggerUIter                   // jump to begin
label_endStaggerUIter:
s_sub_u32 s75, s74, 1                              // staggerU mask
s_cmp_ge_u32 s74, 1                                // if current staggerU >= 1
s_cselect_b32 s[sgprStaggerUIter], s75, 0          // set Mask
s_cmp_eq_u32 s77, 0x0
s_cbranch_scc1 label_StaggerUMapping_1
s_mov_b32 s74, s[sgprWorkGroup0]
s_branch label_staggerInputEnd
label_StaggerUMapping_1:
s_cmp_eq_u32 s77, 0x2000
s_cbranch_scc1 label_StaggerUMapping_2
s_mov_b32 s74, s[sgprWorkGroup1]
s_branch label_staggerInputEnd
label_StaggerUMapping_2:
s_cmp_eq_u32 s77, 0x4000
s_cbranch_scc1 label_StaggerUMapping_3
s_mov_b32 s74, -0x1
s_branch label_staggerInputEnd
label_StaggerUMapping_3:
s_cmp_eq_u32 s77, 0x6000
s_cbranch_scc1 label_StaggerUMapping_4
s_mul_i32 s75, s[sgprNumWorkGroups0], s[sgprWorkGroup1]
s_add_u32 s74, s74, s75
s_add_u32 s74, s74, s[sgprWorkGroup0]
s_branch label_staggerInputEnd
label_StaggerUMapping_4:
s_cmp_eq_u32 s77, 0x8000
s_cbranch_scc1 label_staggerInputEnd
s_mov_b32 s74, -0x1
s_branch label_staggerInputEnd
label_staggerInputEnd:
s_and_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], s74 // Compute actual stagger start for this tile
s_lshl_b32 s[sgprStaggerUIter], s[sgprStaggerUIter], s76 // shift by StaggerUStride

/* SRDs += (StaggerUIter) * GlobalReadIncsA+0 */
s_mul_hi_i32 s75, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_i32 s74, s[sgprStaggerUIter], s[sgprGlobalReadIncsA+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUA+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUA+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsA+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0], s[sgprWrapUA+0] // remove one iteration
s_subb_u32 s[sgprWrapUA+1], 0, s[sgprWrapUA+1]     // remove one iteration
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* SRDs += (StaggerUIter) * GlobalReadIncsB+0 */
s_mul_hi_i32 s75, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_i32 s74, s[sgprStaggerUIter], s[sgprGlobalReadIncsB+0] //  stagger byte offset
s_mul_hi_i32 s[sgprWrapUB+1], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_mul_i32 s[sgprWrapUB+0], s[sgprLoopCounterL], s[sgprGlobalReadIncsB+0] // Number of bytes accessed by the unroll loop
s_sub_u32 s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0], s[sgprWrapUB+0] // remove one iteration
s_subb_u32 s[sgprWrapUB+1], 0, s[sgprWrapUB+1]     // remove one iteration
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // limit -= inc)
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
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LA+2:vgprG2LA+2+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LA+6:vgprG2LA+6+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx2 v[vgprG2LA+10:vgprG2LA+10+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx2 v[vgprG2LA+14:vgprG2LA+14+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dwordx2 v[vgprG2LA+18:vgprG2LA+18+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0
buffer_load_dwordx2 v[vgprG2LA+22:vgprG2LA+22+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0
buffer_load_dwordx2 v[vgprG2LA+26:vgprG2LA+26+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0
buffer_load_dwordx2 v[vgprG2LA+30:vgprG2LA+30+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0

/* global read inc A loopL */
s_add_u32 s76, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s76              // Is this wrapIter? (pf)
s_cselect_b32 s74, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s75, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_add_u32 s76, s[sgprLoopCounterL], 1              // remove pf(1)
s_cmp_eq_u32 s[sgprStaggerUIter], s76              // Is this wrapIter? (pf)
s_cselect_b32 s74, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s75, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // limit -= inc)
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


s_mul_i32 s76, MT1, s[sgprWorkGroup1]              // <- wg1*MT1
s_mul_hi_u32 s75, s76, s[sgprStrideC1J]            // ScaleC s76 by Stride
s_mul_i32 s74, s76, s[sgprStrideC1J]               // ScaleC s76 by Stride
s_lshl_b64 s[74:75], s[74:75], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprAddressC+0], s74    // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprAddressC+1], s75   // add hi to SRD
s_mul_hi_u32 s75, s76, s[sgprStrideD1J]            // ScaleD s76 by Stride
s_mul_i32 s74, s76, s[sgprStrideD1J]               // ScaleD s76 by Stride
s_lshl_b64 s[74:75], s[74:75], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprAddressD+0], s74    // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprAddressD+1], s75   // add hi to SRD

s_mul_hi_u32 s75, s[sgprWorkGroup2], s[sgprStrideCK] // ScaleC s[sgprWorkGroup2] by Stride
s_mul_i32 s74, s[sgprWorkGroup2], s[sgprStrideCK]  // ScaleC s[sgprWorkGroup2] by Stride
s_lshl_b64 s[74:75], s[74:75], s[sgprGSULog2BpeC]  // scale by bpe
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // add lo to SRD
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], s75       // add hi to SRD
s_mul_hi_u32 s75, s[sgprWorkGroup2], s[sgprStrideDK] // ScaleD s[sgprWorkGroup2] by Stride
s_mul_i32 s74, s[sgprWorkGroup2], s[sgprStrideDK]  // ScaleD s[sgprWorkGroup2] by Stride
s_lshl_b64 s[74:75], s[74:75], s[sgprGSULog2BpeD]  // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // add lo to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s75       // add hi to SRD

s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_2                         // branch if GSU == 1
// GSU Output Buffer offset: Free0 + (Free1-1)*StrideC1J + (Free2-1)*StrideCK * GSUIdx * bpe%s
s_mul_hi_u32 s75, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_mul_i32 s74, s[sgprSizesFree+0], s[sgprGSUSumIdx] // Free0
s_sub_u32 s78, s[sgprSizesFree+1], 1               // Free1
s_mul_i32 s78, s78, s[sgprGSUSumIdx]               // Free1
s_mul_hi_u32 s77, s78, s[sgprStrideC1J]            // Free1
s_mul_i32 s76, s78, s[sgprStrideC1J]               // Free1
s_add_u32 s74, s74, s76                            // Free1
s_addc_u32 s75, s75, s77                           // Free1
s_sub_u32 s78, s[sgprSizesFree+2], 1               // Free2
s_mul_i32 s78, s78, s[sgprGSUSumIdx]               // Free2
s_mul_hi_u32 s77, s78, s[sgprStrideCK]             // Free2
s_mul_i32 s76, s78, s[sgprStrideCK]                // Free2
s_add_u32 s74, s74, s76                            // Free2
s_addc_u32 s75, s75, s77                           // Free2
s_lshl_b64 s[74:75], s[74:75], 2                   // scale by bpe
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // add lo GSU offset to SRD
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], s75       // add hi GSU offset to SRD
label_GSU_2:
.set sgprGSULog2BpeC, UNDEF

/* initC: remove ValuC vgpr buffer [0...0) from pool */

/* initC: remove acc vgpr buffer [0...32) from pool */

/* initC: remove ValuA/B vgpr buffer [0...52) from pool */
v_accvgpr_write acc0, 0x0                          // initC
v_accvgpr_write acc1, 0x0                          // initC
v_accvgpr_write acc2, 0x0                          // initC
v_accvgpr_write acc3, 0x0                          // initC
v_accvgpr_write acc4, 0x0                          // initC
v_accvgpr_write acc5, 0x0                          // initC
v_accvgpr_write acc6, 0x0                          // initC
v_accvgpr_write acc7, 0x0                          // initC
v_accvgpr_write acc8, 0x0                          // initC
v_accvgpr_write acc9, 0x0                          // initC
v_accvgpr_write acc10, 0x0                         // initC
v_accvgpr_write acc11, 0x0                         // initC
v_accvgpr_write acc12, 0x0                         // initC
v_accvgpr_write acc13, 0x0                         // initC
v_accvgpr_write acc14, 0x0                         // initC
v_accvgpr_write acc15, 0x0                         // initC
v_accvgpr_write acc16, 0x0                         // initC
v_accvgpr_write acc17, 0x0                         // initC
v_accvgpr_write acc18, 0x0                         // initC
v_accvgpr_write acc19, 0x0                         // initC
v_accvgpr_write acc20, 0x0                         // initC
v_accvgpr_write acc21, 0x0                         // initC
v_accvgpr_write acc22, 0x0                         // initC
v_accvgpr_write acc23, 0x0                         // initC
v_accvgpr_write acc24, 0x0                         // initC
v_accvgpr_write acc25, 0x0                         // initC
v_accvgpr_write acc26, 0x0                         // initC
v_accvgpr_write acc27, 0x0                         // initC
v_accvgpr_write acc28, 0x0                         // initC
v_accvgpr_write acc29, 0x0                         // initC
v_accvgpr_write acc30, 0x0                         // initC
v_accvgpr_write acc31, 0x0                         // initC
s_cmp_eq_u32 s[sgprLoopCounterL], 0                // at last iteration?

/* after InitC, skip to end of prefetch last iter if numIter==0 */
s_cbranch_scc0 label_NoBranch_E5R3HKL9ACFI80UN_0   // Only branch on scc1
s_getpc_b64 s[74:75]                               // addr of next instr
s_add_i32 s76, label_PrefetchGlobalLastIterEnd, 0x4 // target branch offset
s_add_u32 s74, s74, s76                            // add target branch offset
s_addc_u32 s75, s75, 0                             // add high and carry
s_setpc_b64 s[74:75]                               // branch to label_PrefetchGlobalLastIterEnd
label_NoBranch_E5R3HKL9ACFI80UN_0:
s_waitcnt vmcnt(0)                                 // 8wait for global read

/* local write a */
v_mov_b64 v[vgprTmpG2LAx16+0:vgprTmpG2LAx16+1], v[vgprG2LA+2:vgprG2LA+3]
v_mov_b64 v[vgprTmpG2LAx16+2:vgprTmpG2LAx16+3], v[vgprG2LA+6:vgprG2LA+7]
v_mov_b64 v[vgprTmpG2LAx16+4:vgprTmpG2LAx16+5], v[vgprG2LA+10:vgprG2LA+11]
v_mov_b64 v[vgprTmpG2LAx16+6:vgprTmpG2LAx16+7], v[vgprG2LA+14:vgprG2LA+15]
v_mov_b64 v[vgprTmpG2LAx16+8:vgprTmpG2LAx16+9], v[vgprG2LA+18:vgprG2LA+19]
v_mov_b64 v[vgprTmpG2LAx16+10:vgprTmpG2LAx16+11], v[vgprG2LA+22:vgprG2LA+23]
v_mov_b64 v[vgprTmpG2LAx16+12:vgprTmpG2LAx16+13], v[vgprG2LA+26:vgprG2LA+27]
v_mov_b64 v[vgprTmpG2LAx16+14:vgprTmpG2LAx16+15], v[vgprG2LA+30:vgprG2LA+31]

/* local write b */
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0

/* local write swap b */
v_xor_b32 v[vgprLocalWriteAddrB+0], 0x800, v[vgprLocalWriteAddrB+0] // swap Red Blk


s_cmp_eq_u32 s[sgprLoopCounterL], 0x1              // PGR=2 but only 1 loop
s_cbranch_scc1 label_skipPGR2_0                    // PGR=2 but only 1 loop
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LA+2:vgprG2LA+2+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0
buffer_load_dwordx2 v[vgprG2LA+6:vgprG2LA+6+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0
buffer_load_dwordx2 v[vgprG2LA+10:vgprG2LA+10+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0
buffer_load_dwordx2 v[vgprG2LA+14:vgprG2LA+14+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0
buffer_load_dwordx2 v[vgprG2LA+18:vgprG2LA+18+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0
buffer_load_dwordx2 v[vgprG2LA+22:vgprG2LA+22+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0
buffer_load_dwordx2 v[vgprG2LA+26:vgprG2LA+26+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0
buffer_load_dwordx2 v[vgprG2LA+30:vgprG2LA+30+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0
label_skipPGR2_0:
s_waitcnt lgkmcnt(0)                               // 0prefetch wait for local write
// Skip force waitcnt0
s_barrier

/* local read prefetch a */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

/* local read prefetch b */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc a */
/* N/A, lro->8192 */
/* self.localReadDoCntA 1 self.localReadDoCntB 1 */

/* local read inc b */
/* N/A, lro->16 */
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
/* Unrolled Loop 1/1 - Begin              */
/******************************************/

/* Begin Each Unroll: Check VGPR.checkin for INT8 LW */

/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:5, lwStartMfmaIndex:5, lwEndMfmaIndex:5  */
/*  numMfmaForLR:7, syncPlrMfmaIndex:8  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s74, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
s_cselect_b32 s75, s[sgprWrapUA+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s74, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s75, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
buffer_load_dword v[vgprG2LB+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // G -> Reg 0_0_0_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+0:vgprTmpG2LAx16+1], v[vgprG2LA+2:vgprG2LA+3]
buffer_load_dwordx2 v[vgprG2LA+2:vgprG2LA+2+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // G -> Reg 0_0_0_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+9+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+9+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+2:vgprTmpG2LAx16+3], v[vgprG2LA+6:vgprG2LA+7]
buffer_load_dwordx2 v[vgprG2LA+6:vgprG2LA+6+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // G -> Reg 0_0_1_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+4:vgprTmpG2LAx16+5], v[vgprG2LA+10:vgprG2LA+11]
buffer_load_dwordx2 v[vgprG2LA+10:vgprG2LA+10+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // G -> Reg 0_0_2_0

v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+6:vgprTmpG2LAx16+7], v[vgprG2LA+14:vgprG2LA+15]
buffer_load_dwordx2 v[vgprG2LA+14:vgprG2LA+14+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // G -> Reg 0_0_3_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+11+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+11+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0

v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+10+0+0:vgprValuA_X0_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+8:vgprTmpG2LAx16+9], v[vgprG2LA+18:vgprG2LA+19]
buffer_load_dwordx2 v[vgprG2LA+18:vgprG2LA+18+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // G -> Reg 0_0_4_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+10:vgprTmpG2LAx16+11], v[vgprG2LA+22:vgprG2LA+23]
buffer_load_dwordx2 v[vgprG2LA+22:vgprG2LA+22+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // G -> Reg 0_0_5_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+13+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+13+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+15+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+15+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16


/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+14+0+0:vgprValuA_X0_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]

/* iter 1 */
/*  grEndMfmaIndex:5, lwStartMfmaIndex:5, lwEndMfmaIndex:5  */
/*  numMfmaForLR:7, syncPlrMfmaIndex:8  */
/*  mfmaIndex:8  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+12:vgprTmpG2LAx16+13], v[vgprG2LA+26:vgprG2LA+27]
buffer_load_dwordx2 v[vgprG2LA+26:vgprG2LA+26+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // G -> Reg 0_0_6_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */

s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+14:vgprTmpG2LAx16+15], v[vgprG2LA+30:vgprG2LA+31]
buffer_load_dwordx2 v[vgprG2LA+30:vgprG2LA+30+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // G -> Reg 0_0_7_0

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:10  */

/* local write swap offsets b */
v_xor_b32 v[vgprLocalWriteAddrB+0], 0x800, v[vgprLocalWriteAddrB+0] // swap Red Blk
/* local read swap offsets b */
v_xor_b32 v[vgprLocalReadAddrB], 0x800, v[vgprLocalReadAddrB] // swap Red Blk
s_waitcnt lgkmcnt(0)                               // 3wait for local write
s_barrier
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:11  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:12  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+8+0+0:vgprValuA_X1_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:13  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+10+0+0:vgprValuA_X1_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:14  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+12+0+0:vgprValuA_X1_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:15  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+14+0+0:vgprValuA_X1_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=1 */

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

/* iter 0 (reset local read pointers iteration)  (swap and reset local write pointers iteration)  (swap local read pointers iteration)  */
/*  grEndMfmaIndex:5, lwStartMfmaIndex:5, lwEndMfmaIndex:5  */
/*  numMfmaForLR:7, syncPlrMfmaIndex:8  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+9+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+9+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+11+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+11+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+13+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+13+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+15+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+15+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

/* global read inc A loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
s_cselect_b32 s74, s[sgprWrapUA+0], s[sgprGlobalReadIncsA+0] // incLower <- ?
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
s_cselect_b32 s75, s[sgprWrapUA+1], 0              // incUpper <- ?
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s74        // gra SRD += inc(lower)
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32

/* global read inc B loopL */
s_cmp_eq_u32 s[sgprLoopCounterL], s[sgprStaggerUIter] // Is this the wrapIter?
s_cselect_b32 s74, s[sgprWrapUB+0], s[sgprGlobalReadIncsB+0] // incLower <- ?
s_cselect_b32 s75, s[sgprWrapUB+1], 0              // incUpper <- ?
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32
s_waitcnt vmcnt(8)                                 // wait for global read before writing to local
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0
s_waitcnt vmcnt(7)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+0:vgprTmpG2LAx16+1], v[vgprG2LA+2:vgprG2LA+3]
s_waitcnt vmcnt(6)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+2:vgprTmpG2LAx16+3], v[vgprG2LA+6:vgprG2LA+7]
s_waitcnt vmcnt(5)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+4:vgprTmpG2LAx16+5], v[vgprG2LA+10:vgprG2LA+11]
s_waitcnt vmcnt(4)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+6:vgprTmpG2LAx16+7], v[vgprG2LA+14:vgprG2LA+15]
s_waitcnt vmcnt(3)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+8:vgprTmpG2LAx16+9], v[vgprG2LA+18:vgprG2LA+19]
s_waitcnt vmcnt(2)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+10:vgprTmpG2LAx16+11], v[vgprG2LA+22:vgprG2LA+23]
s_waitcnt vmcnt(1)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+12:vgprTmpG2LAx16+13], v[vgprG2LA+26:vgprG2LA+27]
s_waitcnt vmcnt(0)                                 // wait for global read before writing to local
v_mov_b64 v[vgprTmpG2LAx16+14:vgprTmpG2LAx16+15], v[vgprG2LA+30:vgprG2LA+31]

/* local write swap offsets b */
v_xor_b32 v[vgprLocalWriteAddrB+0], 0x800, v[vgprLocalWriteAddrB+0] // swap Red Blk
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+10+0+0:vgprValuA_X0_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */

/* local read swap offsets b */
v_xor_b32 v[vgprLocalReadAddrB], 0x800, v[vgprLocalReadAddrB] // swap Red Blk

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+14+0+0:vgprValuA_X0_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=1 */

/* iter 1 */
/*  grEndMfmaIndex:5, lwStartMfmaIndex:5, lwEndMfmaIndex:5  */
/*  numMfmaForLR:7, syncPlrMfmaIndex:8  */
/*  mfmaIndex:8  */
s_waitcnt lgkmcnt(0)                               // 3wait for local write
// Skip force waitcnt0
s_barrier
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:10  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:11  */
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:12  */
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+8+0+0:vgprValuA_X1_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:13  */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+10+0+0:vgprValuA_X1_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:14  */
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+12+0+0:vgprValuA_X1_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:15  */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+14+0+0:vgprValuA_X1_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/* numPrefetchIter=1 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=1 */
label_toPGR1_0:
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc0 label_GSU_3                         // branch if GSU != 1
label_GSU_3:

/******************************************/
/* Ord. NoLoadLoop - Begin                */
/******************************************/

/* iter 0 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:5, lwEndMfmaIndex:5  */
/*  numMfmaForLR:7, syncPlrMfmaIndex:8  */
/*  mfmaIndex:0  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:1  */

v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+8+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+8+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+9+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+9+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+10+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+10+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+11+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+11+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+12+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+12+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+13+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+13+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+14+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+14+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+15+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+15+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X1_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X1_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:2  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:3  */
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:4  */
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:5  */
ds_read_b64 v[vgprValuB_X1_I0+0:vgprValuB_X1_I0+0+1], v[vgprLocalReadAddrB] offset:32 // L -> Reg lro=16 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=1 iui=0
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+10+0+0:vgprValuA_X0_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:6  */
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:7  */
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+14+0+0:vgprValuA_X0_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/* numPrefetchIter=0 */
/* dataAtIterA=-1 numReadsIterA=1 skipReadsIterA=1 readsPerIterA=4 */
/* dataAtIterB=-1 numReadsIterB=1 skipReadsIterB=1 readsPerIterB=1 */

/* iter 1 (last unrolled loop) */
/*  grEndMfmaIndex:0, lwStartMfmaIndex:5, lwEndMfmaIndex:5  */
/*  numMfmaForLR:7, syncPlrMfmaIndex:8  */
/*  mfmaIndex:8  */
s_waitcnt lgkmcnt(0)                               // wait for prior local read local write old=0, new=0 newLW=0 newLR=0
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+0+0+0:vgprValuA_X1_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
/*  mfmaIndex:9  */
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+2+0+0:vgprValuA_X1_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
/*  mfmaIndex:10  */
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+4+0+0:vgprValuA_X1_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
/*  mfmaIndex:11  */
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+6+0+0:vgprValuA_X1_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
/*  mfmaIndex:12  */
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+8+0+0:vgprValuA_X1_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
/*  mfmaIndex:13  */
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+10+0+0:vgprValuA_X1_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
/*  mfmaIndex:14  */
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+12+0+0:vgprValuA_X1_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
/*  mfmaIndex:15  */
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X1_I0+0+0+0:vgprValuB_X1_I0+0+0+0+1], v[vgprValuA_X1_I0+14+0+0:vgprValuA_X1_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]
/* numPrefetchIter=0 */
/* dataAtIterA=0 numReadsIterA=1 skipReadsIterA=0 readsPerIterA=4 */
/* dataAtIterB=0 numReadsIterB=1 skipReadsIterB=0 readsPerIterB=1 */
label_PrefetchGlobalLastIterEnd:

/******************************************/
/* Tail Loop                              */
/******************************************/

/* Tail: add ValuA/B vgpr buffer [0...52) to pool */

/* local write reset offsets b */
v_and_b32 v[vgprLocalWriteAddrB], 0xf007ff, v[vgprLocalWriteAddrB] // reset to Red

// numIterL = (((sizeL % LOCAL_DEPTHU) + LOCAL_SPLITU - 1) / LOCAL_SPLITU)
s_and_b32 s[sgprLoopCounterL], 31, s[sgprSizesSum+0] // s[sgprLoopCounterL] = s[sgprSizesSum+0] % 32
s_cmp_lg_u32 s[sgprGSUSumIdx], s[sgprGSUSumIdx+1]  // gsuSumIdx == numIterPerWgRemainder
s_cmov_b32 s[sgprLoopCounterL], 0x0                // numIter=0 if gsuSimIdx!=remainder
s_cmp_eq_u32 s[sgprLoopCounterL], 0x0              // numIterL == 0
s_mov_b32 s[sgprOrigLoopCounter], 0                // repurpose to count each localRead increment
s_cbranch_scc1 label_SkipTailLoopL                 // skip to end of tail loop b/c numIter==0

/* remove stagger offsets for tail loop */
s_sub_i32 s74, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s75, s74, s[sgprGlobalReadIncsA+0]    // start offset S in bytes
s_mul_i32 s74, s74, s[sgprGlobalReadIncsA+0]       // start offset S in bytes
s_sub_u32 s74, s74, s[sgprWrapUA]                  // S - WrapU
s_subb_u32 s75, s75, s[sgprWrapUA+1]               // S - WrapU
s_add_u32 s[sgprSrdA+0], s[sgprSrdA+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdA+1], s[sgprSrdA+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitA+0], s[sgprShadowLimitA+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitA+1], s[sgprShadowLimitA+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitA+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdA+2], s[sgprShadowLimitA+0], BufferLimit // Move shadow to real if we are within 2^32
s_sub_i32 s74, 3, s[sgprStaggerUIter]
s_mul_hi_i32 s75, s74, s[sgprGlobalReadIncsB+0]    // start offset S in bytes
s_mul_i32 s74, s74, s[sgprGlobalReadIncsB+0]       // start offset S in bytes
s_sub_u32 s74, s74, s[sgprWrapUB]                  // S - WrapU
s_subb_u32 s75, s75, s[sgprWrapUB+1]               // S - WrapU
s_add_u32 s[sgprSrdB+0], s[sgprSrdB+0], s74        // gra SRD += inc(lower)
s_addc_u32 s[sgprSrdB+1], s[sgprSrdB+1], s75       // gra SRD += inc(upper)
s_sub_u32 s[sgprShadowLimitB+0], s[sgprShadowLimitB+0], s74 // limit -= inc)
s_subb_u32 s[sgprShadowLimitB+1], s[sgprShadowLimitB+1], s75 // limit -= inc)
s_cmp_eq_u32 s[sgprShadowLimitB+1], 0              // are we within 2^32?
s_cselect_b32 s[sgprSrdB+2], s[sgprShadowLimitB+0], BufferLimit // Move shadow to real if we are within 2^32

/* Update M0 for DTLDS */

/* global read A */
/* g2l=0, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+2+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:1 // load one buffer value
/* g2l=0, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:2 // load one buffer value
/* g2l=0, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:3 // load one buffer value
/* g2l=0, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+2+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:4 // load one buffer value
/* g2l=0, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:5 // load one buffer value
/* g2l=0, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:6 // load one buffer value
/* g2l=0, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], 0 offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+2+0], v[vgprG2LA+2+0], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+2+0], v[vgprG2LA+2+0], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+2+0], v[vgprG2LA+2+0], v2      // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+2+1], v[vgprG2LA+2+1], v4      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+2+1], v[vgprG2LA+2+1], v5      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+2+1], v[vgprG2LA+2+1], v6      // pack a sub 8-bit with dest
/* g2l=4, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+6+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:0 // load one buffer value
/* g2l=4, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:1 // load one buffer value
/* g2l=4, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:2 // load one buffer value
/* g2l=4, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:3 // load one buffer value
/* g2l=4, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+6+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:4 // load one buffer value
/* g2l=4, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:5 // load one buffer value
/* g2l=4, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:6 // load one buffer value
/* g2l=4, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+0] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+6+0], v[vgprG2LA+6+0], v0      // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+6+0], v[vgprG2LA+6+0], v1      // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+6+0], v[vgprG2LA+6+0], v2      // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+6+1], v[vgprG2LA+6+1], v4      // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+6+1], v[vgprG2LA+6+1], v5      // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+6+1], v[vgprG2LA+6+1], v6      // pack a sub 8-bit with dest
/* g2l=8, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+10+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:0 // load one buffer value
/* g2l=8, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:1 // load one buffer value
/* g2l=8, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:2 // load one buffer value
/* g2l=8, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:3 // load one buffer value
/* g2l=8, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+10+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:4 // load one buffer value
/* g2l=8, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:5 // load one buffer value
/* g2l=8, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:6 // load one buffer value
/* g2l=8, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+1] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+10+0], v[vgprG2LA+10+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+10+0], v[vgprG2LA+10+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+10+0], v[vgprG2LA+10+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+10+1], v[vgprG2LA+10+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+10+1], v[vgprG2LA+10+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+10+1], v[vgprG2LA+10+1], v6    // pack a sub 8-bit with dest
/* g2l=12, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+14+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:0 // load one buffer value
/* g2l=12, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:1 // load one buffer value
/* g2l=12, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:2 // load one buffer value
/* g2l=12, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:3 // load one buffer value
/* g2l=12, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+14+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:4 // load one buffer value
/* g2l=12, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:5 // load one buffer value
/* g2l=12, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:6 // load one buffer value
/* g2l=12, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+2] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+14+0], v[vgprG2LA+14+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+14+0], v[vgprG2LA+14+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+14+0], v[vgprG2LA+14+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+14+1], v[vgprG2LA+14+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+14+1], v[vgprG2LA+14+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+14+1], v[vgprG2LA+14+1], v6    // pack a sub 8-bit with dest
/* g2l=16, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+18+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:0 // load one buffer value
/* g2l=16, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:1 // load one buffer value
/* g2l=16, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:2 // load one buffer value
/* g2l=16, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:3 // load one buffer value
/* g2l=16, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+18+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:4 // load one buffer value
/* g2l=16, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:5 // load one buffer value
/* g2l=16, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:6 // load one buffer value
/* g2l=16, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+3] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+18+0], v[vgprG2LA+18+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+18+0], v[vgprG2LA+18+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+18+0], v[vgprG2LA+18+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+18+1], v[vgprG2LA+18+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+18+1], v[vgprG2LA+18+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+18+1], v[vgprG2LA+18+1], v6    // pack a sub 8-bit with dest
/* g2l=20, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+22+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:0 // load one buffer value
/* g2l=20, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:1 // load one buffer value
/* g2l=20, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:2 // load one buffer value
/* g2l=20, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:3 // load one buffer value
/* g2l=20, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+22+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:4 // load one buffer value
/* g2l=20, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:5 // load one buffer value
/* g2l=20, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:6 // load one buffer value
/* g2l=20, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+4] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+22+0], v[vgprG2LA+22+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+22+0], v[vgprG2LA+22+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+22+0], v[vgprG2LA+22+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+22+1], v[vgprG2LA+22+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+22+1], v[vgprG2LA+22+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+22+1], v[vgprG2LA+22+1], v6    // pack a sub 8-bit with dest
/* g2l=24, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+26+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:0 // load one buffer value
/* g2l=24, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:1 // load one buffer value
/* g2l=24, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:2 // load one buffer value
/* g2l=24, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:3 // load one buffer value
/* g2l=24, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+26+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:4 // load one buffer value
/* g2l=24, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:5 // load one buffer value
/* g2l=24, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:6 // load one buffer value
/* g2l=24, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+5] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+26+0], v[vgprG2LA+26+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+26+0], v[vgprG2LA+26+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+26+0], v[vgprG2LA+26+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+26+1], v[vgprG2LA+26+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+26+1], v[vgprG2LA+26+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+26+1], v[vgprG2LA+26+1], v6    // pack a sub 8-bit with dest
/* g2l=28, load component 0 */
buffer_load_ubyte_d16 v[vgprG2LA+30+0], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:0 // load one buffer value
/* g2l=28, load component 1 */
buffer_load_ubyte_d16 v0, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:1 // load one buffer value
/* g2l=28, load component 2 */
buffer_load_ubyte_d16_hi v1, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:2 // load one buffer value
/* g2l=28, load component 3 */
buffer_load_ubyte_d16_hi v2, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:3 // load one buffer value
/* g2l=28, load component 4 */
buffer_load_ubyte_d16 v[vgprG2LA+30+1], v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:4 // load one buffer value
/* g2l=28, load component 5 */
buffer_load_ubyte_d16 v4, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:5 // load one buffer value
/* g2l=28, load component 6 */
buffer_load_ubyte_d16_hi v5, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:6 // load one buffer value
/* g2l=28, load component 7 */
buffer_load_ubyte_d16_hi v6, v[vgprGlobalReadOffsetA+0], s[sgprSrdA:sgprSrdA+3], s[sgprScalarGlobalReadOffsetA+6] offen offset:7 // load one buffer value
s_waitcnt vmcnt(6)
v_lshlrev_b32 v0, 0x8, v0                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+30+0], v[vgprG2LA+30+0], v0    // pack a sub 8-bit with dest
s_waitcnt vmcnt(5)
v_or_b32 v[vgprG2LA+30+0], v[vgprG2LA+30+0], v1    // pack a sub 8-bit with dest
s_waitcnt vmcnt(4)
v_lshlrev_b32 v2, 0x8, v2                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+30+0], v[vgprG2LA+30+0], v2    // pack a sub 8-bit with dest
s_waitcnt vmcnt(2)
v_lshlrev_b32 v4, 0x8, v4                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+30+1], v[vgprG2LA+30+1], v4    // pack a sub 8-bit with dest
s_waitcnt vmcnt(1)
v_or_b32 v[vgprG2LA+30+1], v[vgprG2LA+30+1], v5    // pack a sub 8-bit with dest
s_waitcnt vmcnt(0)
v_lshlrev_b32 v6, 0x8, v6                          // shift left to higher 8 bits
v_or_b32 v[vgprG2LA+30+1], v[vgprG2LA+30+1], v6    // pack a sub 8-bit with dest

/* Update M0 for DTLDS */

/* global read B */
/* g2l=0, load component 0 */
buffer_load_short_d16 v[vgprG2LB+0+0], v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:0 // load one buffer value
/* g2l=0, load component 1 */
buffer_load_short_d16_hi v0, v[vgprGlobalReadOffsetB+0], s[sgprSrdB:sgprSrdB+3], 0 offen offset:2 // load one buffer value
s_waitcnt vmcnt(0)
v_or_b32 v[vgprG2LB+0+0], v[vgprG2LB+0+0], v0      // HasEccHalf: pack
s_waitcnt vmcnt(0)                                 // 2wait for global read
// Skip force waitcnt0
s_barrier

/* local write a */
v_mov_b64 v[vgprTmpG2LAx16+0:vgprTmpG2LAx16+1], v[vgprG2LA+2:vgprG2LA+3]
v_mov_b64 v[vgprTmpG2LAx16+2:vgprTmpG2LAx16+3], v[vgprG2LA+6:vgprG2LA+7]
v_mov_b64 v[vgprTmpG2LAx16+4:vgprTmpG2LAx16+5], v[vgprG2LA+10:vgprG2LA+11]
v_mov_b64 v[vgprTmpG2LAx16+6:vgprTmpG2LAx16+7], v[vgprG2LA+14:vgprG2LA+15]
v_mov_b64 v[vgprTmpG2LAx16+8:vgprTmpG2LAx16+9], v[vgprG2LA+18:vgprG2LA+19]
v_mov_b64 v[vgprTmpG2LAx16+10:vgprTmpG2LAx16+11], v[vgprG2LA+22:vgprG2LA+23]
v_mov_b64 v[vgprTmpG2LAx16+12:vgprTmpG2LAx16+13], v[vgprG2LA+26:vgprG2LA+27]
v_mov_b64 v[vgprTmpG2LAx16+14:vgprTmpG2LAx16+15], v[vgprG2LA+30:vgprG2LA+31]

/* local write b */
ds_write_b32 v[vgprLocalWriteAddrB], v[vgprG2LB+0] offset:0 // lwoB_0_0_0_0 = (0*LSCB)*(MT1J+PAD) + (0*LSPB) = 0

/* Recalc local read offsets */
s_waitcnt lgkmcnt(0)                               // 5wait for local write
// Skip force waitcnt0
s_barrier

/* local read reset offsets a */

/* local read reset offsets b */

/* localReadResetOffsets */
/* handled internally */
v_and_b32 v[vgprLocalReadAddrB], 0x7ff, v[vgprLocalReadAddrB] // reset Red,Blk -> Red

/* local read init pointers a */

/* localReadInitPointers */

/* local read init pointers b */

/* localReadInitPointers */

/* tail loop: macs */
label_TailLoopBeginL:

/* Tail: remove ValuA/B vgpr buffer [0...52) from pool */

/* Tail: add address/G2L vgpr [52...91) to pool */

/* local read a */
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+0+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+1+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+2+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+3+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+0], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+0], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+4+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+5+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_0 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_0 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+0+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+2+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+6+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+4+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+6+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_0 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+8+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+10+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16
v_cvt_pk_f32_fp8 v[vgprTmpCVTx2+0:vgprTmpCVTx2+1], v[vgprTmpG2LAx16+7+0] src0_sel:WORD_1 // convert to F32
v_cvt_f16_f32 v[vgprValuA_X0_I0+12+1], v[vgprTmpCVTx2+0] dst_sel:WORD_1 // Convert to FP16
v_cvt_f16_f32 v[vgprValuA_X0_I0+14+1], v[vgprTmpCVTx2+1] dst_sel:WORD_1 // Convert to FP16

v_mov_b64 v[vgprTmpG2LAx16+0:vgprTmpG2LAx16+1], v[vgprTmpG2LAx16+8:vgprTmpG2LAx16+9]
v_mov_b64 v[vgprTmpG2LAx16+2:vgprTmpG2LAx16+3], v[vgprTmpG2LAx16+10:vgprTmpG2LAx16+11]
v_mov_b64 v[vgprTmpG2LAx16+4:vgprTmpG2LAx16+5], v[vgprTmpG2LAx16+12:vgprTmpG2LAx16+13]
v_mov_b64 v[vgprTmpG2LAx16+6:vgprTmpG2LAx16+7], v[vgprTmpG2LAx16+14:vgprTmpG2LAx16+15]

/* local read b */
ds_read_b64 v[vgprValuB_X0_I0+0:vgprValuB_X0_I0+0+1], v[vgprLocalReadAddrB] offset:0 // L -> Reg lro=0 swapByteOffset=0 ti=16 vIdx=0 eIdx=0 rIdx=0 oIdx=0 buffer=0 iui=0

/* local read inc b */
s_mov_b32 s5, 0x20                                 // inc
v_add_co_u32 v[vgprLocalReadAddrB], vcc, s5, v[vgprLocalReadAddrB] // lrB += 32 (LSU*bpe)
s_waitcnt lgkmcnt(0)                               // 4wait for local read
v_and_b32 v52, 63, v[vgprSerial]                   // v52 = v[vgprSerial] % 64
v_lshrrev_b32 v52, 4, v52                          // v52 = v52 / 16
v_lshlrev_b32 v52, 0x2, v52                        // v52 = v52 * 4
v_cmp_ge_i32 s[74:75], v52, s[sgprLoopCounterL]    // check K index >= Size L
v_cndmask_b32 v[vgprValuA_X0_I0+0+0], v[vgprValuA_X0_I0+0+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+0], v[vgprValuA_X0_I0+2+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+4+0], v[vgprValuA_X0_I0+4+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+6+0], v[vgprValuA_X0_I0+6+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+8+0], v[vgprValuA_X0_I0+8+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+10+0], v[vgprValuA_X0_I0+10+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+12+0], v[vgprValuA_X0_I0+12+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+14+0], v[vgprValuA_X0_I0+14+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+0+1], v[vgprValuA_X0_I0+0+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+2+1], v[vgprValuA_X0_I0+2+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+4+1], v[vgprValuA_X0_I0+4+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+6+1], v[vgprValuA_X0_I0+6+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+8+1], v[vgprValuA_X0_I0+8+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+10+1], v[vgprValuA_X0_I0+10+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+12+1], v[vgprValuA_X0_I0+12+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuA_X0_I0+14+1], v[vgprValuA_X0_I0+14+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+0], v[vgprValuB_X0_I0+0+0], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_cndmask_b32 v[vgprValuB_X0_I0+0+1], v[vgprValuB_X0_I0+0+1], 0x0, s[74:75] // set 0 if K_idx >= sizeL
v_sub_u32 v52, s[sgprLoopCounterL], v52            // get distance between size and k index
v_cmp_lt_i32 s[74:75], v52, 4                      // set partial 0 if distance less than input per thread
s_and_b32 s76, s[sgprLoopCounterL], 3              // get inputs for edge thread
s_sub_u32 s76, 4, s76                              // use shift to fill 0 for outside element
s_lshl_b32 s76, s76, 4                             // use shift to fill 0 for outside element
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+0], v[vgprValuA_X0_I0+0+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+0], v[vgprValuA_X0_I0+2+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+2+0+0+1], v[vgprValuA_X0_I0+2+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+0], v[vgprValuA_X0_I0+4+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+4+0+0+1], v[vgprValuA_X0_I0+4+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+0], v[vgprValuA_X0_I0+6+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+6+0+0+1], v[vgprValuA_X0_I0+6+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+8+0+0+0], v[vgprValuA_X0_I0+8+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+8+0+0+1], v[vgprValuA_X0_I0+8+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+10+0+0:vgprValuA_X0_I0+10+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+10+0+0+0], v[vgprValuA_X0_I0+10+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+10+0+0+1], v[vgprValuA_X0_I0+10+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+12+0+0+0], v[vgprValuA_X0_I0+12+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+12+0+0+1], v[vgprValuA_X0_I0+12+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuA_X0_I0+14+0+0:vgprValuA_X0_I0+14+0+0+1]
v_cndmask_b32 v[vgprValuA_X0_I0+14+0+0+0], v[vgprValuA_X0_I0+14+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuA_X0_I0+14+0+0+1], v[vgprValuA_X0_I0+14+0+0+1], v55, s[74:75]
v_lshlrev_b64 v[54:55], s76, v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+0], v[vgprValuB_X0_I0+0+0+0+0], v54, s[74:75]
v_cndmask_b32 v[vgprValuB_X0_I0+0+0+0+1], v[vgprValuB_X0_I0+0+0+0+1], v55, s[74:75]
s_nop 1
v_mfma_f32_16x16x16_f16 acc[0:3], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+0+0+0:vgprValuA_X0_I0+0+0+0+1], acc[0:3] // left value = acc[0+0:3+0]
v_mfma_f32_16x16x16_f16 acc[4:7], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+2+0+0:vgprValuA_X0_I0+2+0+0+1], acc[4:7] // left value = acc[4+0:7+0]
v_mfma_f32_16x16x16_f16 acc[8:11], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+4+0+0:vgprValuA_X0_I0+4+0+0+1], acc[8:11] // left value = acc[8+0:11+0]
v_mfma_f32_16x16x16_f16 acc[12:15], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+6+0+0:vgprValuA_X0_I0+6+0+0+1], acc[12:15] // left value = acc[12+0:15+0]
v_mfma_f32_16x16x16_f16 acc[16:19], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+8+0+0:vgprValuA_X0_I0+8+0+0+1], acc[16:19] // left value = acc[16+0:19+0]
v_mfma_f32_16x16x16_f16 acc[20:23], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+10+0+0:vgprValuA_X0_I0+10+0+0+1], acc[20:23] // left value = acc[20+0:23+0]
v_mfma_f32_16x16x16_f16 acc[24:27], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+12+0+0:vgprValuA_X0_I0+12+0+0+1], acc[24:27] // left value = acc[24+0:27+0]
v_mfma_f32_16x16x16_f16 acc[28:31], v[vgprValuB_X0_I0+0+0+0:vgprValuB_X0_I0+0+0+0+1], v[vgprValuA_X0_I0+14+0+0:vgprValuA_X0_I0+14+0+0+1], acc[28:31] // left value = acc[28+0:31+0]

/* closeLoop loopL finalLoop=1 tailLoop=1 */
s_sub_i32 s[sgprLoopCounterL], s[sgprLoopCounterL], 0x10 // dec counterL (tailLoop)
s_add_u32 s[sgprOrigLoopCounter], s[sgprOrigLoopCounter], 0x10 // inc counterL
s_cmp_le_i32 s[sgprLoopCounterL], 0x0              // counterL<=0
s_cbranch_scc0 label_TailLoopBeginL                // restart LoopL
label_TailLoopEndL:
label_SkipTailLoopL:

/* Tail: remove address/G2L [52...91) from pool */
label_Summation_End_NR2T6VK93QUY2YX6_0:
/* endSummation: add vgpr [0...91) to pool */
.set sgprStaggerU, UNDEF
.set sgprSrdA, UNDEF
.set sgprSrdB, UNDEF
.set sgprShadowLimitB, UNDEF
.set sgprStaggerUIter, UNDEF
.set sgprWrapUA, UNDEF
.set sgprWrapUB, UNDEF
.set sgprGlobalReadIncsA, UNDEF
.set sgprGlobalReadIncsB, UNDEF
.set sgprPackKForV0, UNDEF
.set sgprPackKForV1, UNDEF
.set sgprScalarGlobalReadOffsetA, UNDEF
/* load store sgprs */
.set sgprAddressScaleA, 48
.set sgprAddressScaleB, 50
.set sgprAddressScaleAlphaVec, 52
.set sgprAddressBias, 54
.set sgprBiasType, 56
.set sgprBiasStride, 57
.set sgpractivationAlpha, 58
.set sgpractivationBeta, 59
.set sgprActivationType, 60
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc0 label_GSU_4                         // branch if GSU != 1
s_load_dwordx8 s[48:55], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x5c
s_load_dwordx4 s[56:59], s[sgprKernArgAddress:sgprKernArgAddress+1], 0x7c
s_load_dword s60, s[sgprKernArgAddress:sgprKernArgAddress+1], 0x8c
label_GSU_4:
.set sgprSrdScaleAlphaVec, 64
.set sgprSrdBias, 68

/* Mapping of Acc register -> C Vgpr register */

/* not-LocalSplitU: global write indices */
/* computeStoreVgprs */
v_lshrrev_b32 v4, 6, v[vgprSerial]                 // v4 = v[vgprSerial] / 64
v_lshrrev_b32 v5, 2, v4                            // v5 = v4 / 4
v_mul_lo_u32 v5, 0x10, v5                          // wave coordination offset 1
v_and_b32 v1, 63, v[vgprSerial]                    // v1 = v[vgprSerial] % 64
v_lshrrev_b32 v1, 4, v1                            // v1 = v1 / 16
v_lshlrev_b32 v1, 0x2, v1                          // thread0 * continuous_output
v_add_lshl_u32 v1, v5, v1, 0                       // coordination 1 = vwB *(wave_id1 + tid1)
v_mul_lo_u32 v2, v1, s[sgprStrideC1J]              //  offset 1
v_mul_lo_u32 v3, v1, s[sgprStrideD1J]              //  offset 1
v_and_b32 v0, 3, v4                                // v0 = v4 % 4
v_mul_lo_u32 v0, 0x10, v0                          // wave coordination offset 0
v_and_b32 v5, 15, v[vgprSerial]                    // v5 = v[vgprSerial] % 16
v_add_lshl_u32 v0, v5, v0, 3                       // coordination 0 = vwA * (wave_id0 + tid0)
s_mul_i32 s5, 512, s[sgprWorkGroup0]               // wgp0 * MT0
v_add_u32 v0, s5, v0                               // coord 0 = (tid0/MI_m)*4 + waveG0*MIB_m + MT0*SG0
s_mul_i32 s5, 16, s[sgprWorkGroup1]                // wgp1 * MT1
v_add_u32 v1, s5, v1                               // coord 1 = (tid0%MI_m) + waveG1*MIB_n + MT1*SG1

/* not-LocalSplitU: global write */

/******************************************/
/* Global Write Elements                  */
/******************************************/
s_waitcnt lgkmcnt(0)                               // wait for 52 bytes of kern args.
s_cmp_eq_u32 s[sgprGSU], 1                         // GSU == 1 ?
s_cbranch_scc1 label_GSU_5                         // branch if GSU == 1
s_and_b32 s72, 511, s[sgprSizeI]                   // s72 = s[sgprSizeI] % 512
s_add_u32 s73, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s73                // wg0 >= nwg0-1 ?
s_cselect_b32 s72, s72, 0                          // set rMT0
s_cmpk_gt_u32 s72, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
s_and_b32 s72, 15, s[sgprSizeJ]                    // s72 = s[sgprSizeJ] % 16
s_add_u32 s73, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s73                // wg1 >= nwg1-1
s_cselect_b32 s72, s72, 0                          // set rMT1
s_cmpk_gt_u32 s72, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1                      // jump if edges required
label_GW_B0_E0:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=10 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8); (0,0,2,0:vw8); (0,0,3,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_lshl_u32 v6, v3, v0, 0x2                     // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc4            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+10], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+11], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+12], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+13], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+14], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+15], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+16], acc1           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+17], acc5           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+18], acc9           // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+19], acc13          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+20], acc17          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+21], acc21          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+22], acc25          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+23], acc29          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+24], acc2           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+25], acc6           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+26], acc10          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+27], acc14          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+28], acc18          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+29], acc22          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+30], acc26          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+31], acc30          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+32], acc3           // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+33], acc7           // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+34], acc11          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+35], acc15          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+36], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+37], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+38], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+39], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[12:15], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[16:19], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[20:23], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[24:27], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[28:31], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
s_lshl_b32 s62, s[sgprStrideD1J], 2                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s62        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[32:35], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[36:39], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_B0_E1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=8 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8); (0,0,2,0:vw8); (0,0,3,0:vw8) */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v26, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v6, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v6, v26, v6, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v7, v3, v0, 0x2                     // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v7, v26, v7, s[76:77]                // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v24, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v24, v26, v24, s[76:77]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[72:73], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[76:77], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[76:77], s[72:73], s[76:77]             // in0 && in1
v_add_lshl_u32 v25, v3, v0, 0x2                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v25, v26, v25, s[76:77]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+8], acc0            // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+9], acc4            // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+10], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+11], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+12], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+13], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+14], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+15], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+16], acc1           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+17], acc5           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+18], acc9           // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+19], acc13          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+20], acc17          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+21], acc21          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+22], acc25          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+23], acc29          // copy acc to vreg[15]
v_accvgpr_read_b32 v[vgprValuC+32], acc2           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc6           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc10          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc14          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc18          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc22          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc26          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc30          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+40], acc3           // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+41], acc7           // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+42], acc11          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+43], acc15          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+44], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+45], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+46], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+47], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0), (0, 0, 2, 0), (0, 0, 3, 0)] */

/* apply mask, calc new C and issue writes */
buffer_store_dwordx4 v[8:11], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[12:15], v6, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
buffer_store_dwordx4 v[16:19], v7, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[20:23], v7, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
buffer_store_dwordx4 v[32:35], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[36:39], v24, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
buffer_store_dwordx4 v[40:43], v25, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
buffer_store_dwordx4 v[44:47], v25, s[sgprSrdD:sgprSrdD+3], 0 offen offset:16 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End                              // jump to end
label_GW_End:
s_getpc_b64 s[72:73]                               // addr of next instr
s_add_i32 s74, label_KernelEnd, 0x4                // target branch offset
s_add_u32 s72, s72, s74                            // add target branch offset
s_addc_u32 s73, s73, 0                             // add high and carry
s_setpc_b64 s[72:73]                               // branch to label_KernelEnd
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
s_mov_b32 s[sgprSrdScaleAlphaVec+0], s[sgprAddressScaleAlphaVec+0] // init SRD base address (lower)
s_mov_b32 s[sgprSrdScaleAlphaVec+1], s[sgprAddressScaleAlphaVec+1] // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdScaleAlphaVec+3], Srd127_96     // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], 0 // s[AddressScaleAlphaVec] == 0 ?
s_cbranch_scc0 label_ScaleAlphaVecAddrValid        // branch if s[AddressScaleAlphaVec] != 0
s_mov_b32 s[sgprSrdScaleAlphaVec+2], 0
s_branch label_ScaleAlphaVecAddrValid_End
label_ScaleAlphaVecAddrValid:
s_mov_b32 s[sgprSrdScaleAlphaVec+2], s[sgprSizeI]
label_ScaleAlphaVecAddrValid_End:

s_mul_i32 s[sgprSrdScaleAlphaVec+2], 0x4, s[sgprSrdScaleAlphaVec+2] // ScaleAlphaVec scaled by BPE
s_add_u32 s61, s[sgprWorkGroup2], 0x1
s_mul_i32 s61, s[sgprBiasStride], s61              // stride * (wg+1)
s_cmp_eq_u32 s61, 0x0                              // bias stride = 0?
s_cselect_b32 s61, s[sgprSizeI], s61
s_mov_b32 s[sgprSrdBias+0], s[sgprAddressBias+0]   // init SRD base address (lower)
s_mov_b32 s[sgprSrdBias+1], s[sgprAddressBias+1]   // init SRD base address (upper) + other fields
s_mov_b32 s[sgprSrdBias+3], Srd127_96              // Set bits 127_96 in post-loop SRD
s_cmp_eq_u64 s[sgprAddressBias:sgprAddressBias+1], 0 // s[AddressBias] == 0 ?
s_cbranch_scc0 label_BiasAddrValid                 // branch if s[AddressBias] != 0
s_mov_b32 s[sgprSrdBias+2], 0
s_branch label_BiasAddrValid_End
label_BiasAddrValid:
s_mov_b32 s[sgprSrdBias+2], s61
label_BiasAddrValid_End:

label_Load_Biasf32:
s_cmpk_lg_u32 s[sgprBiasType], 0                   // BiasType != 0
s_cbranch_scc1 label_Load_Biasf16                  // Branch if true

/******************************************/
/* Read Bias to LDS                       */
/******************************************/
s_mul_i32 s[sgprSrdBias+2], 0x4, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s61, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_add_u32 v8, s61, v[vgprSerial]                   // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s61, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v8, s61, v8                              // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v8, 0x2, v8                          // Global bias address scaled by BPE
buffer_load_dword v4, v8, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // load bias
v_add_u32 v8, 1024, v8                             // add subgroup offset
buffer_load_dword v5, v8, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // load bias
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local bias address scaled by BPE
s_waitcnt vmcnt(1)                                 // wait for bias load
s_barrier                                          // Wait for all wavefronts
ds_write_b32 v8, v4 offset:0                       // store bias
v_add_u32 v8, 1024, v8                             // add subgroup offset
s_waitcnt vmcnt(0)                                 // wait for bias load
ds_write_b32 v8, v5 offset:0                       // store bias
s_branch label_Load_Bias_End                       // Branch to load bias end
label_Load_Biasf16:
s_cmpk_lg_u32 s[sgprBiasType], 4                   // BiasType != 4
s_cbranch_scc1 label_Load_Bias_End                 // Branch if true

/******************************************/
/* Read Bias to LDS                       */
/******************************************/
s_mul_i32 s[sgprSrdBias+2], 0x2, s[sgprSrdBias+2]  // scaled by BPE
s_mul_i32 s61, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_add_u32 v8, s61, v[vgprSerial]                   // coord 0 = wgp0 * MT0 + thread offset
s_mul_i32 s61, s[sgprBiasStride], s[sgprWorkGroup2] // Stride * WG
v_add_u32 v8, s61, v8                              // coord 0 = wgp0 * MT0 + thread offset + Stride * WG
v_lshlrev_b32 v8, 0x1, v8                          // Global bias address scaled by BPE
buffer_load_short_d16 v4, v8, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // load bias
v_add_u32 v8, 512, v8                              // add subgroup offset
buffer_load_short_d16 v5, v8, s[sgprSrdBias:sgprSrdBias+3], 0 offen offset:0 // load bias
v_lshlrev_b32 v8, 0x2, v[vgprSerial]               // Local bias address scaled by BPE
s_waitcnt vmcnt(1)                                 // wait for bias load
s_barrier                                          // Wait for all wavefronts
v_cvt_f32_f16 v4, v4                               // convert to FP32
ds_write_b32 v8, v4 offset:0                       // store bias
v_add_u32 v8, 1024, v8                             // add subgroup offset
s_waitcnt vmcnt(0)                                 // wait for bias load
v_cvt_f32_f16 v5, v5                               // convert to FP32
ds_write_b32 v8, v5 offset:0                       // store bias
s_branch label_Load_Bias_End                       // Branch to load bias end
label_Load_Bias_End:
v_mov_b32 v4, s[sgprAlpha]
s_waitcnt lgkmcnt(0)                               // wait for scaleAB load
v_mul_f32 v4, v4, s5
v_mul_f32 v4, v4, s47
s_nop 0                                            // 1 wait states
v_readfirstlane_b32 s[sgprAlpha], v4               // Update Alpha
s_cmpk_eq_u32 s[sgprActivationType], 1             // activationType == 1
s_cbranch_scc1 label_To_Activation_Abs_VW8         // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 2             // activationType == 2
s_cbranch_scc1 label_To_Activation_Clippedrelu_VW8 // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 3             // activationType == 3
s_cbranch_scc1 label_To_Activation_Gelu_VW8        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 4             // activationType == 4
s_cbranch_scc1 label_To_Activation_Leakyrelu_VW8   // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 5             // activationType == 5
s_cbranch_scc1 label_To_Activation_Relu_VW8        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 6             // activationType == 6
s_cbranch_scc1 label_To_Activation_Sigmoid_VW8     // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 7             // activationType == 7
s_cbranch_scc1 label_To_Activation_Tanh_VW8        // Branch if true
s_cmpk_eq_u32 s[sgprActivationType], 9             // activationType == 9
s_cbranch_scc1 label_To_Activation_Geluscaling_VW8 // Branch if true
label_To_Activation_None_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_None_VW8, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Abs_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Abs_VW8, 0x4        // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Clippedrelu_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Clippedrelu_VW8, 0x4 // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Gelu_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Gelu_VW8, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Leakyrelu_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Leakyrelu_VW8, 0x4  // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Relu_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Relu_VW8, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Sigmoid_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Sigmoid_VW8, 0x4    // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Tanh_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Tanh_VW8, 0x4       // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_To_Activation_Geluscaling_VW8:
s_getpc_b64 s[62:63]                               // addr of next instr
s_add_i32 s5, label_Activation_Geluscaling_VW8, 0x4 // target branch offset
s_add_u32 s62, s62, s5                             // add target branch offset
s_addc_u32 s63, s63, 0                             // add high and carry
s_branch label_ActivationSetPCAddrEnd
label_ActivationSetPCAddrEnd:
s_cmpk_eq_u32 s[sgprBeta], 0x0                     // Beta == 0
s_cbranch_scc0 label_GW_Beta                       // Branch if Beta is not zero

s_and_b32 s74, 511, s[sgprSizeI]                   // s74 = s[sgprSizeI] % 512
s_add_u32 s75, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s75                // wg0 >= nwg0-1 ?
s_cselect_b32 s74, s74, 0                          // set rMT0
s_cmpk_gt_u32 s74, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B0_E1_1                    // jump if edges required
s_and_b32 s74, 15, s[sgprSizeJ]                    // s74 = s[sgprSizeJ] % 16
s_add_u32 s75, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s75                // wg1 >= nwg1-1
s_cselect_b32 s74, s74, 0                          // set rMT1
s_cmpk_gt_u32 s74, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B0_E1_1                    // jump if edges required
label_GW_B0_E0_1:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=2 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s74
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[24:27], v15 offset:0                // load bias
ds_read_b128 v[28:31], v15 offset:16               // load bias
v_lshlrev_b32 v16, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[32:35], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[36:39], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_lshl_u32 v13, v3, v0, 0x1                    // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+40], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+41], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+42], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+43], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+44], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+45], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+46], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+47], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+48], acc1           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+49], acc5           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+50], acc9           // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+51], acc13          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+52], acc17          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+53], acc21          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+54], acc25          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+55], acc29          // copy acc to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 2 - 2 (scaleAlphaVec) lgkmcnt(0) = 2 - 2 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[32:33], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[34:35], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[36:37], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[38:39], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(32)(6)
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+42:vgprValuC+42+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
v_mov_b32 v44, v8
v_mov_b32 v45, v9
v_mov_b32 v46, v10
v_mov_b32 v47, v11
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
buffer_store_dwordx4 v[40:43], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[32:33], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[34:35], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[36:37], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[38:39], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(32)(6)
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+50:vgprValuC+50+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
v_mov_b32 v52, v8
v_mov_b32 v53, v9
v_mov_b32 v54, v10
v_mov_b32 v55, v11
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
s_lshl_b32 s74, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[48:51], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,2,0:vw8); (0,0,3,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s74
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
ds_read_b128 v[24:27], v15 offset:0                // load bias
ds_read_b128 v[28:31], v15 offset:16               // load bias
buffer_load_dwordx4 v[32:35], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[36:39], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_accvgpr_read_b32 v[vgprValuC+40], acc2           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+41], acc6           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+42], acc10          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+43], acc14          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+44], acc18          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+45], acc22          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+46], acc26          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+47], acc30          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+48], acc3           // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+49], acc7           // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+50], acc11          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+51], acc15          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+52], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+53], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+54], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+55], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 2, 0), (0, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt 0                                        // vmcnt(0) = 2 - 2 (scaleAlphaVec) lgkmcnt(0) = 2 - 2 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[32:33], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[34:35], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[36:37], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[38:39], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(32)(6)
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+42:vgprValuC+42+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
v_mov_b32 v44, v8
v_mov_b32 v45, v9
v_mov_b32 v46, v10
v_mov_b32 v47, v11
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
s_lshl_b32 s74, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[32:33], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[34:35], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[36:37], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[38:39], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(32)(6)
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+50:vgprValuC+50+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
v_mov_b32 v52, v8
v_mov_b32 v53, v9
v_mov_b32 v54, v10
v_mov_b32 v55, v11
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
s_lshl_b32 s74, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[48:51], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B0_E1_1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=2 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v43, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v14, v0, s74
v_lshlrev_b32 v14, 0x2, v14                        // Bias address scaled by BPE
v_cndmask_b32 v14, v43, v14, s[78:79]              // LDBias clip if OOB. offset
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[16:19], v14 offset:0                // load bias
ds_read_b128 v[20:23], v14 offset:16               // load bias
v_lshlrev_b32 v15, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[24:27], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[28:31], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
v_add_lshl_u32 v13, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, v43, v13, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v41, v0, s74
v_lshlrev_b32 v41, 0x2, v41                        // Bias address scaled by BPE
v_cndmask_b32 v41, v43, v41, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v42, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v40, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, v43, v40, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+32], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+33], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+34], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+35], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+36], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+37], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+38], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+39], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+48], acc1           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+49], acc5           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+50], acc9           // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+51], acc13          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+52], acc17          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+53], acc21          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+54], acc25          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+55], acc29          // copy acc to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[24:25], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[26:27], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(24)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v28, 1.0, v28, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v29, 1.0, v29, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[28:29], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v30, 1.0, v30, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v31, 1.0, v31, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[30:31], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(6)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
v_pk_add_f32 v[8:9], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[10:11], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
v_mov_b32 v36, v8
v_mov_b32 v37, v9
v_mov_b32 v38, v10
v_mov_b32 v39, v11
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+32], v[vgprValuC+33] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_pack_b32_f16 v33, v[vgprValuC+34], v[vgprValuC+35] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v34, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
buffer_store_dwordx4 v[32:35], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[24:25], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[26:27], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(24)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v28, 1.0, v28, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v29, 1.0, v29, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[28:29], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v30, 1.0, v30, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v31, 1.0, v31, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[30:31], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(6)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
v_pk_add_f32 v[8:9], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[10:11], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
v_mov_b32 v52, v8
v_mov_b32 v53, v9
v_mov_b32 v54, v10
v_mov_b32 v55, v11
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
buffer_store_dwordx4 v[48:51], v40, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,2,0:vw8); (0,0,3,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v43, BufferOOB
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v14, v0, s74
v_lshlrev_b32 v14, 0x2, v14                        // Bias address scaled by BPE
v_cndmask_b32 v14, v43, v14, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[16:19], v14 offset:0                // load bias
ds_read_b128 v[20:23], v14 offset:16               // load bias
v_lshlrev_b32 v15, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[24:27], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[28:31], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
v_add_lshl_u32 v13, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, v43, v13, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v41, v0, s74
v_lshlrev_b32 v41, 0x2, v41                        // Bias address scaled by BPE
v_cndmask_b32 v41, v43, v41, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v42, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v40, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v40, v43, v40, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+32], acc2           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+33], acc6           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+34], acc10          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+35], acc14          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+36], acc18          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+37], acc22          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+38], acc26          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+39], acc30          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+48], acc3           // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+49], acc7           // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+50], acc11          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+51], acc15          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+52], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+53], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+54], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+55], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 2, 0), (0, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+32], s[sgprAlpha], v[vgprValuC+32] // *= alpha
v_mul_f32 v[vgprValuC+33], s[sgprAlpha], v[vgprValuC+33] // *= alpha
v_mul_f32 v[vgprValuC+34], s[sgprAlpha], v[vgprValuC+34] // *= alpha
v_mul_f32 v[vgprValuC+35], s[sgprAlpha], v[vgprValuC+35] // *= alpha
v_mul_f32 v[vgprValuC+36], s[sgprAlpha], v[vgprValuC+36] // *= alpha
v_mul_f32 v[vgprValuC+37], s[sgprAlpha], v[vgprValuC+37] // *= alpha
v_mul_f32 v[vgprValuC+38], s[sgprAlpha], v[vgprValuC+38] // *= alpha
v_mul_f32 v[vgprValuC+39], s[sgprAlpha], v[vgprValuC+39] // *= alpha
v_mul_f32 v[vgprValuC+48], s[sgprAlpha], v[vgprValuC+48] // *= alpha
v_mul_f32 v[vgprValuC+49], s[sgprAlpha], v[vgprValuC+49] // *= alpha
v_mul_f32 v[vgprValuC+50], s[sgprAlpha], v[vgprValuC+50] // *= alpha
v_mul_f32 v[vgprValuC+51], s[sgprAlpha], v[vgprValuC+51] // *= alpha
v_mul_f32 v[vgprValuC+52], s[sgprAlpha], v[vgprValuC+52] // *= alpha
v_mul_f32 v[vgprValuC+53], s[sgprAlpha], v[vgprValuC+53] // *= alpha
v_mul_f32 v[vgprValuC+54], s[sgprAlpha], v[vgprValuC+54] // *= alpha
v_mul_f32 v[vgprValuC+55], s[sgprAlpha], v[vgprValuC+55] // *= alpha
s_waitcnt 0                                        // wait for ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+32:vgprValuC+32+1], v[24:25], v[vgprValuC+32:vgprValuC+32+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+34:vgprValuC+34+1], v[26:27], v[vgprValuC+34:vgprValuC+34+1] // *= scaleAlphaVecVMulPK(24)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v28, 1.0, v28, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v29, 1.0, v29, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+36:vgprValuC+36+1], v[28:29], v[vgprValuC+36:vgprValuC+36+1] // *= scaleAlphaVecVMulPK(24)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v30, 1.0, v30, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v31, 1.0, v31, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+38:vgprValuC+38+1], v[30:31], v[vgprValuC+38:vgprValuC+38+1] // *= scaleAlphaVecVMulPK(24)(6)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+32:vgprValuC+32+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+34:vgprValuC+34+1] // C += bias
v_pk_add_f32 v[8:9], v[20:21], v[vgprValuC+36:vgprValuC+36+1] // C += bias
v_pk_add_f32 v[10:11], v[22:23], v[vgprValuC+38:vgprValuC+38+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v32, v4
v_mov_b32 v33, v5
v_mov_b32 v34, v6
v_mov_b32 v35, v7
v_mov_b32 v36, v8
v_mov_b32 v37, v9
v_mov_b32 v38, v10
v_mov_b32 v39, v11
v_cvt_f16_f32 v[vgprValuC+32], v[vgprValuC+32]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+33], v[vgprValuC+33]     // convert C to fp16
v_pack_b32_f16 v32, v[vgprValuC+32], v[vgprValuC+33] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+34], v[vgprValuC+34]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+35], v[vgprValuC+35]     // convert C to fp16
v_pack_b32_f16 v33, v[vgprValuC+34], v[vgprValuC+35] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+36], v[vgprValuC+36]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+37], v[vgprValuC+37]     // convert C to fp16
v_pack_b32_f16 v34, v[vgprValuC+36], v[vgprValuC+37] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+38], v[vgprValuC+38]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+39], v[vgprValuC+39]     // convert C to fp16
v_pack_b32_f16 v35, v[vgprValuC+38], v[vgprValuC+39] // Pack with neighbor
buffer_store_dwordx4 v[32:35], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v24, 1.0, v24, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v25, 1.0, v25, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+48:vgprValuC+48+1], v[24:25], v[vgprValuC+48:vgprValuC+48+1] // *= scaleAlphaVecVMulPK(24)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v26, 1.0, v26, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v27, 1.0, v27, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+50:vgprValuC+50+1], v[26:27], v[vgprValuC+50:vgprValuC+50+1] // *= scaleAlphaVecVMulPK(24)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v28, 1.0, v28, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v29, 1.0, v29, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+52:vgprValuC+52+1], v[28:29], v[vgprValuC+52:vgprValuC+52+1] // *= scaleAlphaVecVMulPK(24)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v30, 1.0, v30, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v31, 1.0, v31, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+54:vgprValuC+54+1], v[30:31], v[vgprValuC+54:vgprValuC+54+1] // *= scaleAlphaVecVMulPK(24)(6)
v_pk_add_f32 v[4:5], v[16:17], v[vgprValuC+48:vgprValuC+48+1] // C += bias
v_pk_add_f32 v[6:7], v[18:19], v[vgprValuC+50:vgprValuC+50+1] // C += bias
v_pk_add_f32 v[8:9], v[20:21], v[vgprValuC+52:vgprValuC+52+1] // C += bias
v_pk_add_f32 v[10:11], v[22:23], v[vgprValuC+54:vgprValuC+54+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v48, v4
v_mov_b32 v49, v5
v_mov_b32 v50, v6
v_mov_b32 v51, v7
v_mov_b32 v52, v8
v_mov_b32 v53, v9
v_mov_b32 v54, v10
v_mov_b32 v55, v11
v_cvt_f16_f32 v[vgprValuC+48], v[vgprValuC+48]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+49], v[vgprValuC+49]     // convert C to fp16
v_pack_b32_f16 v48, v[vgprValuC+48], v[vgprValuC+49] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+50], v[vgprValuC+50]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+51], v[vgprValuC+51]     // convert C to fp16
v_pack_b32_f16 v49, v[vgprValuC+50], v[vgprValuC+51] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+52], v[vgprValuC+52]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+53], v[vgprValuC+53]     // convert C to fp16
v_pack_b32_f16 v50, v[vgprValuC+52], v[vgprValuC+53] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+54], v[vgprValuC+54]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+55], v[vgprValuC+55]     // convert C to fp16
v_pack_b32_f16 v51, v[vgprValuC+54], v[vgprValuC+55] // Pack with neighbor
buffer_store_dwordx4 v[48:51], v40, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_Beta:
s_and_b32 s74, 511, s[sgprSizeI]                   // s74 = s[sgprSizeI] % 512
s_add_u32 s75, -0x1, s[sgprNumWorkGroups0]
s_cmp_ge_u32 s[sgprWorkGroup0], s75                // wg0 >= nwg0-1 ?
s_cselect_b32 s74, s74, 0                          // set rMT0
s_cmpk_gt_u32 s74, 0x0                             // rMT0 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
s_and_b32 s74, 15, s[sgprSizeJ]                    // s74 = s[sgprSizeJ] % 16
s_add_u32 s75, -0x1, s[sgprNumWorkGroups1]
s_cmp_ge_u32 s[sgprWorkGroup1], s75                // wg1 >= nwg1-1
s_cselect_b32 s74, s74, 0                          // set rMT1
s_cmpk_gt_u32 s74, 0x0                             // rMT1 > 0
s_cbranch_scc1 label_GW_B1_E1                      // jump if edges required
label_GW_B1_E0:

/* edge=0, allocate 2 sgpr. perBatchTmpS=2 perBatchMaskS=0 perElementMaskS=0 elementsPerBatch=2 */
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_add_lshl_u32 v14, v2, v0, 0x1                    // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
buffer_load_dwordx4 v[20:23], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s74
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[24:27], v15 offset:0                // load bias
ds_read_b128 v[28:31], v15 offset:16               // load bias
v_lshlrev_b32 v16, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[32:35], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[36:39], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_add_lshl_u32 v13, v3, v0, 0x1                    // optSingleColVgpr scaleToBpe: sharedAddrVgpr <- cinRowPtr + coord0, scaled by BPE. BSHERE:coord0=0, coord0Vgpr=0
v_accvgpr_read_b32 v[vgprValuC+40], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+41], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+42], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+43], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+44], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+45], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+46], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+47], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+56], acc1           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+57], acc5           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+58], acc9           // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+59], acc13          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+60], acc17          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+61], acc21          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+62], acc25          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+63], acc29          // copy acc to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(1)                     // vmcnt(1) = 4 - 1 (beta) - 2 (scaleAlphaVec) lgkmcnt(0) = 2 - 2 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[32:33], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[34:35], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[36:37], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[38:39], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v20, v[vgprValuC+40] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+41], s[sgprBeta], v20, v[vgprValuC+41] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v21, v[vgprValuC+42] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v21, v[vgprValuC+43] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v22, v[vgprValuC+44] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v22, v[vgprValuC+45] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v23, v[vgprValuC+46] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+47], s[sgprBeta], v23, v[vgprValuC+47] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+42:vgprValuC+42+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
v_mov_b32 v44, v8
v_mov_b32 v45, v9
v_mov_b32 v46, v10
v_mov_b32 v47, v11
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
buffer_store_dwordx4 v[40:43], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(1)                                 // vmcnt(0) = 4 - 2 (beta) - 2 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[32:33], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[34:35], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[36:37], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[38:39], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v48, v[vgprValuC+56] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v48, v[vgprValuC+57] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v49, v[vgprValuC+58] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+59], s[sgprBeta], v49, v[vgprValuC+59] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+60], s[sgprBeta], v50, v[vgprValuC+60] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+61], s[sgprBeta], v50, v[vgprValuC+61] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+62], s[sgprBeta], v51, v[vgprValuC+62] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+63], s[sgprBeta], v51, v[vgprValuC+63] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+58:vgprValuC+58+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
v_mov_b32 v60, v8
v_mov_b32 v61, v9
v_mov_b32 v62, v10
v_mov_b32 v63, v11
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
s_lshl_b32 s74, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[56:59], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=1 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Mask optSrdIncForRow=1 */

/******************************************/
/* Global Write Beta Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,2,0:vw8); (0,0,3,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[20:23], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v15, v0, s74
v_lshlrev_b32 v15, 0x2, v15                        // Bias address scaled by BPE
ds_read_b128 v[24:27], v15 offset:0                // load bias
ds_read_b128 v[28:31], v15 offset:16               // load bias
buffer_load_dwordx4 v[32:35], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[36:39], v16, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
s_lshl_b32 s74, s[sgprStrideC1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdC+0], s[sgprSrdC+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdC+1], s[sgprSrdC+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_load_dwordx4 v[48:51], v14, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
v_accvgpr_read_b32 v[vgprValuC+40], acc2           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+41], acc6           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+42], acc10          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+43], acc14          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+44], acc18          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+45], acc22          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+46], acc26          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+47], acc30          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+56], acc3           // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+57], acc7           // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+58], acc11          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+59], acc15          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+60], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+61], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+62], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+63], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 2, 0), (0, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha

/* apply mask, calc new C and issue writes */

s_waitcnt lgkmcnt(0), vmcnt(1)                     // vmcnt(1) = 4 - 1 (beta) - 2 (scaleAlphaVec) lgkmcnt(0) = 2 - 2 (bias) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[32:33], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[34:35], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[36:37], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[38:39], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v20, v[vgprValuC+40] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+41], s[sgprBeta], v20, v[vgprValuC+41] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v21, v[vgprValuC+42] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v21, v[vgprValuC+43] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v22, v[vgprValuC+44] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v22, v[vgprValuC+45] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v23, v[vgprValuC+46] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+47], s[sgprBeta], v23, v[vgprValuC+47] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+42:vgprValuC+42+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
v_mov_b32 v44, v8
v_mov_b32 v45, v9
v_mov_b32 v46, v10
v_mov_b32 v47, v11
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
s_lshl_b32 s74, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[40:43], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D

s_waitcnt vmcnt(1)                                 // vmcnt(0) = 4 - 2 (beta) - 2 (scaleAlphaVec) (interleaved)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[32:33], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[34:35], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[36:37], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[38:39], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v48, v[vgprValuC+56] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v48, v[vgprValuC+57] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v49, v[vgprValuC+58] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+59], s[sgprBeta], v49, v[vgprValuC+59] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+60], s[sgprBeta], v50, v[vgprValuC+60] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+61], s[sgprBeta], v50, v[vgprValuC+61] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+62], s[sgprBeta], v51, v[vgprValuC+62] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+63], s[sgprBeta], v51, v[vgprValuC+63] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+58:vgprValuC+58+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
v_mov_b32 v60, v8
v_mov_b32 v61, v9
v_mov_b32 v62, v10
v_mov_b32 v63, v11
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
s_lshl_b32 s74, s[sgprStrideD1J], 1                // incToNextRow: Scale by BPE
s_add_u32 s[sgprSrdD+0], s[sgprSrdD+0], s74        // incToNextRow: gra SRD += inc(lower)
s_addc_u32 s[sgprSrdD+1], s[sgprSrdD+1], 0         // incToNextRow: gra SRD += inc(upper)
buffer_store_dwordx4 v[56:59], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_GW_B1_E1:

/* edge=1, allocate 6 sgpr. perBatchTmpS=4 perBatchMaskS=2 perElementMaskS=0 elementsPerBatch=2 */
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #0 (d1,d0,vc1,vc0) = */
/*    (0,0,0,0:vw8); (0,0,1,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v23, BufferOOB
/* (d1,vc1,d0,vc0)=(0,0,0,0) */
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v13, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, v23, v13, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[16:19], v13, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v14, v0, s74
v_lshlrev_b32 v14, 0x2, v14                        // Bias address scaled by BPE
v_cndmask_b32 v14, v23, v14, s[78:79]              // LDBias clip if OOB. offset
s_waitcnt lgkmcnt(0)                               // Wait for Bias LDS write
s_barrier                                          // Bias LDS write barrier
ds_read_b128 v[24:27], v14 offset:0                // load bias
ds_read_b128 v[28:31], v14 offset:16               // load bias
v_lshlrev_b32 v15, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[32:35], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[36:39], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
v_add_lshl_u32 v13, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, v23, v13, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,1,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v20, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v23, v20, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[48:51], v20, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v21, v0, s74
v_lshlrev_b32 v21, 0x2, v21                        // Bias address scaled by BPE
v_cndmask_b32 v21, v23, v21, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v22, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v20, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v23, v20, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+40], acc0           // copy acc to vreg[0]
v_accvgpr_read_b32 v[vgprValuC+41], acc4           // copy acc to vreg[1]
v_accvgpr_read_b32 v[vgprValuC+42], acc8           // copy acc to vreg[2]
v_accvgpr_read_b32 v[vgprValuC+43], acc12          // copy acc to vreg[3]
v_accvgpr_read_b32 v[vgprValuC+44], acc16          // copy acc to vreg[4]
v_accvgpr_read_b32 v[vgprValuC+45], acc20          // copy acc to vreg[5]
v_accvgpr_read_b32 v[vgprValuC+46], acc24          // copy acc to vreg[6]
v_accvgpr_read_b32 v[vgprValuC+47], acc28          // copy acc to vreg[7]
v_accvgpr_read_b32 v[vgprValuC+56], acc1           // copy acc to vreg[8]
v_accvgpr_read_b32 v[vgprValuC+57], acc5           // copy acc to vreg[9]
v_accvgpr_read_b32 v[vgprValuC+58], acc9           // copy acc to vreg[10]
v_accvgpr_read_b32 v[vgprValuC+59], acc13          // copy acc to vreg[11]
v_accvgpr_read_b32 v[vgprValuC+60], acc17          // copy acc to vreg[12]
v_accvgpr_read_b32 v[vgprValuC+61], acc21          // copy acc to vreg[13]
v_accvgpr_read_b32 v[vgprValuC+62], acc25          // copy acc to vreg[14]
v_accvgpr_read_b32 v[vgprValuC+63], acc29          // copy acc to vreg[15]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 0, 0), (0, 0, 1, 0)] */
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[32:33], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[34:35], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[36:37], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[38:39], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v16, v[vgprValuC+40] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+41], s[sgprBeta], v16, v[vgprValuC+41] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v17, v[vgprValuC+42] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v17, v[vgprValuC+43] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v18, v[vgprValuC+44] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v18, v[vgprValuC+45] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v19, v[vgprValuC+46] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+47], s[sgprBeta], v19, v[vgprValuC+47] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+42:vgprValuC+42+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
v_mov_b32 v44, v8
v_mov_b32 v45, v9
v_mov_b32 v46, v10
v_mov_b32 v47, v11
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
buffer_store_dwordx4 v[40:43], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[32:33], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[34:35], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[36:37], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[38:39], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v48, v[vgprValuC+56] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v48, v[vgprValuC+57] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v49, v[vgprValuC+58] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+59], s[sgprBeta], v49, v[vgprValuC+59] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+60], s[sgprBeta], v50, v[vgprValuC+60] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+61], s[sgprBeta], v50, v[vgprValuC+61] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+62], s[sgprBeta], v51, v[vgprValuC+62] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+63], s[sgprBeta], v51, v[vgprValuC+63] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+58:vgprValuC+58+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
v_mov_b32 v60, v8
v_mov_b32 v61, v9
v_mov_b32 v62, v10
v_mov_b32 v63, v11
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
buffer_store_dwordx4 v[56:59], v20, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
/* optSingleColVgpr=0 optSharedColVgpr=0 optSGPRUsage=BufferLoad_Edge_Mask optSrdIncForRow=0 */

/******************************************/
/* Global Write Beta Edge Batch #1 (d1,d0,vc1,vc0) = */
/*    (0,0,2,0:vw8); (0,0,3,0:vw8)        */
/******************************************/

/* calc coords, apply mask, and issue loads (if necessary) */
v_mov_b32 v23, BufferOOB
/* (d1,vc1,d0,vc0)=(0,2,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v13, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, v23, v13, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[16:19], v13, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v14, v0, s74
v_lshlrev_b32 v14, 0x2, v14                        // Bias address scaled by BPE
v_cndmask_b32 v14, v23, v14, s[78:79]              // LDBias clip if OOB. offset
ds_read_b128 v[24:27], v14 offset:0                // load bias
ds_read_b128 v[28:31], v14 offset:16               // load bias
v_lshlrev_b32 v15, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
buffer_load_dwordx4 v[32:35], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:0 // load scaleAlphaVecI
buffer_load_dwordx4 v[36:39], v15, s[sgprSrdScaleAlphaVec:sgprSrdScaleAlphaVec+3], 0 offen offset:16 // load scaleAlphaVecI
v_add_lshl_u32 v13, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v13, v23, v13, s[78:79]              // LDD clip if OOB. offset
/* (d1,vc1,d0,vc0)=(0,3,0,0) */
v_add_co_u32 v1, vcc, v1, 1                        // coord1.1: coord1Vgpr += d1*sg1*VW + vc1

/* Fix for UseInitialStridesCD, emitAddressSetupCode */
v_add_u32 v2, v2, s[sgprStrideC1J]                 // ROWINC- Move cinRowPtr to next row
v_add_u32 v3, v3, s[sgprStrideD1J]                 // Move coutRowPtrD to next row
v_cmp_lt_u32 s[74:75], v0, s[sgprSizeI]            // coord0 < size0
v_cmp_lt_u32 s[78:79], v1, s[sgprSizeJ]            // coord1 < size1
s_and_b64 s[78:79], s[74:75], s[78:79]             // in0 && in1
v_add_lshl_u32 v20, v2, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v23, v20, s[78:79]              // LDC clip if OOB. offset
buffer_load_dwordx4 v[48:51], v20, s[sgprSrdC:sgprSrdC+3], 0 offen offset:0 // load C
s_mul_i32 s74, 512, s[sgprWorkGroup0]              // wgp0 * MT0
v_sub_u32 v21, v0, s74
v_lshlrev_b32 v21, 0x2, v21                        // Bias address scaled by BPE
v_cndmask_b32 v21, v23, v21, s[78:79]              // LDBias clip if OOB. offset
v_lshlrev_b32 v22, 0x2, v0                         // ScaleAlphaVec address scaled by BPE
v_add_lshl_u32 v20, v3, v0, 0x1                    // scaleToBpe: accumulate d0 lower and *= bpe into Cin addr
v_cndmask_b32 v20, v23, v20, s[78:79]              // LDD clip if OOB. offset
v_accvgpr_read_b32 v[vgprValuC+40], acc2           // copy acc to vreg[16]
v_accvgpr_read_b32 v[vgprValuC+41], acc6           // copy acc to vreg[17]
v_accvgpr_read_b32 v[vgprValuC+42], acc10          // copy acc to vreg[18]
v_accvgpr_read_b32 v[vgprValuC+43], acc14          // copy acc to vreg[19]
v_accvgpr_read_b32 v[vgprValuC+44], acc18          // copy acc to vreg[20]
v_accvgpr_read_b32 v[vgprValuC+45], acc22          // copy acc to vreg[21]
v_accvgpr_read_b32 v[vgprValuC+46], acc26          // copy acc to vreg[22]
v_accvgpr_read_b32 v[vgprValuC+47], acc30          // copy acc to vreg[23]
v_accvgpr_read_b32 v[vgprValuC+56], acc3           // copy acc to vreg[24]
v_accvgpr_read_b32 v[vgprValuC+57], acc7           // copy acc to vreg[25]
v_accvgpr_read_b32 v[vgprValuC+58], acc11          // copy acc to vreg[26]
v_accvgpr_read_b32 v[vgprValuC+59], acc15          // copy acc to vreg[27]
v_accvgpr_read_b32 v[vgprValuC+60], acc19          // copy acc to vreg[28]
v_accvgpr_read_b32 v[vgprValuC+61], acc23          // copy acc to vreg[29]
v_accvgpr_read_b32 v[vgprValuC+62], acc27          // copy acc to vreg[30]
v_accvgpr_read_b32 v[vgprValuC+63], acc31          // copy acc to vreg[31]
s_nop 1                                            // 2 wait states required before reading vgpr

/* rC *= alpha batchElements=[(0, 0, 2, 0), (0, 0, 3, 0)] */
v_mul_f32 v[vgprValuC+40], s[sgprAlpha], v[vgprValuC+40] // *= alpha
v_mul_f32 v[vgprValuC+41], s[sgprAlpha], v[vgprValuC+41] // *= alpha
v_mul_f32 v[vgprValuC+42], s[sgprAlpha], v[vgprValuC+42] // *= alpha
v_mul_f32 v[vgprValuC+43], s[sgprAlpha], v[vgprValuC+43] // *= alpha
v_mul_f32 v[vgprValuC+44], s[sgprAlpha], v[vgprValuC+44] // *= alpha
v_mul_f32 v[vgprValuC+45], s[sgprAlpha], v[vgprValuC+45] // *= alpha
v_mul_f32 v[vgprValuC+46], s[sgprAlpha], v[vgprValuC+46] // *= alpha
v_mul_f32 v[vgprValuC+47], s[sgprAlpha], v[vgprValuC+47] // *= alpha
v_mul_f32 v[vgprValuC+56], s[sgprAlpha], v[vgprValuC+56] // *= alpha
v_mul_f32 v[vgprValuC+57], s[sgprAlpha], v[vgprValuC+57] // *= alpha
v_mul_f32 v[vgprValuC+58], s[sgprAlpha], v[vgprValuC+58] // *= alpha
v_mul_f32 v[vgprValuC+59], s[sgprAlpha], v[vgprValuC+59] // *= alpha
v_mul_f32 v[vgprValuC+60], s[sgprAlpha], v[vgprValuC+60] // *= alpha
v_mul_f32 v[vgprValuC+61], s[sgprAlpha], v[vgprValuC+61] // *= alpha
v_mul_f32 v[vgprValuC+62], s[sgprAlpha], v[vgprValuC+62] // *= alpha
v_mul_f32 v[vgprValuC+63], s[sgprAlpha], v[vgprValuC+63] // *= alpha
s_waitcnt 0                                        // wait for Beta, ScaleAlphaVec, Bias LDS

/* apply mask, calc new C and issue writes */
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+40:vgprValuC+40+1], v[32:33], v[vgprValuC+40:vgprValuC+40+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+42:vgprValuC+42+1], v[34:35], v[vgprValuC+42:vgprValuC+42+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+44:vgprValuC+44+1], v[36:37], v[vgprValuC+44:vgprValuC+44+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+46:vgprValuC+46+1], v[38:39], v[vgprValuC+46:vgprValuC+46+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+40], s[sgprBeta], v16, v[vgprValuC+40] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+41], s[sgprBeta], v16, v[vgprValuC+41] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+42], s[sgprBeta], v17, v[vgprValuC+42] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+43], s[sgprBeta], v17, v[vgprValuC+43] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+44], s[sgprBeta], v18, v[vgprValuC+44] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+45], s[sgprBeta], v18, v[vgprValuC+45] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+46], s[sgprBeta], v19, v[vgprValuC+46] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+47], s[sgprBeta], v19, v[vgprValuC+47] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+40:vgprValuC+40+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+42:vgprValuC+42+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+44:vgprValuC+44+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+46:vgprValuC+46+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v40, v4
v_mov_b32 v41, v5
v_mov_b32 v42, v6
v_mov_b32 v43, v7
v_mov_b32 v44, v8
v_mov_b32 v45, v9
v_mov_b32 v46, v10
v_mov_b32 v47, v11
v_cvt_f16_f32 v[vgprValuC+40], v[vgprValuC+40]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+41], v[vgprValuC+41]     // convert C to fp16
v_pack_b32_f16 v40, v[vgprValuC+40], v[vgprValuC+41] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+42], v[vgprValuC+42]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+43], v[vgprValuC+43]     // convert C to fp16
v_pack_b32_f16 v41, v[vgprValuC+42], v[vgprValuC+43] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+44], v[vgprValuC+44]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+45], v[vgprValuC+45]     // convert C to fp16
v_pack_b32_f16 v42, v[vgprValuC+44], v[vgprValuC+45] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+46], v[vgprValuC+46]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+47], v[vgprValuC+47]     // convert C to fp16
v_pack_b32_f16 v43, v[vgprValuC+46], v[vgprValuC+47] // Pack with neighbor
buffer_store_dwordx4 v[40:43], v13, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v32, 1.0, v32, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v33, 1.0, v33, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+56:vgprValuC+56+1], v[32:33], v[vgprValuC+56:vgprValuC+56+1] // *= scaleAlphaVecVMulPK(32)(0)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v34, 1.0, v34, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v35, 1.0, v35, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+58:vgprValuC+58+1], v[34:35], v[vgprValuC+58:vgprValuC+58+1] // *= scaleAlphaVecVMulPK(32)(2)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v36, 1.0, v36, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v37, 1.0, v37, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+60:vgprValuC+60+1], v[36:37], v[vgprValuC+60:vgprValuC+60+1] // *= scaleAlphaVecVMulPK(32)(4)
v_cmp_gt_u32 s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1], s[sgprSrdScaleAlphaVec+2], 0 //  == 0 ?
v_cndmask_b32 v38, 1.0, v38, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_cndmask_b32 v39, 1.0, v39, s[sgprAddressScaleAlphaVec:sgprAddressScaleAlphaVec+1] // 1. mul 1 if 0
v_pk_mul_f32 v[vgprValuC+62:vgprValuC+62+1], v[38:39], v[vgprValuC+62:vgprValuC+62+1] // *= scaleAlphaVecVMulPK(32)(6)
v_fma_mix_f32 v[vgprValuC+56], s[sgprBeta], v48, v[vgprValuC+56] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+57], s[sgprBeta], v48, v[vgprValuC+57] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+58], s[sgprBeta], v49, v[vgprValuC+58] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+59], s[sgprBeta], v49, v[vgprValuC+59] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+60], s[sgprBeta], v50, v[vgprValuC+60] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+61], s[sgprBeta], v50, v[vgprValuC+61] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+62], s[sgprBeta], v51, v[vgprValuC+62] op_sel:[0,0,0] op_sel_hi:[0,1,0] // //C*=beta
v_fma_mix_f32 v[vgprValuC+63], s[sgprBeta], v51, v[vgprValuC+63] op_sel:[0,1,0] op_sel_hi:[0,1,0] // //C*=beta
v_pk_add_f32 v[4:5], v[24:25], v[vgprValuC+56:vgprValuC+56+1] // C += bias
v_pk_add_f32 v[6:7], v[26:27], v[vgprValuC+58:vgprValuC+58+1] // C += bias
v_pk_add_f32 v[8:9], v[28:29], v[vgprValuC+60:vgprValuC+60+1] // C += bias
v_pk_add_f32 v[10:11], v[30:31], v[vgprValuC+62:vgprValuC+62+1] // C += bias
s_swappc_b64 s[72:73], s[62:63]
v_mov_b32 v56, v4
v_mov_b32 v57, v5
v_mov_b32 v58, v6
v_mov_b32 v59, v7
v_mov_b32 v60, v8
v_mov_b32 v61, v9
v_mov_b32 v62, v10
v_mov_b32 v63, v11
v_cvt_f16_f32 v[vgprValuC+56], v[vgprValuC+56]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+57], v[vgprValuC+57]     // convert C to fp16
v_pack_b32_f16 v56, v[vgprValuC+56], v[vgprValuC+57] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+58], v[vgprValuC+58]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+59], v[vgprValuC+59]     // convert C to fp16
v_pack_b32_f16 v57, v[vgprValuC+58], v[vgprValuC+59] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+60], v[vgprValuC+60]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+61], v[vgprValuC+61]     // convert C to fp16
v_pack_b32_f16 v58, v[vgprValuC+60], v[vgprValuC+61] // Pack with neighbor
v_cvt_f16_f32 v[vgprValuC+62], v[vgprValuC+62]     // convert C to fp16
v_cvt_f16_f32 v[vgprValuC+63], v[vgprValuC+63]     // convert C to fp16
v_pack_b32_f16 v59, v[vgprValuC+62], v[vgprValuC+63] // Pack with neighbor
buffer_store_dwordx4 v[56:59], v20, s[sgprSrdD:sgprSrdD+3], 0 offen offset:0 // store D
s_nop 0                                            // 1 wait state required when next inst writes vgprs held by previous dwordx4 store inst
s_branch label_GW_End_1                            // jump to end
label_Activation_None_VW8:
s_setpc_b64 s[72:73]
label_Activation_Abs_VW8:
v_and_b32 v[vgprValuC+4], 0x7fffffff, v[vgprValuC+4] // Remove sign bit
v_and_b32 v[vgprValuC+5], 0x7fffffff, v[vgprValuC+5] // Remove sign bit
v_and_b32 v[vgprValuC+6], 0x7fffffff, v[vgprValuC+6] // Remove sign bit
v_and_b32 v[vgprValuC+7], 0x7fffffff, v[vgprValuC+7] // Remove sign bit
v_and_b32 v[vgprValuC+8], 0x7fffffff, v[vgprValuC+8] // Remove sign bit
v_and_b32 v[vgprValuC+9], 0x7fffffff, v[vgprValuC+9] // Remove sign bit
v_and_b32 v[vgprValuC+10], 0x7fffffff, v[vgprValuC+10] // Remove sign bit
v_and_b32 v[vgprValuC+11], 0x7fffffff, v[vgprValuC+11] // Remove sign bit
s_setpc_b64 s[72:73]
label_Activation_Clippedrelu_VW8:
v_cmp_gt_f32 vcc, v[vgprValuC+4], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+4], s[sgpractivationBeta], v[vgprValuC+4] // min(x, beta)
v_cndmask_b32 v[vgprValuC+4], 0.0, v[vgprValuC+4], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+5], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+5], s[sgpractivationBeta], v[vgprValuC+5] // min(x, beta)
v_cndmask_b32 v[vgprValuC+5], 0.0, v[vgprValuC+5], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+6], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+6], s[sgpractivationBeta], v[vgprValuC+6] // min(x, beta)
v_cndmask_b32 v[vgprValuC+6], 0.0, v[vgprValuC+6], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+7], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+7], s[sgpractivationBeta], v[vgprValuC+7] // min(x, beta)
v_cndmask_b32 v[vgprValuC+7], 0.0, v[vgprValuC+7], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+8], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+8], s[sgpractivationBeta], v[vgprValuC+8] // min(x, beta)
v_cndmask_b32 v[vgprValuC+8], 0.0, v[vgprValuC+8], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+9], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+9], s[sgpractivationBeta], v[vgprValuC+9] // min(x, beta)
v_cndmask_b32 v[vgprValuC+9], 0.0, v[vgprValuC+9], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+10], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+10], s[sgpractivationBeta], v[vgprValuC+10] // min(x, beta)
v_cndmask_b32 v[vgprValuC+10], 0.0, v[vgprValuC+10], vcc // set x to 0 if <= alpha
v_cmp_gt_f32 vcc, v[vgprValuC+11], s[sgpractivationAlpha] // x > alpha ?
v_min_f32 v[vgprValuC+11], s[sgpractivationBeta], v[vgprValuC+11] // min(x, beta)
v_cndmask_b32 v[vgprValuC+11], 0.0, v[vgprValuC+11], vcc // set x to 0 if <= alpha
s_setpc_b64 s[72:73]
label_Activation_Gelu_VW8:
v_mul_f32 v12, 0x3d372713, v[vgprValuC+4]          // k1 * x
v_fma_f32 v12, v[vgprValuC+4], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+4], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+4], v12                 // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+4], 0.5, v12                 // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+5]          // k1 * x
v_fma_f32 v12, v[vgprValuC+5], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+5], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+5], v12                 // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+5], 0.5, v12                 // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+6]          // k1 * x
v_fma_f32 v12, v[vgprValuC+6], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+6], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+6], v12                 // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+6], 0.5, v12                 // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+7]          // k1 * x
v_fma_f32 v12, v[vgprValuC+7], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+7], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+7], v12                 // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+7], 0.5, v12                 // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+8]          // k1 * x
v_fma_f32 v12, v[vgprValuC+8], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+8], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+8], v12                 // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+8], 0.5, v12                 // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+9]          // k1 * x
v_fma_f32 v12, v[vgprValuC+9], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+9], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+9], v12                 // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+9], 0.5, v12                 // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+10]         // k1 * x
v_fma_f32 v12, v[vgprValuC+10], v12, 1.0           // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+10], v12                // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+10], v12                // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+10], 0.5, v12                // 0.5 * x * (1 + tanh(...))
v_mul_f32 v12, 0x3d372713, v[vgprValuC+11]         // k1 * x
v_fma_f32 v12, v[vgprValuC+11], v12, 1.0           // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+11], v12                // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+11], v12                // x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+11], 0.5, v12                // 0.5 * x * (1 + tanh(...))
s_setpc_b64 s[72:73]
label_Activation_Leakyrelu_VW8:
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+4] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+4], 0.0              // x >= 0 ?
v_cndmask_b32 v[vgprValuC+4], v12, v[vgprValuC+4], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+5] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+5], 0.0              // x >= 0 ?
v_cndmask_b32 v[vgprValuC+5], v12, v[vgprValuC+5], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+6] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+6], 0.0              // x >= 0 ?
v_cndmask_b32 v[vgprValuC+6], v12, v[vgprValuC+6], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+7] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+7], 0.0              // x >= 0 ?
v_cndmask_b32 v[vgprValuC+7], v12, v[vgprValuC+7], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+8] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+8], 0.0              // x >= 0 ?
v_cndmask_b32 v[vgprValuC+8], v12, v[vgprValuC+8], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+9] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+9], 0.0              // x >= 0 ?
v_cndmask_b32 v[vgprValuC+9], v12, v[vgprValuC+9], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+10] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+10], 0.0             // x >= 0 ?
v_cndmask_b32 v[vgprValuC+10], v12, v[vgprValuC+10], vcc // set x to tmp if < 0
v_mul_f32 v12, s[sgpractivationAlpha], v[vgprValuC+11] // tmp = x * alpha
v_cmp_ge_f32 vcc, v[vgprValuC+11], 0.0             // x >= 0 ?
v_cndmask_b32 v[vgprValuC+11], v12, v[vgprValuC+11], vcc // set x to tmp if < 0
s_setpc_b64 s[72:73]
label_Activation_Relu_VW8:
v_max_f32 v[vgprValuC+4], v[vgprValuC+4], 0        // x = max(0, x)
v_max_f32 v[vgprValuC+5], v[vgprValuC+5], 0        // x = max(0, x)
v_max_f32 v[vgprValuC+6], v[vgprValuC+6], 0        // x = max(0, x)
v_max_f32 v[vgprValuC+7], v[vgprValuC+7], 0        // x = max(0, x)
v_max_f32 v[vgprValuC+8], v[vgprValuC+8], 0        // x = max(0, x)
v_max_f32 v[vgprValuC+9], v[vgprValuC+9], 0        // x = max(0, x)
v_max_f32 v[vgprValuC+10], v[vgprValuC+10], 0      // x = max(0, x)
v_max_f32 v[vgprValuC+11], v[vgprValuC+11], 0      // x = max(0, x)
s_setpc_b64 s[72:73]
label_Activation_Sigmoid_VW8:
v_mul_f32 v[vgprValuC+4], 0xbfb8aa3b, v[vgprValuC+4] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+4], v[vgprValuC+4]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+4], 1.0, v[vgprValuC+4]      // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+4], v[vgprValuC+4]           // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+5], 0xbfb8aa3b, v[vgprValuC+5] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+5], v[vgprValuC+5]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+5], 1.0, v[vgprValuC+5]      // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+5], v[vgprValuC+5]           // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+6], 0xbfb8aa3b, v[vgprValuC+6] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+6], v[vgprValuC+6]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+6], 1.0, v[vgprValuC+6]      // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+6], v[vgprValuC+6]           // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+7], 0xbfb8aa3b, v[vgprValuC+7] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+7], v[vgprValuC+7]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+7], 1.0, v[vgprValuC+7]      // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+7], v[vgprValuC+7]           // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+8], 0xbfb8aa3b, v[vgprValuC+8] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+8], v[vgprValuC+8]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+8], 1.0, v[vgprValuC+8]      // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+8], v[vgprValuC+8]           // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+9], 0xbfb8aa3b, v[vgprValuC+9] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+9], v[vgprValuC+9]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+9], 1.0, v[vgprValuC+9]      // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+9], v[vgprValuC+9]           // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+10], 0xbfb8aa3b, v[vgprValuC+10] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+10], v[vgprValuC+10]         // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+10], 1.0, v[vgprValuC+10]    // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+10], v[vgprValuC+10]         // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
v_mul_f32 v[vgprValuC+11], 0xbfb8aa3b, v[vgprValuC+11] //  (fused -1.442695)
v_exp_f32 v[vgprValuC+11], v[vgprValuC+11]         // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+11], 1.0, v[vgprValuC+11]    // 1 + exp(-x)
v_rcp_f32 v[vgprValuC+11], v[vgprValuC+11]         // 1 / (1 + exp(-x))
s_nop 0                                            // 1 wait states
s_setpc_b64 s[72:73]
label_Activation_Tanh_VW8:
v_mul_f32 v[vgprValuC+4], s[sgpractivationAlpha], v[vgprValuC+4] // x * alpha
v_mul_f32 v[vgprValuC+4], 0x4038aa3b, v[vgprValuC+4] //  (fused 2)
v_exp_f32 v[vgprValuC+4], v[vgprValuC+4]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+4], 1.0, v[vgprValuC+4]      // e^2x + 1
v_rcp_f32 v[vgprValuC+4], v[vgprValuC+4]           // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+4], -2.0, v[vgprValuC+4], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+4], s[sgpractivationBeta], v[vgprValuC+4] // beta * tanh(x)
v_mul_f32 v[vgprValuC+5], s[sgpractivationAlpha], v[vgprValuC+5] // x * alpha
v_mul_f32 v[vgprValuC+5], 0x4038aa3b, v[vgprValuC+5] //  (fused 2)
v_exp_f32 v[vgprValuC+5], v[vgprValuC+5]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+5], 1.0, v[vgprValuC+5]      // e^2x + 1
v_rcp_f32 v[vgprValuC+5], v[vgprValuC+5]           // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+5], -2.0, v[vgprValuC+5], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+5], s[sgpractivationBeta], v[vgprValuC+5] // beta * tanh(x)
v_mul_f32 v[vgprValuC+6], s[sgpractivationAlpha], v[vgprValuC+6] // x * alpha
v_mul_f32 v[vgprValuC+6], 0x4038aa3b, v[vgprValuC+6] //  (fused 2)
v_exp_f32 v[vgprValuC+6], v[vgprValuC+6]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+6], 1.0, v[vgprValuC+6]      // e^2x + 1
v_rcp_f32 v[vgprValuC+6], v[vgprValuC+6]           // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+6], -2.0, v[vgprValuC+6], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+6], s[sgpractivationBeta], v[vgprValuC+6] // beta * tanh(x)
v_mul_f32 v[vgprValuC+7], s[sgpractivationAlpha], v[vgprValuC+7] // x * alpha
v_mul_f32 v[vgprValuC+7], 0x4038aa3b, v[vgprValuC+7] //  (fused 2)
v_exp_f32 v[vgprValuC+7], v[vgprValuC+7]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+7], 1.0, v[vgprValuC+7]      // e^2x + 1
v_rcp_f32 v[vgprValuC+7], v[vgprValuC+7]           // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+7], -2.0, v[vgprValuC+7], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+7], s[sgpractivationBeta], v[vgprValuC+7] // beta * tanh(x)
v_mul_f32 v[vgprValuC+8], s[sgpractivationAlpha], v[vgprValuC+8] // x * alpha
v_mul_f32 v[vgprValuC+8], 0x4038aa3b, v[vgprValuC+8] //  (fused 2)
v_exp_f32 v[vgprValuC+8], v[vgprValuC+8]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+8], 1.0, v[vgprValuC+8]      // e^2x + 1
v_rcp_f32 v[vgprValuC+8], v[vgprValuC+8]           // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+8], -2.0, v[vgprValuC+8], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+8], s[sgpractivationBeta], v[vgprValuC+8] // beta * tanh(x)
v_mul_f32 v[vgprValuC+9], s[sgpractivationAlpha], v[vgprValuC+9] // x * alpha
v_mul_f32 v[vgprValuC+9], 0x4038aa3b, v[vgprValuC+9] //  (fused 2)
v_exp_f32 v[vgprValuC+9], v[vgprValuC+9]           // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+9], 1.0, v[vgprValuC+9]      // e^2x + 1
v_rcp_f32 v[vgprValuC+9], v[vgprValuC+9]           // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+9], -2.0, v[vgprValuC+9], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+9], s[sgpractivationBeta], v[vgprValuC+9] // beta * tanh(x)
v_mul_f32 v[vgprValuC+10], s[sgpractivationAlpha], v[vgprValuC+10] // x * alpha
v_mul_f32 v[vgprValuC+10], 0x4038aa3b, v[vgprValuC+10] //  (fused 2)
v_exp_f32 v[vgprValuC+10], v[vgprValuC+10]         // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+10], 1.0, v[vgprValuC+10]    // e^2x + 1
v_rcp_f32 v[vgprValuC+10], v[vgprValuC+10]         // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+10], -2.0, v[vgprValuC+10], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+10], s[sgpractivationBeta], v[vgprValuC+10] // beta * tanh(x)
v_mul_f32 v[vgprValuC+11], s[sgpractivationAlpha], v[vgprValuC+11] // x * alpha
v_mul_f32 v[vgprValuC+11], 0x4038aa3b, v[vgprValuC+11] //  (fused 2)
v_exp_f32 v[vgprValuC+11], v[vgprValuC+11]         // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v[vgprValuC+11], 1.0, v[vgprValuC+11]    // e^2x + 1
v_rcp_f32 v[vgprValuC+11], v[vgprValuC+11]         // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v[vgprValuC+11], -2.0, v[vgprValuC+11], 1.0 // (-2) * (1 / (e^2x + 1)) + 1
v_mul_f32 v[vgprValuC+11], s[sgpractivationBeta], v[vgprValuC+11] // beta * tanh(x)
s_setpc_b64 s[72:73]
label_Activation_Geluscaling_VW8:
v_mul_f32 v12, 0x3d372713, v[vgprValuC+4]          // k1 * x
v_fma_f32 v12, v[vgprValuC+4], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+4], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+4], v12                 // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+4], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+5]          // k1 * x
v_fma_f32 v12, v[vgprValuC+5], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+5], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+5], v12                 // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+5], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+6]          // k1 * x
v_fma_f32 v12, v[vgprValuC+6], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+6], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+6], v12                 // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+6], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+7]          // k1 * x
v_fma_f32 v12, v[vgprValuC+7], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+7], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+7], v12                 // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+7], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+8]          // k1 * x
v_fma_f32 v12, v[vgprValuC+8], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+8], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+8], v12                 // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+8], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+9]          // k1 * x
v_fma_f32 v12, v[vgprValuC+9], v12, 1.0            // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+9], v12                 // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+9], v12                 // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+9], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+10]         // k1 * x
v_fma_f32 v12, v[vgprValuC+10], v12, 1.0           // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+10], v12                // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+10], v12                // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+10], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
v_mul_f32 v12, 0x3d372713, v[vgprValuC+11]         // k1 * x
v_fma_f32 v12, v[vgprValuC+11], v12, 1.0           // 1 + (k1 * x * x)
v_mul_f32 v12, v[vgprValuC+11], v12                // x * (1 + k1 * x * x)
v_mul_f32 v12, 0x40135761, v12                     //  (fused 2.302208)
v_exp_f32 v12, v12                                 // exp step 2
s_nop 0                                            // 1 wait states
v_add_f32 v12, 1.0, v12                            // e^2x + 1
v_rcp_f32 v12, v12                                 // 1 / (e^2x + 1)
s_nop 0                                            // 1 wait states
v_fma_f32 v12, -2.0, v12, 2.0                      //  ( + 1 (fused))
v_mul_f32 v12, v[vgprValuC+11], v12                // x * (1 + tanh(...))
v_mul_f32 v12, 0.5, v12                            // 0.5 * x * (1 + tanh(...))
v_mul_f32 v[vgprValuC+11], s[sgpractivationAlpha], v12 // 0.5 * x * (1 + tanh(...)) * scale
s_setpc_b64 s[72:73]
label_GW_End_1:
label_KernelEnd:
s_endpgm                                           // Kernel End
