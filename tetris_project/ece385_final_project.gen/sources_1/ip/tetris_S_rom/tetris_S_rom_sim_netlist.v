// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Nov 14 14:27:47 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_S_rom/tetris_S_rom_sim_netlist.v
// Design      : tetris_S_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_S_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_S_rom
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
  (* C_INIT_FILE = "tetris_S_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_S_rom.mif" *) 
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
  tetris_S_rom_blk_mem_gen_v8_4_5 U0
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
AezL3ZTHGLbc0GfzdSV1bkxY7rx1rQ==
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
