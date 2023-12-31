// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Nov 14 14:32:55 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/tetris_backL_rom/tetris_backL_rom_sim_netlist.v
// Design      : tetris_backL_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tetris_backL_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module tetris_backL_rom
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
  (* C_INIT_FILE = "tetris_backL_rom.mem" *) 
  (* C_INIT_FILE_NAME = "tetris_backL_rom.mif" *) 
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
  tetris_backL_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17968)
`pragma protect data_block
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
FneZKC8MQWoqZlKZwA==
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
