// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Nov 14 14:25:48 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_square_rom/tetris_square_rom_sim_netlist.v
// Design      : tetris_square_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_square_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_square_rom
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [3:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.105199 mW" *) 
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
  (* C_INIT_FILE = "tetris_square_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_square_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "4" *) 
  (* C_WRITE_WIDTH_B = "4" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  tetris_square_rom_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18640)
`pragma protect data_block
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
ug==
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
