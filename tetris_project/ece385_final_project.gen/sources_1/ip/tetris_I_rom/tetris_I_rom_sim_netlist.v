// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Nov 11 13:23:27 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_I_rom/tetris_I_rom_sim_netlist.v
// Design      : tetris_I_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_I_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_I_rom
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
  (* C_INIT_FILE = "tetris_I_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_I_rom.mif" *) 
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
  tetris_I_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18576)
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
