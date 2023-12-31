// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 10 16:27:52 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_logo/tetris_logo_sim_netlist.v
// Design      : tetris_logo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_logo,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_logo
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [3:0]douta;
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
  wire [3:0]NLW_U0_doutb_UNCONNECTED;
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.300549 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
  (* C_INIT_FILE = "tetris_logo.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_logo.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4800" *) 
  (* C_READ_DEPTH_B = "4800" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "4" *) 
  (* C_READ_WIDTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "4800" *) 
  (* C_WRITE_DEPTH_B = "4800" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tetris_logo_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[3:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[3:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25184)
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
