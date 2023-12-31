// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Nov 14 14:28:55 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_Z_rom/tetris_Z_rom_sim_netlist.v
// Design      : tetris_Z_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_Z_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_Z_rom
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
  (* C_INIT_FILE = "tetris_Z_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_Z_rom.mif" *) 
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
  tetris_Z_rom_blk_mem_gen_v8_4_5 U0
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
Xil9lkNLbkoaIkq39WXJ9KuGzjRfvA==
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
