// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 11 18:21:45 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_board_ram/tetris_board_ram_sim_netlist.v
// Design      : tetris_board_ram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_board_ram,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_board_ram
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [0:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [0:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [0:0]dina;
  wire [0:0]dinb;
  wire [0:0]douta;
  wire [0:0]doutb;
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
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.198465 mW" *) 
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
  (* C_INIT_FILE = "tetris_board_ram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "200" *) 
  (* C_READ_DEPTH_B = "200" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "200" *) 
  (* C_WRITE_DEPTH_B = "200" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tetris_board_ram_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22720)
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
