
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1

// Verification Directory fv/ag_dep_v_ld_logic 

module ag_dep_v_ld_logic(V_ag, eip_change, in1, in2, in1_needed,
     in2_needed, seg1, seg2, seg1_needed, seg2_needed, esp_needed,
     ro_dreg1, ro_dreg2, ro_dreg3, v_ro_ld_reg1, v_ro_ld_reg2,
     v_ro_ld_reg3, ex_dreg1, ex_dreg2, ex_dreg3, v_ex_ld_reg1,
     v_ex_ld_reg2, v_ex_ld_reg3, wb_dreg1, wb_dreg2, wb_dreg3,
     v_wb_ld_reg1, v_wb_ld_reg2, v_wb_ld_reg3, ro_dseg, v_ro_ld_seg,
     ex_dseg, v_ex_ld_seg, wb_dseg, v_wb_ld_seg, stall_ro,
     ro_dep_stall, ro_cmps_stall, mem_rd_busy, dc_exp, ld_reg1,
     ld_reg2, ld_reg3, ld_flag_ZF, v_ag_ld_reg1, v_ag_ld_reg2,
     v_ag_ld_reg3, v_ag_ld_flag_ZF, dep_stall, br_stall, stall_ag,
     V_ro, ld_ro, ex_dep_stall, wb_mem_stall);
  input V_ag, eip_change, in1_needed, in2_needed, seg1_needed,
       seg2_needed, esp_needed, v_ro_ld_reg1, v_ro_ld_reg2,
       v_ro_ld_reg3, v_ex_ld_reg1, v_ex_ld_reg2, v_ex_ld_reg3,
       v_wb_ld_reg1, v_wb_ld_reg2, v_wb_ld_reg3, v_ro_ld_seg,
       v_ex_ld_seg, v_wb_ld_seg, stall_ro, ro_dep_stall, ro_cmps_stall,
       mem_rd_busy, dc_exp, ld_reg1, ld_reg2, ld_reg3, ld_flag_ZF,
       ex_dep_stall, wb_mem_stall;
  input [2:0] in1, in2, seg1, seg2, ro_dreg1, ro_dreg2, ro_dreg3,
       ex_dreg1, ex_dreg2, ex_dreg3, wb_dreg1, wb_dreg2, wb_dreg3,
       ro_dseg, ex_dseg, wb_dseg;
  output v_ag_ld_reg1, v_ag_ld_reg2, v_ag_ld_reg3, v_ag_ld_flag_ZF,
       dep_stall, br_stall, stall_ag, V_ro, ld_ro;
  wire V_ag, eip_change, in1_needed, in2_needed, seg1_needed,
       seg2_needed, esp_needed, v_ro_ld_reg1, v_ro_ld_reg2,
       v_ro_ld_reg3, v_ex_ld_reg1, v_ex_ld_reg2, v_ex_ld_reg3,
       v_wb_ld_reg1, v_wb_ld_reg2, v_wb_ld_reg3, v_ro_ld_seg,
       v_ex_ld_seg, v_wb_ld_seg, stall_ro, ro_dep_stall, ro_cmps_stall,
       mem_rd_busy, dc_exp, ld_reg1, ld_reg2, ld_reg3, ld_flag_ZF,
       ex_dep_stall, wb_mem_stall;
  wire [2:0] in1, in2, seg1, seg2, ro_dreg1, ro_dreg2, ro_dreg3,
       ex_dreg1, ex_dreg2, ex_dreg3, wb_dreg1, wb_dreg2, wb_dreg3,
       ro_dseg, ex_dseg, wb_dseg;
  wire v_ag_ld_reg1, v_ag_ld_reg2, v_ag_ld_reg3, v_ag_ld_flag_ZF,
       dep_stall, br_stall, stall_ag, V_ro, ld_ro;
  wire n_0, n_1, n_2, n_3, n_5, n_6, n_7, n_8;
  wire n_9, n_10, n_11, n_12, n_13, n_14, n_15, n_16;
  wire n_17, n_19, n_22, n_23, n_24, n_28, n_29, n_30;
  wire n_31, n_32, n_33, n_34, n_35, n_36, n_37, n_38;
  wire n_39, n_40, n_41, n_42, n_43, n_44, n_45, n_46;
  wire n_47, n_48, n_49, n_50, n_51, n_52, n_53, n_54;
  wire n_55, n_56, n_57, n_58, n_59, n_60, n_61, n_62;
  wire n_63, n_64, n_65, n_66, n_67, n_68, n_69, n_70;
  wire n_71, n_72, n_73, n_74, n_75, n_76, n_77, n_78;
  wire n_79, n_80, n_81, n_82, n_83, n_84, n_85, n_86;
  wire n_87, n_88, n_89, n_90, n_91, n_92, n_93, n_94;
  wire n_95, n_96, n_97, n_98, n_99, n_100, n_101, n_102;
  wire n_103, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_115, n_116, n_117, n_118, n_119;
  wire n_120, n_121, n_122, n_123, n_124, n_125, n_126, n_127;
  wire n_128, n_129, n_130, n_131, n_132, n_133, n_134, n_135;
  wire n_136, n_139, n_140, n_141, n_142, n_143, n_144, n_145;
  wire n_146, n_147, n_148, n_149, n_150, n_151, n_152, n_153;
  wire n_154, n_155, n_156, n_157, n_158, n_159, n_160, n_162;
  wire n_163, n_243, n_245, n_246;
  nand3$ g25724(.in0 (n_158), .in1 (n_162), .in2 (n_163), .out
       (dep_stall));
  nand2$ g25725(.in0 (n_160), .in1 (V_ag), .out (n_162));
  and3$ g25729(.in0 (n_156), .in1 (n_157), .in2 (n_54), .out (n_159));
  nor2$ g25726(.in0 (n_155), .in1 (n_154), .out (n_163));
  nand3$ g25728(.in0 (n_151), .in1 (n_153), .in2 (n_152), .out (n_160));
  and2$ g25732(.in0 (n_157), .in1 (n_156), .out (n_158));
  nor2$ g25730(.in0 (n_150), .in1 (n_23), .out (n_155));
  nor2$ g25731(.in0 (n_149), .in1 (n_24), .out (n_154));
  nand3$ g25735(.in0 (V_ag), .in1 (n_145), .in2 (in1_needed), .out
       (n_157));
  nand2$ g25736(.in0 (n_148), .in1 (esp_needed), .out (n_153));
  nand3$ g25737(.in0 (V_ag), .in1 (n_144), .in2 (in2_needed), .out
       (n_156));
  nand2$ g25733(.in0 (n_143), .in1 (seg2_needed), .out (n_152));
  nand2$ g25734(.in0 (n_147), .in1 (seg1_needed), .out (n_151));
  nor2$ g25738(.in0 (n_141), .in1 (n_142), .out (n_150));
  nor2$ g25739(.in0 (n_140), .in1 (n_146), .out (n_149));
  nand3$ g25744(.in0 (n_139), .in1 (n_136), .in2 (n_130), .out (n_148));
  nand3$ g25742(.in0 (n_112), .in1 (n_123), .in2 (n_133), .out (n_147));
  nand3$ g25743(.in0 (n_116), .in1 (n_119), .in2 (n_114), .out (n_146));
  nand4$ g25745(.in0 (n_111), .in1 (n_117), .in2 (n_120), .in3 (n_134),
       .out (n_145));
  nand4$ g25746(.in0 (n_115), .in1 (n_118), .in2 (n_131), .in3 (n_135),
       .out (n_144));
  nand3$ g25740(.in0 (n_128), .in1 (n_113), .in2 (n_126), .out (n_143));
  nand3$ g25741(.in0 (n_125), .in1 (n_127), .in2 (n_124), .out (n_142));
  nand2$ g25747(.in0 (n_132), .in1 (n_129), .out (n_141));
  nand2$ g25748(.in0 (n_122), .in1 (n_121), .out (n_140));
  nor3$ g25750(.in0 (n_108), .in1 (n_105), .in2 (n_107), .out (n_139));
  nand2$ g25749(.in0 (stall_ag), .in1 (n_17), .out (ld_ro));
  and4$ g25770(.in0 (n_246), .in1 (n_109), .in2 (n_106), .in3 (n_103),
       .out (n_136));
  nand4$ g25754(.in0 (n_48), .in1 (n_49), .in2 (n_51), .in3
       (v_wb_ld_reg1), .out (n_135));
  nand4$ g25773(.in0 (n_57), .in1 (n_58), .in2 (n_61), .in3
       (v_wb_ld_reg1), .out (n_134));
  nand4$ g25774(.in0 (n_62), .in1 (n_69), .in2 (n_83), .in3
       (v_ex_ld_seg), .out (n_133));
  nand4$ g25755(.in0 (n_44), .in1 (n_45), .in2 (n_46), .in3
       (v_wb_ld_reg2), .out (n_132));
  nand4$ g25775(.in0 (n_78), .in1 (n_81), .in2 (n_56), .in3
       (v_ex_ld_reg1), .out (n_131));
  nor2$ g25776(.in0 (n_102), .in1 (n_110), .out (n_130));
  nand4$ g25756(.in0 (n_39), .in1 (n_41), .in2 (n_42), .in3
       (v_wb_ld_reg3), .out (n_129));
  nand4$ g25757(.in0 (n_34), .in1 (n_37), .in2 (n_40), .in3
       (v_ro_ld_seg), .out (n_128));
  nand4$ g25758(.in0 (n_35), .in1 (n_36), .in2 (n_38), .in3
       (v_ro_ld_reg3), .out (n_127));
  nand4$ g25759(.in0 (n_99), .in1 (n_29), .in2 (n_31), .in3
       (v_ex_ld_seg), .out (n_126));
  nand4$ g25760(.in0 (n_30), .in1 (n_32), .in2 (n_33), .in3
       (v_ro_ld_reg1), .out (n_125));
  nand4$ g25761(.in0 (n_100), .in1 (n_101), .in2 (n_28), .in3
       (v_ro_ld_reg2), .out (n_124));
  nand4$ g25762(.in0 (n_76), .in1 (n_94), .in2 (n_97), .in3
       (v_wb_ld_seg), .out (n_123));
  nand4$ g25763(.in0 (n_95), .in1 (n_96), .in2 (n_98), .in3
       (v_wb_ld_reg2), .out (n_122));
  nand4$ g25764(.in0 (n_90), .in1 (n_91), .in2 (n_93), .in3
       (v_wb_ld_reg3), .out (n_121));
  nand4$ g25765(.in0 (n_86), .in1 (n_89), .in2 (n_92), .in3
       (v_ex_ld_reg1), .out (n_120));
  nand4$ g25766(.in0 (n_84), .in1 (n_85), .in2 (n_87), .in3
       (v_ro_ld_reg2), .out (n_119));
  nand4$ g25751(.in0 (n_65), .in1 (n_67), .in2 (n_72), .in3
       (v_ex_ld_reg3), .out (n_118));
  nand4$ g25767(.in0 (n_70), .in1 (n_74), .in2 (n_79), .in3
       (v_ex_ld_reg2), .out (n_117));
  nand4$ g25768(.in0 (n_77), .in1 (n_80), .in2 (n_82), .in3
       (v_ro_ld_reg1), .out (n_116));
  nand4$ g25752(.in0 (n_52), .in1 (n_53), .in2 (n_59), .in3
       (v_ex_ld_reg2), .out (n_115));
  nand4$ g25769(.in0 (n_71), .in1 (n_73), .in2 (n_75), .in3
       (v_ro_ld_reg3), .out (n_114));
  nand4$ g25753(.in0 (n_43), .in1 (n_47), .in2 (n_50), .in3
       (v_wb_ld_seg), .out (n_113));
  nand4$ g25771(.in0 (n_55), .in1 (n_60), .in2 (n_66), .in3
       (v_ro_ld_seg), .out (n_112));
  nand4$ g25772(.in0 (n_63), .in1 (n_64), .in2 (n_68), .in3
       (v_ex_ld_reg3), .out (n_111));
  nand2$ g25777(.in0 (n_88), .in1 (n_22), .out (stall_ag));
  nor4$ g25832(.in0 (wb_dreg3[1]), .in1 (n_10), .in2 (n_13), .in3
       (wb_dreg3[0]), .out (n_110));
  nand4$ g25779(.in0 (ex_dreg2[2]), .in1 (n_11), .in2 (n_9), .in3
       (v_ex_ld_reg2), .out (n_109));
  nor4$ g25838(.in0 (ro_dreg2[1]), .in1 (n_3), .in2 (n_12), .in3
       (ro_dreg2[0]), .out (n_108));
  nor4$ g25783(.in0 (ro_dreg3[1]), .in1 (n_15), .in2 (n_16), .in3
       (ro_dreg3[0]), .out (n_107));
  nand4$ g25850(.in0 (ex_dreg1[2]), .in1 (n_1), .in2 (n_2), .in3
       (v_ex_ld_reg1), .out (n_106));
  nor4$ g25790(.in0 (ro_dreg1[1]), .in1 (n_0), .in2 (n_8), .in3
       (ro_dreg1[0]), .out (n_105));
  nand4$ g25799(.in0 (wb_dreg1[2]), .in1 (n_6), .in2 (n_19), .in3
       (v_wb_ld_reg1), .out (n_103));
  nor4$ g25813(.in0 (wb_dreg2[1]), .in1 (n_14), .in2 (n_5), .in3
       (wb_dreg2[0]), .out (n_102));
  xnor2$ g25820(.in0 (in1[2]), .in1 (ro_dreg2[2]), .out (n_101));
  xnor2$ g25821(.in0 (in1[1]), .in1 (ro_dreg2[1]), .out (n_100));
  xnor2$ g25822(.in0 (seg2[0]), .in1 (ex_dseg[0]), .out (n_99));
  xnor2$ g25823(.in0 (in2[2]), .in1 (wb_dreg2[2]), .out (n_98));
  xnor2$ g25824(.in0 (seg1[1]), .in1 (wb_dseg[1]), .out (n_97));
  xnor2$ g25825(.in0 (in2[1]), .in1 (wb_dreg2[1]), .out (n_96));
  xnor2$ g25826(.in0 (in2[0]), .in1 (wb_dreg2[0]), .out (n_95));
  xnor2$ g25827(.in0 (seg1[2]), .in1 (wb_dseg[2]), .out (n_94));
  xnor2$ g25828(.in0 (in2[2]), .in1 (wb_dreg3[2]), .out (n_93));
  xnor2$ g25829(.in0 (in1[0]), .in1 (ex_dreg1[0]), .out (n_92));
  xnor2$ g25830(.in0 (in2[1]), .in1 (wb_dreg3[1]), .out (n_91));
  xnor2$ g25831(.in0 (in2[0]), .in1 (wb_dreg3[0]), .out (n_90));
  xnor2$ g25833(.in0 (in1[2]), .in1 (ex_dreg1[2]), .out (n_89));
  nor3$ g25778(.in0 (mem_rd_busy), .in1 (ro_cmps_stall), .in2
       (ex_dep_stall), .out (n_88));
  xnor2$ g25834(.in0 (in2[2]), .in1 (ro_dreg2[2]), .out (n_87));
  xnor2$ g25835(.in0 (in1[1]), .in1 (ex_dreg1[1]), .out (n_86));
  xnor2$ g25836(.in0 (in2[1]), .in1 (ro_dreg2[1]), .out (n_85));
  xnor2$ g25837(.in0 (in2[0]), .in1 (ro_dreg2[0]), .out (n_84));
  xnor2$ g25780(.in0 (seg1[2]), .in1 (ex_dseg[2]), .out (n_83));
  xnor2$ g25839(.in0 (in2[0]), .in1 (ro_dreg1[0]), .out (n_82));
  xnor2$ g25781(.in0 (in2[2]), .in1 (ex_dreg1[2]), .out (n_81));
  xnor2$ g25840(.in0 (in2[2]), .in1 (ro_dreg1[2]), .out (n_80));
  xnor2$ g25841(.in0 (in1[2]), .in1 (ex_dreg2[2]), .out (n_79));
  xnor2$ g25782(.in0 (in2[0]), .in1 (ex_dreg1[0]), .out (n_78));
  xnor2$ g25842(.in0 (in2[1]), .in1 (ro_dreg1[1]), .out (n_77));
  xnor2$ g25843(.in0 (seg1[0]), .in1 (wb_dseg[0]), .out (n_76));
  xnor2$ g25844(.in0 (in2[0]), .in1 (ro_dreg3[0]), .out (n_75));
  xnor2$ g25845(.in0 (in1[1]), .in1 (ex_dreg2[1]), .out (n_74));
  xnor2$ g25846(.in0 (in2[2]), .in1 (ro_dreg3[2]), .out (n_73));
  xnor2$ g25784(.in0 (in2[0]), .in1 (ex_dreg3[0]), .out (n_72));
  xnor2$ g25847(.in0 (in2[1]), .in1 (ro_dreg3[1]), .out (n_71));
  xnor2$ g25848(.in0 (in1[0]), .in1 (ex_dreg2[0]), .out (n_70));
  xnor2$ g25785(.in0 (seg1[1]), .in1 (ex_dseg[1]), .out (n_69));
  xnor2$ g25849(.in0 (in1[2]), .in1 (ex_dreg3[2]), .out (n_68));
  xnor2$ g25786(.in0 (in2[2]), .in1 (ex_dreg3[2]), .out (n_67));
  xnor2$ g25851(.in0 (seg1[2]), .in1 (ro_dseg[2]), .out (n_66));
  xnor2$ g25787(.in0 (in2[1]), .in1 (ex_dreg3[1]), .out (n_65));
  xnor2$ g25852(.in0 (in1[1]), .in1 (ex_dreg3[1]), .out (n_64));
  xnor2$ g25853(.in0 (in1[0]), .in1 (ex_dreg3[0]), .out (n_63));
  xnor2$ g25788(.in0 (seg1[0]), .in1 (ex_dseg[0]), .out (n_62));
  xnor2$ g25854(.in0 (in1[0]), .in1 (wb_dreg1[0]), .out (n_61));
  xnor2$ g25855(.in0 (seg1[1]), .in1 (ro_dseg[1]), .out (n_60));
  xnor2$ g25789(.in0 (in2[1]), .in1 (ex_dreg2[1]), .out (n_59));
  xnor2$ g25856(.in0 (in1[2]), .in1 (wb_dreg1[2]), .out (n_58));
  xnor2$ g25857(.in0 (in1[1]), .in1 (wb_dreg1[1]), .out (n_57));
  xnor2$ g25858(.in0 (in2[1]), .in1 (ex_dreg1[1]), .out (n_56));
  xnor2$ g25859(.in0 (seg1[0]), .in1 (ro_dseg[0]), .out (n_55));
  nor2$ g25860(.in0 (n_7), .in1 (dc_exp), .out (n_54));
  xnor2$ g25791(.in0 (in2[2]), .in1 (ex_dreg2[2]), .out (n_53));
  xnor2$ g25792(.in0 (in2[0]), .in1 (ex_dreg2[0]), .out (n_52));
  xnor2$ g25794(.in0 (in2[0]), .in1 (wb_dreg1[0]), .out (n_51));
  xnor2$ g25795(.in0 (seg2[1]), .in1 (wb_dseg[1]), .out (n_50));
  xnor2$ g25796(.in0 (in2[2]), .in1 (wb_dreg1[2]), .out (n_49));
  xnor2$ g25797(.in0 (in2[1]), .in1 (wb_dreg1[1]), .out (n_48));
  xnor2$ g25798(.in0 (seg2[2]), .in1 (wb_dseg[2]), .out (n_47));
  xnor2$ g25800(.in0 (in1[1]), .in1 (wb_dreg2[1]), .out (n_46));
  xnor2$ g25801(.in0 (in1[2]), .in1 (wb_dreg2[2]), .out (n_45));
  xnor2$ g25802(.in0 (in1[0]), .in1 (wb_dreg2[0]), .out (n_44));
  xnor2$ g25803(.in0 (seg2[0]), .in1 (wb_dseg[0]), .out (n_43));
  xnor2$ g25804(.in0 (in1[1]), .in1 (wb_dreg3[1]), .out (n_42));
  xnor2$ g25805(.in0 (in1[2]), .in1 (wb_dreg3[2]), .out (n_41));
  xnor2$ g25806(.in0 (seg2[0]), .in1 (ro_dseg[0]), .out (n_40));
  xnor2$ g25807(.in0 (in1[0]), .in1 (wb_dreg3[0]), .out (n_39));
  xnor2$ g25808(.in0 (in1[2]), .in1 (ro_dreg3[2]), .out (n_38));
  xnor2$ g25809(.in0 (seg2[2]), .in1 (ro_dseg[2]), .out (n_37));
  xnor2$ g25810(.in0 (in1[1]), .in1 (ro_dreg3[1]), .out (n_36));
  xnor2$ g25811(.in0 (in1[0]), .in1 (ro_dreg3[0]), .out (n_35));
  xnor2$ g25812(.in0 (seg2[1]), .in1 (ro_dseg[1]), .out (n_34));
  xnor2$ g25814(.in0 (in1[0]), .in1 (ro_dreg1[0]), .out (n_33));
  xnor2$ g25815(.in0 (in1[2]), .in1 (ro_dreg1[2]), .out (n_32));
  xnor2$ g25816(.in0 (seg2[1]), .in1 (ex_dseg[1]), .out (n_31));
  xnor2$ g25817(.in0 (in1[1]), .in1 (ro_dreg1[1]), .out (n_30));
  xnor2$ g25818(.in0 (seg2[2]), .in1 (ex_dseg[2]), .out (n_29));
  xnor2$ g25819(.in0 (in1[0]), .in1 (ro_dreg2[0]), .out (n_28));
  and2$ g25861(.in0 (V_ag), .in1 (ld_reg1), .out (v_ag_ld_reg1));
  and2$ g25867(.in0 (V_ag), .in1 (ld_flag_ZF), .out (v_ag_ld_flag_ZF));
  and2$ g25868(.in0 (V_ag), .in1 (eip_change), .out (br_stall));
  nand2$ g25863(.in0 (V_ag), .in1 (in2_needed), .out (n_24));
  nand2$ g25864(.in0 (V_ag), .in1 (in1_needed), .out (n_23));
  nor2$ g25866(.in0 (ro_dep_stall), .in1 (wb_mem_stall), .out (n_22));
  and2$ g25865(.in0 (V_ag), .in1 (ld_reg3), .out (v_ag_ld_reg3));
  and2$ g25862(.in0 (V_ag), .in1 (ld_reg2), .out (v_ag_ld_reg2));
  inv1$ g25883(.in (wb_dreg1[1]), .out (n_19));
  inv1$ g25886(.in (dc_exp), .out (n_17));
  inv1$ g25870(.in (ro_dreg3[2]), .out (n_16));
  inv1$ g25878(.in (v_ro_ld_reg3), .out (n_15));
  inv1$ g25887(.in (v_wb_ld_reg2), .out (n_14));
  inv1$ g25874(.in (wb_dreg3[2]), .out (n_13));
  inv1$ g25875(.in (ro_dreg2[2]), .out (n_12));
  inv1$ g25881(.in (ex_dreg2[0]), .out (n_11));
  inv1$ g25880(.in (v_wb_ld_reg3), .out (n_10));
  inv1$ g25876(.in (ex_dreg2[1]), .out (n_9));
  inv1$ g25872(.in (ro_dreg1[2]), .out (n_8));
  inv1$ g25882(.in (V_ag), .out (n_7));
  inv1$ g25888(.in (wb_dreg1[0]), .out (n_6));
  inv1$ g25884(.in (wb_dreg2[2]), .out (n_5));
  inv1$ g25879(.in (v_ro_ld_reg2), .out (n_3));
  inv1$ g25873(.in (ex_dreg1[1]), .out (n_2));
  inv1$ g25871(.in (ex_dreg1[0]), .out (n_1));
  inv1$ g25869(.in (v_ro_ld_reg1), .out (n_0));
  nor2$ g2(.in0 (n_243), .in1 (n_160), .out (V_ro));
  nand2$ g3(.in0 (n_159), .in1 (n_163), .out (n_243));
  nand3$ g25889(.in0 (n_245), .in1 (ex_dreg3[2]), .in2 (v_ex_ld_reg3),
       .out (n_246));
  nor2$ g25890(.in0 (ex_dreg3[0]), .in1 (ex_dreg3[1]), .out (n_245));
endmodule

