// 8-bit Load Group
if (pla[61] ) begin
    $display("pla[61] : ld r,r'");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[17] && !pla[50] ) begin
    $display("pla[17] && !pla[50] : ld r,n");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: PC not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1;ERROR: PC not in A:reg_wr end
    if (M2 && T3) begin  fMRead=1;nextM=1;setM1=1;ERROR: r8 not in D:reg_wrERROR: R not in DB pads end
end

if (pla[58] ) begin
    $display("pla[58] : ld r,(hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: HL not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1;setM1=1;ERROR: r8 not in D:reg_wrERROR: R not in DB pads end
end

if (use_ixiy && pla[58] ) begin
    $display("use_ixiy && pla[58] : ld r,(ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: PC not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1; end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1; end
    if (M4 && T1) begin  fMRead=1; end
    if (M4 && T2) begin  fMRead=1; end
    if (M4 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[59] ) begin
    $display("pla[59] : ld (hl),r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1;ERROR: r8 not in D:reg_rdERROR: W not in DB pads end
    if (M2 && T1) begin  fMWrite=1;ERROR: HL not in A:reg_rd end
    if (M2 && T2) begin  fMWrite=1; end
    if (M2 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (use_ixiy && pla[59] ) begin
    $display("use_ixiy && pla[59] : ld (ix+d),r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: PC not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1; end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[50] && !pla[40] ) begin
    $display("pla[50] && !pla[40] : ld (hl),n");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: PC not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMWrite=1;ERROR: HL not in A:reg_rd end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[40] ) begin
    $display("pla[40] : ld (ix+d),n");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: PC not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1; end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[8] && pla[13] ) begin
    $display("pla[8] && pla[13] : ld (rr),a");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1;ERROR: A not in D:reg_rdERROR: W not in DB pads end
    if (M2 && T1) begin  fMWrite=1;ERROR: r16 not in A:reg_rd end
    if (M2 && T2) begin  fMWrite=1; end
    if (M2 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[8] && !pla[13] ) begin
    $display("pla[8] && !pla[13] : ld a,(rr)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1;ERROR: r16 not in A:reg_rd end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[38] && pla[13] ) begin
    $display("pla[38] && pla[13] : ld (nn),a");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[38] && !pla[13] ) begin
    $display("pla[38] && !pla[13] : ld a,(nn)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1; end
    if (M4 && T1) begin  fMRead=1; end
    if (M4 && T2) begin  fMRead=1; end
    if (M4 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[83] ) begin
    $display("pla[83] : ld a,i/a,r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1;setM1=1;ERROR: I not in D:reg_rd end
end

if (pla[57] ) begin
    $display("pla[57] : ld i,a/r,a");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1;setM1=1; end
end

// 16-bit Load Group
if (pla[7] ) begin
    $display("pla[7] : ld rr,nn");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[30] && pla[13] ) begin
    $display("pla[30] && pla[13] : ld (nn),hl");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1; end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[30] && !pla[13] ) begin
    $display("pla[30] && !pla[13] : ld hl,(nn)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1; end
    if (M4 && T1) begin  fMRead=1; end
    if (M4 && T2) begin  fMRead=1; end
    if (M4 && T3) begin  fMRead=1;nextM=1; end
    if (M5 && T1) begin  fMRead=1; end
    if (M5 && T2) begin  fMRead=1; end
    if (M5 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[31] && pla[33] ) begin
    $display("pla[31] && pla[33] : ld (nn),rr");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1; end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[31] && !pla[33] ) begin
    $display("pla[31] && !pla[33] : ld rr,(nn)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1; end
    if (M4 && T1) begin  fMRead=1; end
    if (M4 && T2) begin  fMRead=1; end
    if (M4 && T3) begin  fMRead=1;nextM=1; end
    if (M5 && T1) begin  fMRead=1; end
    if (M5 && T2) begin  fMRead=1; end
    if (M5 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[5] ) begin
    $display("pla[5] : ld sp,hl");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin   end
    if (M1 && T6) begin  nextM=1;setM1=1; end
end

if (pla[23] && pla[16] ) begin
    $display("pla[23] && pla[16] : push qq");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1; end
    if (M2 && T1) begin  fMWrite=1; end
    if (M2 && T2) begin  fMWrite=1; end
    if (M2 && T3) begin  fMWrite=1;nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[23] && !pla[16] ) begin
    $display("pla[23] && !pla[16] : pop qq");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

// Exchange, Block Transfer and Search Groups
if (pla[2] ) begin
    $display("pla[2] : ex de,hl");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_reg_ex_de_hl=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[39] ) begin
    $display("pla[39] : ex af,af'");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_reg_ex_af=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[1] ) begin
    $display("pla[1] : exx");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_reg_exx=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[10] ) begin
    $display("pla[10] : ex (sp),hl");
    if (M1 && T1) begin  ERROR: PC not in A:reg_rd end
    if (M1 && T2) begin  ERROR: PC not in A:reg_wr end
    if (M1 && T3) begin  ERROR: IR not in A:reg_rd end
    if (M1 && T4) begin  contM2=1;ERROR: IR not in A:reg_wr end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1; end
    if (M3 && T4) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1; end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1; end
    if (M5 && T4) begin   end
    if (M5 && T5) begin  nextM=1;setM1=1; end
end

if (pla[12] ) begin
    $display("pla[12] : ldi/ldir/ldd/lddr");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1; end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1; end
    if (M4 && T1) begin   end
    if (M4 && T2) begin   end
    if (M4 && T3) begin   end
    if (M4 && T4) begin   end
    if (M4 && T5) begin  nextM=1;setM1=1; end
end

if (pla[11] ) begin
    $display("pla[11] : cpi/cpir/cpd/cpdr");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1; end
    if (M4 && T1) begin   end
    if (M4 && T2) begin   end
    if (M4 && T3) begin   end
    if (M4 && T4) begin   end
    if (M4 && T5) begin  nextM=1;setM1=1; end
end

// 8-bit Arithmetic and Logic Group
if (pla[65] && !pla[52] ) begin
    $display("pla[65] && !pla[52] : add/sub/and/or/xor/cmp a,r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[64] ) begin
    $display("pla[64] : add/sub/and/or/xor/cmp a,n");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (!use_ixiy && pla[52] ) begin
    $display("!use_ixiy && pla[52] : add/sub/and/or/xor/cp (hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (use_ixiy && pla[52] ) begin
    $display("use_ixiy && pla[52] : add/sub/and/or/xor/cp (ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;contM2=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  contM2=1; end
    if (M4 && T1) begin  fMRead=1; end
    if (M4 && T2) begin  fMRead=1; end
    if (M4 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (!use_ixiy && pla[66] && !pla[53] ) begin
    $display("!use_ixiy && pla[66] && !pla[53] : inc/dec r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (!use_ixiy && pla[53] // inc/dec (hl) begin
    $display("!use_ixiy && pla[53] // inc/dec (hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1; end
    if (M2 && T4) begin  nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (use_ixiy && pla[53] ) begin
    $display("use_ixiy && pla[53] : inc/dec (ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;contM2=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  contM2=1; end
    if (M4 && T1) begin  fMRead=1; end
    if (M4 && T2) begin  fMRead=1; end
    if (M4 && T3) begin  fMRead=1; end
    if (M && T) begin  contM2=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[53] && pla[75] ) begin
    $display("pla[53] && pla[75] : dec (hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1; end
    if (M2 && T4) begin  nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

// 16-bit Arithmetic Group
if (pla[69] ) begin
    $display("pla[69] : add hl,ss");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin   end
    if (M2 && T2) begin   end
    if (M2 && T3) begin   end
    if (M2 && T4) begin  nextM=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin  nextM=1;setM1=1; end
end

if (pla[68] ) begin
    $display("pla[68] : adc/sbc hl,ss");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin   end
    if (M2 && T2) begin   end
    if (M2 && T3) begin   end
    if (M2 && T4) begin  nextM=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin  nextM=1;setM1=1; end
end

if (pla[9] ) begin
    $display("pla[9] : inc/dec ss");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin   end
    if (M1 && T6) begin  nextM=1;setM1=1; end
end

// General Purpose Arithmetic and CPU Control Groups
if (pla[77] ) begin
    $display("pla[77] : daa");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[81] ) begin
    $display("pla[81] : cpl");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[82] ) begin
    $display("pla[82] : neg");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[89] ) begin
    $display("pla[89] : ccf");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_flags_cf_cpl=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[92] ) begin
    $display("pla[92] : scf");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_flags_cf_set=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[95] ) begin
    $display("pla[95] : halt");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[97] ) begin
    $display("pla[97] : di/ei");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_iffx_bit=op3;       ctl_iffx_we=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[96] ) begin
    $display("pla[96] : im n");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_im_sel=op34;        ctl_im_we=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

// Rotate and Shift Group
if (pla[25] ) begin
    $display("pla[25] : rlca/rla/rrca/rra");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[70] && !pla[55] ) begin
    $display("pla[70] && !pla[55] : rlc r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[70] && pla[55] ) begin
    $display("pla[70] && pla[55] : rlc (hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1; end
    if (M2 && T) begin  nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[15] && op3 ) begin
    $display("pla[15] && op3 : rld");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[15] && !op3 ) begin
    $display("pla[15] && !op3 : rrd");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

// Bit Manipulation Group
if (pla[72] && !pla[55] ) begin
    $display("pla[72] && !pla[55] : bit b,r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[72] && pla[55] ) begin
    $display("pla[72] && pla[55] : bit b,(hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1; end
    if (M && T) begin  nextM=1;setM1=1; end
end

if (pla[74] && !pla[55] ) begin
    $display("pla[74] && !pla[55] : set b,r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[74] && pla[55] ) begin
    $display("pla[74] && pla[55] : set b,(hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1; end
    if (M2 && T4) begin  nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[73] && !pla[55] ) begin
    $display("pla[73] && !pla[55] : res b,r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[73] && pla[55] ) begin
    $display("pla[73] && pla[55] : res b,(hl)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1; end
    if (M2 && T4) begin  nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

// Input and Output Groups
if (pla[37] && pla[28] ) begin
    $display("pla[37] && pla[28] : out (n),a");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fIOWrite=1; end
    if (M3 && T2) begin  fIOWrite=1; end
    if (M3 && T3) begin  fIOWrite=1; end
    if (M3 && T4) begin  fIOWrite=1;nextM=1;setM1=1; end
end

if (pla[37] && !pla[28] ) begin
    $display("pla[37] && !pla[28] : in a,(n)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fIORead=1; end
    if (M3 && T2) begin  fIORead=1; end
    if (M3 && T3) begin  fIORead=1; end
    if (M3 && T4) begin  fIORead=1;nextM=1;setM1=1; end
end

if (pla[27] && !pla[34] ) begin
    $display("pla[27] && !pla[34] : in r,(c)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fIORead=1; end
    if (M2 && T2) begin  fIORead=1; end
    if (M2 && T3) begin  fIORead=1; end
    if (M2 && T4) begin  fIORead=1;nextM=1;setM1=1; end
end

if (pla[27] && pla[34] ) begin
    $display("pla[27] && pla[34] : out (c),r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fIOWrite=1; end
    if (M2 && T2) begin  fIOWrite=1; end
    if (M2 && T3) begin  fIOWrite=1; end
    if (M2 && T4) begin  fIOWrite=1;nextM=1;setM1=1; end
end

if (pla[91] && pla[21] ) begin
    $display("pla[91] && pla[21] : ini/inir/ind/indr");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1; end
    if (M2 && T1) begin  fIORead=1; end
    if (M2 && T2) begin  fIORead=1; end
    if (M2 && T3) begin  fIORead=1; end
    if (M2 && T4) begin  fIORead=1;nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1; end
    if (M4 && T1) begin   end
    if (M4 && T2) begin   end
    if (M4 && T3) begin   end
    if (M4 && T4) begin   end
    if (M4 && T5) begin  nextM=1;setM1=1; end
end

if (pla[91] && pla[20] ) begin
    $display("pla[91] && pla[20] : outi/outir/outd/outdr");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1; end
    if (M2 && T1) begin  fIORead=1; end
    if (M2 && T2) begin  fIORead=1; end
    if (M2 && T3) begin  fIORead=1; end
    if (M2 && T4) begin  fIORead=1;nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1; end
    if (M4 && T1) begin   end
    if (M4 && T2) begin   end
    if (M4 && T3) begin   end
    if (M4 && T4) begin   end
    if (M4 && T5) begin  nextM=1;setM1=1; end
end

// Jump Group
if (pla[29] ) begin
    $display("pla[29] : jp nn");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[43] ) begin
    $display("pla[43] : jp cc,nn");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[47] ) begin
    $display("pla[47] : jr e");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1;setM1=1; end
end

if (pla[48] ) begin
    $display("pla[48] : jr ss,e");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1;ERROR: SS not in setM1 end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1;setM1=1; end
end

if (pla[6] ) begin
    $display("pla[6] : jp hl");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[26] ) begin
    $display("pla[26] : djnz e");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1;ERROR: E not in setM1 end
    if (M3 && T1) begin   end
    if (M3 && T2) begin   end
    if (M3 && T3) begin   end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1;setM1=1; end
end

// Call and Return Group
if (pla[24] ) begin
    $display("pla[24] : call nn");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1; end
    if (M3 && T4) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1; end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[42] ) begin
    $display("pla[42] : call cc,nn");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;ERROR: CC not in nextMERROR: CC not in setM1 end
    if (M3 && T4) begin  nextM=1; end
    if (M4 && T1) begin  fMWrite=1; end
    if (M4 && T2) begin  fMWrite=1; end
    if (M4 && T3) begin  fMWrite=1;nextM=1; end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[35] ) begin
    $display("pla[35] : ret");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[45] ) begin
    $display("pla[45] : ret cc");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1;ERROR: CC not in setM1 end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[46] ) begin
    $display("pla[46] : reti/retn");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1;nextM=1;setM1=1; end
end

if (pla[56] ) begin
    $display("pla[56] : rst p");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM1=1; end
    if (M1 && T5) begin  nextM=1; end
    if (M2 && T1) begin  fMWrite=1; end
    if (M2 && T2) begin  fMWrite=1; end
    if (M2 && T3) begin  fMWrite=1;nextM=1; end
    if (M3 && T1) begin  fMWrite=1; end
    if (M3 && T2) begin  fMWrite=1; end
    if (M3 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

// CB-Table opcodes
if (pla[49] ) begin
    $display("pla[49] : Every CB with IX/IY");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M1 && T3) begin   end
    if (M1 && T4) begin  contM2=1; end
    if (M2 && T1) begin  fMRead=1; end
    if (M2 && T2) begin  fMRead=1; end
    if (M2 && T3) begin  fMRead=1;nextM=1; end
    if (M3 && T1) begin  fMRead=1; end
    if (M3 && T2) begin  fMRead=1; end
    if (M3 && T3) begin  fMRead=1; end
    if (M3 && T4) begin   end
    if (M3 && T5) begin  nextM=1; end
    if (M4 && T1) begin   end
    if (M4 && T2) begin   end
    if (M4 && T3) begin   end
end

if (pla[54] && pla[70] && !pla[55] ) begin
    $display("pla[54] && pla[70] && !pla[55] : rlc (ix+d),r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[54] && pla[70] && pla[55] ) begin
    $display("pla[54] && pla[70] && pla[55] : rlc (ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[54] && pla[72] && !pla[55] ) begin
    $display("pla[54] && pla[72] && !pla[55] : bit b,(ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M4 && T3) begin  nextM=1;setM1=1; end
end

if (pla[54] && pla[72] && pla[55] ) begin
    $display("pla[54] && pla[72] && pla[55] : bit b,(ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M4 && T3) begin  nextM=1;setM1=1; end
end

if (pla[54] && pla[74] && !pla[55] ) begin
    $display("pla[54] && pla[74] && !pla[55] : set b,(ix+d),r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[54] && pla[74] && pla[55] ) begin
    $display("pla[54] && pla[74] && pla[55] : set b,(ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[54] && pla[73] && !pla[55] ) begin
    $display("pla[54] && pla[73] && !pla[55] : res b,(ix+d),r");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

if (pla[54] && pla[73] && pla[55] ) begin
    $display("pla[54] && pla[73] && pla[55] : res b,(ix+d)");
    if (M1 && T1) begin   end
    if (M1 && T2) begin   end
    if (M5 && T1) begin  fMWrite=1; end
    if (M5 && T2) begin  fMWrite=1; end
    if (M5 && T3) begin  fMWrite=1;nextM=1;setM1=1; end
end

// Special Purposes PLA Entries
if (pla[3] ) begin
    $display("pla[3] : IX/IY");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_state_iy_set=op5;   ctl_state_ixiy_we=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[51] ) begin
    $display("pla[51] : ED prefix");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_state_tbl_ed_set=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

if (pla[44] ) begin
    $display("pla[44] : CB prefix");
    if (M1 && T1) begin   end
    if (M1 && T2) begin  ctl_state_tbl_cb_set=1; end
    if (M1 && T3) begin   end
    if (M1 && T4) begin   end
end

