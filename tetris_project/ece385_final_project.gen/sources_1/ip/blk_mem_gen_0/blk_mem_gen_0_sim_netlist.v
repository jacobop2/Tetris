// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 10 14:09:49 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [2:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [2:0]douta;
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
  wire [2:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.4081 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "12288" *) 
  (* C_READ_DEPTH_B = "12288" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "3" *) 
  (* C_READ_WIDTH_B = "3" *) 
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
  (* C_WRITE_DEPTH_A = "12288" *) 
  (* C_WRITE_DEPTH_B = "12288" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[2:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[2:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34544)
`pragma protect data_block
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
iw4=
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
