// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Nov  2 10:07:54 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/ip_repo/hdmi_text_controller_1_0/src/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9043 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "600" *) 
  (* C_READ_DEPTH_B = "600" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "600" *) 
  (* C_WRITE_DEPTH_B = "600" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28496)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
