// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Nov 14 14:31:53 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_L_rom/tetris_L_rom_sim_netlist.v
// Design      : tetris_L_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_L_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_L_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [10:0]addra;
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
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.1108 mW" *) 
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
  (* C_INIT_FILE = "tetris_L_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_L_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1536" *) 
  (* C_READ_DEPTH_B = "1536" *) 
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
  (* C_WRITE_DEPTH_A = "1536" *) 
  (* C_WRITE_DEPTH_B = "1536" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tetris_L_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17920)
`pragma protect data_block
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
TWo/WVGy/42QyyZwPA9UmHEsWxkVqg==
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
