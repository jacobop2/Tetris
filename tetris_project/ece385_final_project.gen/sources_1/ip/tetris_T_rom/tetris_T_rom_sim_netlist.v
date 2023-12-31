// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Nov 14 14:30:32 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_T_rom/tetris_T_rom_sim_netlist.v
// Design      : tetris_T_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_T_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_T_rom
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
  (* C_INIT_FILE = "tetris_T_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_T_rom.mif" *) 
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
  tetris_T_rom_blk_mem_gen_v8_4_5 U0
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
RKCShnQYzo9NU/3rSsYvGw11qoooOw==
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
