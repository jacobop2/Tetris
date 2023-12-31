// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 20 16:29:28 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/fp_start_rom/fp_start_rom_sim_netlist.v
// Design      : fp_start_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_start_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fp_start_rom
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
  (* C_INIT_FILE = "fp_start_rom.mem" *) 
  (* C_INIT_FILE_NAME = "fp_start_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "9600" *) 
  (* C_READ_DEPTH_B = "9600" *) 
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
  (* C_WRITE_DEPTH_A = "9600" *) 
  (* C_WRITE_DEPTH_B = "9600" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  fp_start_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34528)
`pragma protect data_block
DFcNB8zI9QbkIuR5S0xywYzeEYQv7soTVBueJQj7C9PZrHGlt9RwB/vG1sMuMJpM9zZKC8UGcV7M
RDer7t2fKoTRM8tdP9tHne31om/3au21JFVDLcW6g5FGjtgdhHw+9xyvo5XoOvt0qtH+vl0HWuQP
gm84c91boJ4YC9F3DbgMIoxpIDFOHnRhRaEDqmumJYAW1BGKiaYJo7lBqbspfhpyjjz/wwAxgdyM
JFUGP5OybHmXpCzO4s79yYX4GhYWL6lUY9+Wwv81643c/AYKvVjmu9YRvFYvKCpEJetzb0TSqprl
PGj5P/Odd90/wV+y4mNRH4b9k/k6SJ+8e3zCit2LqXwlROoQ3aWFz4ESv/ZW9XMqjCqTeKWNXY9w
dNwVHp/pzDu8/qesFvWqSkGEJgZP7++jxQgoP1ZqnSOf9BgbB+cYbZN4pIqVnLfuBqzD9tZXYcDD
Cqb2OPFVxkdNvekvNLUT2k3L7bKL2j94W+3C4Q/WUlYmUIumiPxhhMtaosxsacPJOKt9rVuVjsC6
3DPGjpqn4kWDxp860LfzjlqR0XMJUfmiNw3B4OKubgB6SgVrjF0TcqAaUXGQ8asoG/6njDEaS8h9
J7WRH8PVLAGOccTvHONVWfbWt6O6Qb/nC9IdIF61m7XickCrcAIfQTtljJGUm6rU+U9R0KEhOZK3
v91javgHB5aIclpErhUyxO5VFdtH+NkcGOoEPR+jtCtqvvz0cvV8xskXFX16LvZ0I3W4CC/XKucV
i9y1j7Iq8FWOQlFO6zuezPSO/oIfFxTwzOgda+C1xNWFn8+bmDo6PnmLvxFlzuEtd8ia48iXDW6a
xTj3fZZoWf+5J/m0LX4DFeSV96oa+oq+CU9qamVjqIUVTl8QSp7SNj2ZlGkrYNunj+w6JqU1ITgM
1YEiLXFtaicC8NiLTpDKKdJGmHEA4oj9ighCV9ts1h6HnoksF87Yw/nfFbXzgNkuVSCl6h9wlbLP
ZzCkxnixFDgoD0WUTjiBS+IkP7nNz16IyJu4yswlm+czdl0roqb9D2zmPH3iCzG8/VHggG3zcpKj
ax+tJN0KYyCAY6b/Lvdd0KTp6THEPEwdhXgXef4tziN74VQu+4i+JYLuX2MgzyjpxnbXsFfe+of9
BkB4T+Tt6x0YCDzfEE4k2+dEdUmAElMNirhuVrr5lec7J4r0PP1muNT5TeOd0+GQYiGjvichJzxM
d8bTFx1vKjnxx090DUkzoWLN+/EqDVbex09RbMfOwsM9yp9y6HuseejBnhVM6Rdj86BLj+Ksb/Qm
fAE0ukenynh81oqRFifm2SxH++TQlLwJWBCH/N++02Wr8pKwNBcbQ61utxazD/WpUOOQQcSnS3Yi
R8XEPEYK2guUMxvgREZdNTnmiTGDbPkkS9vK7kvLpDkdzmMZbvvpOx7t06zpqAo1NQ1lyxmjbO43
E+Sd5AmnPBE6hDG/fcnEuPeSY8yDtXOfygkZfq3sHKlz8XhigTJ5a8aYlSGsxqoPI/LsiGFJ6/2/
8nV+P/TCbaP1z6uISD6zhb15SEH7puRZNch80cphzCAtw0eqA03efbvaX/uApaMNBlMJPkpzsPMC
7YBGcUXS5reuS+oFflJdNhQIkCwbFqVtKQoUafQoVdxAZekX2S46cIimSJRDqIf71B0gb25jIJYH
S9B0LbnqYWhWePIaOHqs0Uc1l8W5wuZflRzbz3PE7J1i58amxZQ4ILnH1hEc3ZQqDY9P0aU/3el7
NOqB6h4ri9zwyXPEVc9NxobSJ1KJl0/VjsvKbaFZkLkG2zZqQDc0sMThwm5AGzU4KAIIGrJNKNYr
0R9HrV6MdMViNNgTm7Dj6XbsGhrlDa2rrm7T0L6VdwCLkc96jQbJ6C8BktDrgwROJZ7Ab7/feXmz
eVr4mqRYKjZuT33WO4Py12xnG4WGnhQ3RQFuffATaGCb8hXvw0425t3rqfUmR0l3AU9O0cgICjkH
CTp+Q+unKEeQzZOqDFo4iES46COfdBXY8Pf54hlOI0BJKCkaFqsg4h1AoCJXs4boeCpNw6NsUcK+
hUbsSz4s3N6iDxzlaLV+wwedlJ/GZSSyToZsED5p8qSWlPnb6XPootAilf/aQF5sPddDRHtANCAF
ifdLdKjonnzptnlS5hzBCrlgi2HZ6Nqj6qkT6dEEo33qkMwwExg/7pJAp+2Az1EM0WGwSKjh6faO
LbfreT1rO/yjIFgJbvXwnEEEwaWBzR3i1makmionlCyVjrsFU/QQKhOsapnaMSePJKvQCSbGt4za
DX3Srg3wTDrtxW3PyiMKbcOyzb5p9KOF4zbz36NzlN9oKao9M9sJ1+zpqTnis1JRlfLV//mxqXvL
9EvraItYU6qRWHLMVk9qb5c2XD6gaRZiAMRE12sQG9yZQPDZSxy499pOXN7AFyEG7HRfhCws4YhW
SovglXujE/iyE5DJqDfQWmKlbM9vEnNXNEcp38Zv7T6QpR09foWXEVbbsHlLH3eDf8QRp9tHbArS
EHqljVE0YipufN8RG/fifaAz8Bsz17ZF4/o1tGIFxfx2e6Pi6UPt/+55nzwP85XTo/+XGGqlBLnr
54Hg8jBSclJ7Q2rR4T4c+QT5KIp03xcW6x0JcrIor0bKSxf4gciOP2qhswVNeMbLsHMAjSA7vpCH
1o/BNKC4Y7KP6uu1kGVHA9jlguQr5RUAxLafPc05rpoF1EmkbemV/QM0JjzSwsN8dQoOjluE3L1z
HVNXceHpydA0POfyHlM1H6GurdVatmm8AEBHQvy5A2ok+fTfuLk3eEESeYdkrerH51r3vB2pYe0b
EZ9SDeI2/azuYwA2/MVoVPksveE1JqaWoqK0Hil4OLlzfd0YWibylR49sW5Ihl0x4HABaj0Sstno
WrFFp9/HovqVDoJHS6R7z5MM4qfHuYqPGPFRCnPFQjhGgedYGA8hmbibRr+mriNL7J+xXi4ipHpI
2ETQCLjQh7+jQxQbNZsDVP6jlMf2VBmq8GpSK9+47ahVGyvTC0y3Nfn2zcaA44ALtk34A8JftYz7
i7C+QDfz7YDv4Y82QGsfXZ4/XF8toM6vTq4/OynobuMC4cpcKvyK6zpmGAS6QeUvhQpLJ45gpuR9
Ec8KAGqM+ibicZp/HYcU0qWffqQpfVbFU8J4iWR0C71aPmtIbjDpSjLK2qhO0Dj0bk11O4O3HXpY
DwJkQLEVwX+/XODcdGQzwXcGOwBeR88S3CmzB01r8HVvqJ51YkAGoS3kMZfjFzOLNRh2r6OODqw/
W7/WhMTee0j1iuqEe+8y2uFw//9HMJBU/e9gBL1AbWG9BsjflN+B2REioUSlTGgiqSIrDut3qcAA
Tt0/m746PkoIijEZnj4jIqIyw6sG75FqLYjDvBV/9DnKkVPWkmtfMQ/M2Ko3oTiiiXKByyLHVoHH
bnUHyyADkc9GUZjWHleXzLZO+UvZXsmcHBd4136odv9uKp7RdXman6iEgBB7svG0gQ0vPr182aHA
ae1RafiexF6+kNWAI2SoMSSZolafIkIt8C9kfWpggV0uc+us8iqeFhHQ4OQGPXxOP4ICwsoNdkdt
Gx4Eb5GXToi6pNe8qK2dYaint+SLJhR37J2lOc9iiSL8FtkHZjG/c7PnmYW3ii+UBg++8Q0Nfh5/
KTVnAKO4P+3pIVB/yJcbgSKQlo31QNnD6Q75QORitsCJW8oqPjD03emVdhKH9G3J0duk3V6PniKk
/T6KrOMz6Us3LsSyRB0qotAaC4G1j7md0I2U8BP6TY4z46vzeypy9lNYK+27tUa7LwHxFkdQyltc
GlCnPjMdq9XZyo1Jan+xps73K/5Jo53m7lD8k6DDeuR9gkziVh2/oPC4q+fyrGz5IOTqpGoUF+e/
Hdf1jmjy7LMFfGfZDcCEO1yxoqNg+gZW28p8omB5UgQiRkFOek7EPUbe70wi6ruB516aR+BkDeVg
/ONU2XQtERZAYLah80kITkZFareWEXJIEl/iTC7Wab73feGijOKeUgV0AZt1yiRxVjj0Achm+PjZ
JhSDVEjtseHgVtfi3+eeZwVFIUZhWLek07W27TxIFCrJkCuNRZlWYZz3dxB9VDWnEcNyYBi4W/TB
KA8id/wyK+5Q+fPtyOLQPCxIz0hq4nXVhCqp67IgJ4ElDzR0NIchyEvXDPkOtmP8b6T912d9hseX
sLduolYqSnyMsh5mLL8PtcJqFs+TO9Bi0mEVTDNhSq2VxrtafRQRzUJXAdWncnJN1Lo+CbmbI6wQ
Mhz+wlwxNiyy7u/iJC2fGeIS2UNWY6EaslCVjTzr9F04cB0bYFilmJ4+QMFLPHWgT8YpnA118BzU
ShdARF1cw17fUcPQo4im6hDBz8UW26yhIULnJW8V1+jjZ9a5x9lZXns2qqnT71Y5rDKtMY04T3Jb
akIm4/fNARhGjYFzlcSh0qYfxaY+XclGWwHhqew9MYYExdcmkaY3DWDKBv9ulh6dK29alv99sthU
y/ZkWzJvFpnrjdrDW71GgtO/UF8+VxeHD/csYs2tcgOe6TBQEPI9XRlaBYM7aQRRcY6qHwy/mwkP
Np9EzaR02G1T8l8YwtM1ZW1LxHJXNfXZgLeurb2Gugq7iynHxTfsPdiQ2eT4VJMcIZ2LPJkvWfCV
krQIh4DKeg3PwHKbvEUBqlFRc6E9qSE9Zh6Y3byGyxHiKTVpniF9JbGxyMU8iqqL8Y2+jz6g9slb
YaBCxjK3BVHUiVOm+c9cj488QT+cS2T12qimbz6EfId4WQeoTed6moh8q6Ri/GOAGC7UGknNrWRh
hTOO1fiaBmQ6QEhH6/FygoWjo8+cEZ3JPcVJyW8FwhOZAKLGMMnqDhxsdedrkUqBpIFz87I6AH77
+t2HMphRKkjOyJGq5Xk4bnoofKHJ3AGMDo1TEYWSyp0TdHYjrStaK4pj8vbp8Kr2GMCmtCS6k/jg
K+5sc0V/dFdcrLXh2HYIjrp47L63J5gpw2sbfxjb680Fi5FUPm7mZQGyVzZhuOmVUAYkAaTKUsOz
rI3QPGuqAjcxFLK8n1qHxjffNUbxA+aqvFxdJoKm3tWiRl7EQOK8zahyCASKVU3GkWxhnxnnqlYT
1p86pDcpDu+50hR8YX/JazdfbzBgy98yKRm5qStzySp5JTAcggTxdtQTpXZOFV9CAga7CAD/KGtI
l0ppI+RoD7v0rGJEDA2rbK8WcAcIk/vKEU3ds2HzzvA8ViPxpbDAnz99FuzyNWELDIBlN1EHRsYU
YVes1fgV+uCU8lWClLeZ4yApvH2CBs+8CUn52xV073EvNUX3LpW9iDxaQ0aY/o1pZcTdG3bY5Cs1
BUJa+5iBMmZEb6KtfVqfCgD8dxY4EcjzzbpW6aFvAALvFg4EiXDU0XXVZ4b5nkRVLMdNl6npyQ0x
qj3W9zSbYr+dsv/5cqb5uR5zn/+87zc5L6q9lXpPLbVOueBcvrMT5A4kKxtmZs7qHwjZ2WKy8FQk
x+uwZx0nLxcTlGXGhIb7/sD0pjnkCzxllDkmiTvE1nqPCzZSMMN8SuJJeazHfWz1Yu8QUGv4skNs
nTfhgB6xZXRWUnARN5ZwcvqDaAsfEY0rZXPOIkk1KOokc20p45YP3iU19o/pywAZb18GONv9eAxS
t7EqnSF23qz7X5EmKuzhyq7x8XqzelZMpTUF4tdl99Uu2ir8Ykwu0JodU37oY6GP336W1ucZk4z/
eRANvda7k7HxkRAyncR/J/OOxlKaRwLmtvTXeT2z/2rFGZ82VRcHsZKhczcyE0TBeRv4RIT7/kRP
HyC8fGnLtmG6mGm+YBuaU/Rt3v3iFhkXaSod6Pj8fEeywK+w6rUE0UfUg28VxG6wWIKyT5hdc2ZF
mjFYTkrtOIAA8oUUhuBjY2rADGgVeGj6Jd9vCfVew3JVa3bQ3fYL3c5S2e1/q/Hbsu+PywtuLvNX
HxshWhEzRQV7+My/qcMxvWiUDe3IZms50pQPVZawynsws/Sku8SaI2cFP+rmTHEQJfELEDWm77NF
zIkBUv+Hx+b5YkyRlEXk+NEgjtLrnZCMZkISpf9TYmjZF+W53Arz8Hvy+iqTazU8PFaITdVHaKgO
NIoG+jaoF/fgiaAem1GaZ/w3NsmCDvED0qMjxw3RLPPiuZddf9yxxLRF4zSAGflmqBfSqxJbm+9/
ZT3DO//pCX+6diUpHtYAqEyG6TPmHmdncqFNtAAfk6VfjhZ7s+k/AT0nHkV08bwhN7lZDYN4U/WZ
lUkDBvQH1pwEeQD28DbBZb3XppbyFOeAPYX5xlFqT6wMFGC1pgDt9zJuyuNkIS3roqG081nzieeN
EvBX/7spQ+tuHydjI+SzJcli0frv+TqRM5LMGFgaw1dFnne4PmEudKtsJdafy0N/7RzwvRxI2+ov
2cJaueYEtQsh3CJ0w/W4R/JCOAQs4TsD7sMzz+k971OZulKeAdt3w7vX8dqJfPW931rPnX0hQGpK
I/h9MNwfl7o5aZ3td3NQ/oF4cYjvOJPl+hpFodaQIp6ipmu4p2KSLazqFztDd46TcnhinUTpB6mw
nE45Ub1R/BK37rAG1ii13/mEXQ99NvRbtk2f+gPB1uYfE9L0W757EAYz9jWe0IA2TLjn/Lg0T9AP
S/Mnwv4e85R+bQmxHfhQGHXEoNhUg9uopcv3KYH+LLLzkriOqxyOkvOYWCI2HMVsw4TJSCWEUEkT
1sgJ4IReFZO0FeVzIWt3xYCpHSmvqdUF0QmHpmiyh7UFgJi76vk/NElI2nlBmsHCwXSzpK4bn+tv
RUd3Tq0TEuWlZGQgvUs5Zp13C/T9v5BDUw4f3A2u8DFZ3tbHoq41vTfaZDagu87aTnzKIYrcym7a
5Hjxu5MrvOAaZKIRZNrpzm3GP/HRpy07tzIUa9LnUSfHsR/5QjzfWw/3raZU69cEzf9MFxRQhpQe
xqZDsD0eqYWMoWQqKcZe6gOUr4RPt1eRPHBGCVpLCH59HGgRy2KtswFiJFgozCqpnuk3TeyDScvx
B2Bju+Ek6wSB3uSDb075PoeFAhushS2L9FYsNI/c4CqfZW3wc41TkzqCri68Tp7w0kd/SlubP+w/
UwtoSAMk8Hr9vB5j276zwD0IRJbcx/dQjxZvd3stRQ/T+YArcMtQajzz8pBRT23QDm8VYepIKf8p
Ais9TcULMehw6FlpzUMJHJDar0VZXmcWNvy9axuYpH58oBcQwLI6DHfKB2wzJ2TTR78PdudeDZ+9
BedDMH1b00ZHQr+meEYJCN5p3S7upybJMWreIdGjLw5qkbGyXmh/Gyg63ha5eAEUc80FiznqqdY6
NW3xcewJsLaUJpPLbqAxuXiHjblnQ9IHPVeC9Pp+gwd2CVHDFIjyea8KS2sstVgrNTGMoRqAHOHF
fBz4CfuTJTJPdQxJSz7PbkdPXODDM3pghSzNB5YXmRn9SugF22G1+nWyzFyQVUEr1ZPZFZqvKcPP
BxviazvVCRCr4NFJzyxhOMBSdIxKukvF1cmtYpEvAudgjnieO5X0k61M2DNFClHyzIj+1Hq4kdTm
HkC7yhXgVnH36pySbwEyipwvP8c8+RAB7GCtBYUkTLByCIq5q5I6CL46a05We+QPR+U4en/q1GAH
RJPbHLt4mU6RuEUSQtRlPsNtlI8PczzD5sZOCn7v6oLeYKgUpDzg+Bw/CE3ap7ShSQiJnOKJSYQT
MpaYpGk3/YVJc9xwlJnKlo34HCdLhmzIWMgf8b+MTDhua02pQ5kiSxnRO8F/IZgJjfSc7E3Fz+dW
6KSU7KW4xOi8P0JirGGmqzZMtRgbhQI/R4kCooEcbGfQzIzROKEeydZSIAAn8RmFyJz1LSXRD3NH
Bq99qKII5GJfN+3oHq82NhvyLGwl8HHaWtT7g5XkHO9ms+RgRE4Wbauqs54izk6/D2pDhOzfSNxC
nAa3J3trEkkEzVp9VpmhR6Pj7nucTWljo79KzI1j+unrAmfWCBUOQaZk3x05gAzJb0zbXeZzbdUU
oPcAlT/EWtZlnmgnd7AY1yt77LTiJ/FoUL7m6f96Qq/MJFmzh5dRzxYgAEncMdSgM7Rhz7HXUARS
MhPEsCtddotbVNLs6mYDDY1ttIKorYO67JrwXTJJwCFgsWnMzK2rTIQmjCX5R+nSSxguCvJwLMtm
fTGavuqq+m65gESAJ8CWwjbnTVb2GVQm9uBynhRpcE8WZ7W6AB52VxIcg+B9L1AdpS5Ry8WtS3Ir
66lzjK8fhei5zFgcNp9bbUGu0GDQ3wIHVtnh0FK9NTDFDPOKS9pNMtNg60n4Hr2FkArhFo5AS1/L
iLrHQRJpSU7Sdgt1CZRhb0bgA6ReVCPHKUPdQ27v4yXW20WvObNK/HVnUuoZMXWyTWD4CsZ2jxxT
VHMopDf8sLRqbZcdlj5YU8CSKp3I3c76NgsgRSVmtewE3rB+wNE2WLjDYwq44BUPxmuEGy1YzOiA
ASK8LALZJ9/iqZK1dCLESS+kZBpUlJYf1VSrfyhopSGiXpwWYBFnxRjmatEhWioqXvKTJjIYZ4lA
RzgWI3GZ5+rtuStFu3nZC6tOy47CFPAULhv+UXfjkprJaq7LKlDNwGPsj8tS8Kjb8SLVixcDDu5q
HWsrdtFS7+DDKDsmev9DOIIVoEdkjUZEXw3UAsE1bqJlajT3Y79SvjaUbpt2/Z2jjdsNakRNOg3W
PVlwzxyRo8kuoHzmczfp1CsK3nUcs9v8csWNRJwrx5vhucrAOkzmq8hFu2tw2Q+CmYeHti+gPl/Y
FKDT7+qcfD06t5araBOyoxH7rf1nNMrWjBOLdUmF6KSpPcWSEcAvQwvnrSqSlYgLf4ZOIt1wiyUd
YrlR6E/BqnDHMpDDhAFN0krfkrHBMdvf3fpBrIHfGe0lnOmjZJfu9IRG3uYIYngSLqpBMkKoOaIP
OSsKoWMJOwLtlu4cmEWMP0hryEgb2d9r31Tw07LgFIYDcmfHQ9Do6gdZ1SreNHD1DrFJnk2KP3M3
TAsq4J2WdPEJaECTr/DyrwdL6FkfjuJ+dQZVtb4yWIMxPRGmYFK28RNM14fA2t5hQBeNLu3u1Dd9
49boHq/v00eodR91Kan4/K9hUL/evspkkVZsmIM/5wFudzrsSa7j2s0i5Iz+aMVDLyIHmCfPKLo+
q7es0PHKXgPNAYEucLQxEBDn4JJWJyrEYSvUj+RK+IB/1tQTWtRspW2LBfkW/slXzPYhaF9G8wen
f2Exclru0zM1qpVTKn8vevvtg6DADjt7/rS22sk7hXLfKAlN0RX7iT08r0n6Rtu5PU/t9e8dHLmh
rbTOPtPGU6Qp9Y2Tx0QgItAr3b06mnYRyLZATfGBENoCMCvxKPyoW6KBiVwsGSkBtMxz5pmsO3Js
3vi3m5kp67CZFOI5FR22KnliMVtHNSNW0hAUW6oJ9RJrxch9OgCM/t99hYmgPFvg1yiYSw1mEXQk
YF8fFM7Ic2x9YQ1G+m0iWk9XBwdlQSKeuZ94qzBqcvHNhTRgfcETdQ7vejs4GVwP41CUliiSWqtj
A5nB2LBYlV2yXKRfYmoEnbD4ExwJf0gmn9QfJkjj93rwDnPQZOYXBZ7iS/PPt8zBMX4mmULgZQhu
pgdtGoTj0IkMCIp2NrurUvfPUmBiAQFFLlcuTK5Efb64JDfchu/6hFqK6z8lmsKbugeEMSRo+5ek
IigVewSXPRLZjYMYRK4gkmSPjPsWC26skVllkdc7KvE8dx9+detKQsJB9Yxbq1A/rmldBGT4HSC0
2DmRUrDL+GCEqLPI801KfjAScVS//9CLCvtnESO+5QiB1GYS6FgGGkPDfKUc3FuLAG/5zZHHbMz6
xxPtL31uPx4fFsbsHP2d+/nIA4Psw+1HnkEg67wvxYOtXyStpFJ/YNK69w3xCjZJyZtmmANotif7
ScBiQ/KcDwqbqRMMX3EVwkpQR1Gd1cK9u62MlWj7nGrJ54OGC8yYDA8yNhb75XhJ18GOBJviPtLd
cxuegsHO+SQtF2dvvyPLuH5m3US2fM59DJT2+DDEBIXXIeH79OBQkAj+H+SrVPDlsFfyNssWjKrb
JjPy/GI9//omrHnIyb8XxsskqtsQVNWLMMzvbPx3NvgPaYOj2uYFNbis4SfEomQW39u+DiNmw70r
kh35Hfh5Dw86Nd+GRubZQZaX4jW6D2iMVAgrG3HsoH9ouMOn3+3/iR3ojggGyDc/vygDiKz42WKa
EpC+GRlYn7Z7jnQkbBaQYxkk59IPj31Qyg/51mUGkesOq6oxn9X+yJKdUW9ITvguGuBr4Fyng39Q
5a4BQzIvxNKfUWCpGsP5iC05SjKnTeqJYYwwvfM+bBIeLAfSw/ey4b0uSZ19OQ0vqyodmFi8dS5D
SUTKFgghI3cooW2oJLJ9fJHxkfrA9qgIp4fNNx4CtPoLpy/Nr6aCPvl3vdjI2luXOblQybNpncJ2
Si+VgB/OJKqfgzX5qk3SndXfTxz3TwQzdF9M/0LC9IG58AcxvBWBbLtIgVPlpM5yl4mbJTCekUOD
yIwjrr3r5WNH+a2jJPZh3cq1la9YG2CBX0zUj0tfs+1q39mjMO70qNhVTbjgwkHUHB4CsilXcBC4
ARpd+PVMvdSTqqnuQzESrhZeU1YWfSPlTZEaI9mqKkA+xJlaqYzasL703OG8GlmlL5bE6gS7G+NA
HtR3BcRRzpdO1qECG6wOAZu9X1xLBGb7nVf0z6SMkct92MI6PIRTg3r8cG7MwnQ/UXHuR/nwMrHl
CemofSMBfwSg2CkA2a7YfBY1SMX8+rf89FV61jA/0jUsD5q8YghHaB4UMDLkN/ASgAMXVsYVqvgQ
udTMvEzfBmgXRNzRmE4rFjl3qX8QtIvOoGoSk2bdBETg/uxJ0NHIAWu+fVBusHk5RlNFmwnm/q0A
DjxVLe7LCyS8sNBpOyzne8qNIRVrFJWFw6kmAupHKJxorIEi2keOQjvQC8NKXE47S0EHb/kzK1IE
SueXusq/FEOzBL8BlFoWi+z+QxpCKBhlTlkf0V2VpLla3HoV4rMH/QxLJmWjFopKwndK7f1pyQOg
U1b1RG4d3dk7qL5bK8hvP9ikeMbmQ3j7UEu8a/BNn50zMbmiwivsRsUdhShR4L7E8nlS9vxQu8QJ
SQ1JTI9psV+7wcTyZglwDvRyxvmQDFuG1rnlTv6uwCeeTOn4ym3KaRzLd6K9BeVzQFod0PuLFQKA
WUuCiS8GY8bGSljIeCbD/xA9lI/H8NHxiccpUp3Zrcin6ZnVfG5xfmMQo9us6DYXTgIaR7TeICqK
tfl6dbsUSDp8P5sQlOQ6nFxPHR38OXsZCsl2z8L+DU2D7wLTuoC6urpSNVcl/7zMzaYbmsal4mb7
ZTgl31AIzhPXJh9k33oiA2sFmMl5JLY1Q917MMjZ6jaQWOe8oDTRI7/BXajV1ipdFwgVnNR6bxR1
gJqxjN6jQtX7mxXW/RaafObynrtKHTWEcXzMQcNnNPCBNwFE+UrsL4w5dxPFrfiYgDpZ7hrtNimK
cP8tirLlszphzbkocryi9gSZrWkD0KXaQ/onr7FUzLl7pTvWU8fJq7193PIbF4ALgXZfmBBOdztU
EKsAJ3dQg1kQ1AwmHg1rZBLGHT2xTbFLCjRNIR9wcLnbPfiUykh36wnYQuetJhEr4RpVCp47nDSJ
z4dkUZ3P6Ohvte/gBRru7hptHFtopP3n5hHchpxZE9eM0rxCtCz+KHEz2PyKBiuLcbwjphhkqAOJ
Go6Xp36IGYuBqg2s3EDCR1oVoV77hsePwJsdXG/f5HZYo9YhPStHeGP7cQWA1oZOyFclVRN33W+W
haIcnX0/QUyCoW9XgvR20myQFY/YoOptGjcgI4kKvb9enoBaBII3+5VoFS/7F5N6HwmyFWkVERax
HgBw4KviwjjceqMWJfzitAWDgCbjkF8zX3mi7vJDpoCj3PgsCXfudRMjiFGGVaDfbYDWMvbd1tnR
jbVRAZC7WnmMyk6krCAf97Fur3y4VVsMS1pmzEPMhfTK3BU32DqZnUCUywAsHvIVnG6MP34pici7
WLkuqS69wxREgpbFXexsOKqhcJrhZVa1mcvIU0jM2XrTbwtAIOVtta9j1I+bRGgYp66rYYTObngW
EVs4YAuBsCSzawJlK2Oi9NazHr844fo/pgLyxts+flN/KBIpG8mwBTNybVU4DXB0ovae2+njGGxj
suJW7xR+6cRYCUptXndc8i/VEyek4Za0CYzhWG07xT2mauPRyxMu3JfXTSDkDNcVMdWU/a2k+guE
IrKVjPI5K+Yu/Ikc+trmsO6EIOFlaGyJDUWKIs70Cnv59vRRXUesTA3eU0px1oyIGqAwrwiRYv6D
7m2VGTPjwWlIR/RWakKlHbzXJpkI3/BPI8yEkeT17uhuRIJdAWI9OTui/wA2qT22jJJ6ZXc05+0h
QWc0Fz2hjju/WRU+4RqXqjmJNWTOKXF+bNI/fE2NyTcCqV5NlhEfvZbZY5d5Tioq6RnuEr/dxbFg
lpk6Om7psPBr3xfSY51vxDpKo2gLlEn+4ojzjHZADaISkPCa4OWIjfX0nAaIABEvn1aU1W9z9k71
FUIASteAqOA+yFiS5ObZMO8s0otCjrpImAYg1doWdzaVRU4jhr7Fpg06WS2iT4+7NPPi1racHbjW
bPZm+RWUamNBrLVTEHKlDlyB/IGortXuJRDm7jIHXjo6PoVh90yT6HWBU6Aa94F/T83hSxhj9UW+
gd6DjmPeHslkUiPFMgm+1gJfUgehDCbO9VZKnIzHbQCgL3dp9B5HtbmuGLesYvJNOX+/zAR0xRou
Pl8zM9j3VcdgMomiuWCr+83K97j+Axw5MU1ZI7aXZtAvSfvag7UpVUdHxtxGSfcUuQ8Y1pAzYrLC
tPHZVN3O8qCET9FyEcV1zAR7cpJb6FblcPt6rElsz2uz7k08Nth41DlZ8w6tKEMVMZyAERbsxCLp
KutoYiAIh7NMb/4pmLOvOWFkB9In8S/PFP+lyis037lPKbLKt85Y1GwWwrVigytleA0SV4h4Dj9w
hpTmUbnf9myytHnN0HDpnc+J680caEwlxuuj69xStSwqwx2eTf6Xrm8rzpp6f44bUmzXJXwzLrQq
9/KTJwmklvTPXddRHzL9mYZAeDhQmqBcxsnLgGwt230nSQ6/R+bVOeTpBXwlwNvxjK8qNK43S5lp
xk/JxRhZHAQ2ayN1sCx9B4jRX33x0JSyG2u3IdtaZdTs6FvSaBDUYCg+KWG85k/EplFkMJYL5ET1
i0N5bFmvwopig3jwkJWtb3+9f3Ij/PGsjST83OJOADzyLZ4XkR7qHOvgi0dgZx3v9mlGL+0jRfvH
1WGT71oI4c2V0uzYPWuHtyNCCxZlKm1l+IWJl/JnaKIvbDax25O4RTNWJlzJ4gcP4YsDo3ssLP1b
XHI8kVodJ9cSvw9dAI4JVgLJTPSR2i7cRR9jPT7RhbYs4Svmk/iCDT6OoTI7lL1ai+pN9PT+e3BN
VD234nsvB8TeUO7545Zx/ObhWG4uz3Or1PDZdGUOw+6+Zv523LaM9C826V4XpJOwMBpRqkVN0NWI
g/PTw3FscdvcX45uajorfTGr16GjWG8NkF11zQq/DU5YfyqR3zmcBACWYHbhFiyCYcY94amz4bnV
qoM+vrAwBzzGg+VQhfHkWr6GWWfialoxi0HxZ8hWvZzL+Rl7tSFGQnN4IJWXMILCVYGSr/pWbW/G
wbW+nglQcFFrZOmcehMc+31Jwm9DvrurW/6uEYk1ghdAJOYN9EKQ+cQJnp58QY9ldn92LVsV3iyZ
AbTQWzF07xnnnJBfB069nzEujYSnHQyeHz36/G8sqpY/bTiDpfD0Y/DXW6OOkfjenOwbOjABdIp3
YwikXZ2jS/79EdJLSmqK+2x+XGH4KZ9rQJX6x3LU7zYW/sP7vRAr0dq2Crb7xYshbzW7qp13IWKT
hmbOxpIpkfK8v7xgDqfiZvz/xlJi/4hKjp2cJ6WfhuO9ruRCps58dnrT5QQiHdUqSTKKsXgnSnBJ
FHc1zo23Q2F5ek6SmJ0799mPtZkPJ0OrMbtjQ8yZYIY32AWQB3EUdtqoeA/oyQbHr8LJPeWvL0Kk
2uf0/5qEHelz62MGWaQv51NXuaZNWqkqmoO/2uv3RPxeG/K6krJns9yl4amYvdo3wTOLZ3AQ6PBX
4pZoFPBm9CTb0m/SWygyN+11AwcUtRPspX/xilip36Yr+by79suHSsCAYbtgAmpPOQSNiz3p/t42
pjUuTIU/maPx4GLWZU5MsWMbgiMhOoOGazevhQDJntjGk2xqLwOc1qIF/PvBvtIf+CWpk0SZ0KLu
M41UdkjOXBGiLzaWi38834nVFCvT5FqbGCNm2S4Y1XcW3LB/wT2y+F8I7KKJklK0dwtgv0/EHUEX
Lgg4QDRXE1khIajkCEJD7PJsYZg8fDaCjPa1+F2B6QBX3ElxXN3Sq52K1FPr+tje8cA1C/VO18Kg
c4NoS+E0JSd4rfNKbK3Iwq8iZBt4CkfDLDSmiD8FtPvySHwb+GexWo0sB1FELYJ+Lg8zrKsAAVG/
Rv7gvkjPIlSr/CWbbts46CqCBiHrITwsM/yagx0zC3mawNXwpBN26DTJdxN5uW1Pd2q6bimSVcb5
7aMsWj1NoUn550EVzWzIAPlWNCphlHp1/dIPfsSt7LyitmO3g3kFNKY46GeutfkqZCtvkZNRwk+N
gUmC2S1UWKA+Ng9pIShAwvhAIeOQyvzqwcNN1CPdvvqRRNG3X9hxo144VxOn93XjxRGxeFiPW0ck
/zDUp+h20Rk6gBJ+npnOH/GHg3gb8LokQnfekrBZsgHgMye4QpLuENCtLaa61tDct14gFC6NyLeO
YoEcLBQpeDX96bEXwz+7N96bSfU05bxjX0DJy1jrKp0IBNmGcUqbvc37005QtSv4fJ5YHuZoEQbj
CWRxCshkoveNfbpTFbw7T1NqGnn1IE5+bl7ccQ/n0qVyUBqGLg+LiqaxtCa6n6lCg0rq/eO60wY1
zSCtPj0eS9Fszwz1LfMvIVk9O5MxNnL/szcHVfxN/5tNRABQQ0qX+rq5USsAA/kD3sGPOSpfqhlI
HvnUPKqu+UvuBH5VvF0sFycf9cMAypnqR83snDh43KHVYxk+6AIUwgMBjfKujifqNFIrsp5mHjQB
jKfzWU8zT+PbZdiImO/iqtSQDrkXAZpTdBC20K3c2ZviaR3m0EhYcBxUE6OPsI+RSO3JpLx5H4FV
LHdp//LrtBvWlUlFamZYuhhXDevLydevvooygb9rJamygaAkuMOzwMt+QlPkzZlbezgdR9Nc88g8
qfqiWrFucLMd1+ApcnFM8D5ZBvTBma1/jLgxJqkqfs7R7XzvRIfyCxREKdwn25ytmiyGUql98Jse
s70Fe5GckOaY6HoQ/wsSeocuAWXS7MPEIlIgDSTQI/GHMB/BcVlFDL4c7wz0BBiZatgDOxozX1qP
4O1rZfOd15u8u2muwjTWHBloYsBkY6Q49ggQiO6D/Sivz7AkyJT1KLPnTWOxf8h5BYsPCQKPTowl
dcVk2ZZxLMPrmkupmjKyYuQL0EMksiVklUCBoItKgPYhXyLYBqoJgNF7yAvH6K9UprjtIW+1B7u7
0N1t/9XYLPPeBDhehqZAS/7AF61NLMQDx68zOQ8PFT1/2omNMrib23qD5aqf9KsDyoDQUnwG3zth
30fwMN8HQ/Lm/rhfa/SLBOtGBsg95kl+x57DaMuX4+qyW4yN9HdWA5v+tlOXCej16WytclrTbK7k
uvNnnvgEuIU7qkPVswSUhWIFwG+OslaPQUrFjQLYm4RchBAmJ+uH+u35CFaDGrP1KUi1ul4kHCHW
v0bkBkXFZ6S5bQt9vWsee9ysDsACW0DAWW+8N8RXsiLV0cmCeOf9Vo2EEhjn6lkv0MWQupmQcoTs
QcqM01PXmGOtK3Bj0bp/nnk+wSoSp8aEFT/rndjTnKQIslJWfQRsgkel/CvKcIODihTKotxufVDG
zVRs+2YkY5Ov3pPRqSII0+sYievfB8sr6gxg+nX1QI7S0Jk/mRGlwvzE4Un2RgAKd967d+32KKEs
cisZMwI99V8AJUDaNF7IdmWpt2tm/b2DzOHqubDIcmvj62pMXKXcOvOaShpXqvlVe+xvxZVzGKjC
9Jj1/4XrP9ONpKJ9eCzDFNKc0Vl8E1LoTDP2S1Hd8NjuxewFF/2d/BssolygyKM3eea0al7AQRDR
8CLNnyID1/Lhcf2pMVwdPdy5353aeNIVd2qlOuLeYtjOroBhkNprFTLZvyQ8yLifIOceo1bG0Foo
Xkv5b8K5Rv6A12A+t4A8TbXv9cqkpqEwsZRTJM49w5Gh4rSwoiI5sbGyD/ArHl1MiDJhGDNHCaD9
lfRv/um0q433uQoULOeBZBcTpYu9lisUFblCQQpAemLiJZ8gsQFuTwR4z/6QCC6eF9wp4sRVY738
O+zZGx/s+7mWz/6WcpmnAhZ93aXzRWN6Tb26YkBAxEy40SmOzhZ2n8hkSCkKEEoXJcdJyLRWnvYp
MOnlAWQ1DTh3WY6X7h/J1CpkBm7QrWalyHqIj3oYZbdP6wc7rFlYXxRJKrQRnOi/tmQoD16L+Ljg
xlMqtC/ADjqP6wecnt8WEluYJIpO0y1ortydqkXWUUFTJ65K+OCaJV7JmX52dzKpLutFrmimISnK
+avxddyf5KeoRLPxwN7iUoLl1G/xOye0p1qkTSDzxEiqqxvQhmnMTzsKs5oSmG5vbI7Yc8dRQVFs
E3lAznRb+SbriBdM1AecibcmMvFEkryU8+SAbGeMIf8NTC8JC9r7UcMkGK8h5EHu2un4RgIpn49X
q1d/yvWGu4ZYSZeK1Qp8E6zVDwpSqo8iIxQP8wO8kUveeYw/nXzAH9tv2bbMP/YMNEKf8aeAxwgW
Ht4tT7efWsD/wX61RIzWBq2H3bq6jKGKMWnPJq6r6kyk3z51Dz6HQ5MbxIvdCYB+uX6qvtyHr1BL
DyQr7fO1yALGObuTmPKqqPQy+1VkMz5WwZa76JCDmdoyJcJ4/EwzIYa3ucP7I1DA4ZXAkOEwXaEG
AlY7onYeJef9JVjR/ySmuW4MMuDeqZiVwwnybSB6YCm4JmAgIqzYaty+8+PfYRKwe7QrJr6puWoB
7QbY78k2sVckFIo4TVHAv2JlKNjDtnVVKYOZH22EtTpO1evRu1MqapSfcy3NiH9RD5oGK+x2xWhg
J2/KVO+tLXGtFa0/IazOBV0ubcqmmJwPGFc5rcz5wlGmEDmP43FtUOlziSsUQDhKUpatvqfxnz11
QlBPHMfz4v17ZRf7e55YpNcAQsJknbvdpbWVjQzdzy5DqzlEwaQS6OEWL+b9pc/ANEraXeToO2Pj
KMlVPoKmdlluZmOfpdFpJYIE3zr/puaTXKYHXfcnFTi74V+fav5FgYQha8SSuG5RtWpMojd5/Vy2
d99ft7rdieR3xNaJc9Jeqskr3vnRMEbZ5kPt+DftCBx+/e5WRhLhMq+f1Mp9GP/suliPtIiHn19E
gUQDEkXQWhE4VciCZBpkLGhXGZnZeQQQXuZwNhqEaxhre4UHms6wcwWoOQiZJ3r7Pxtl81PTYpBu
BLGQVB5HW+fGosoupd1plduvPsPW2aMUuT4r4Yd79oRoqkmzVcvm7pOrWpNA09qTJdHxbDptoPEk
1MSi54R44A/dFp0kGk2errj9YfaGaQLAeRX+oCf58jPOXa4oCOeOkHzfc6fbRqhD0AOv1POvPcpw
M1sA+Mt/K7G6y64BjwLb8175tqRl2iGUNuSTKay+nburH2daHBNWACI8TMAx0QwiH7KlUkgDfqEv
oxGDQi7a0Q4b+UmAac2vMsfQw2Q4S40qDLCiLg6lMJ0LtnrxPkQjzWT0gvxc9mJVHfMc4RUJN8Ht
C7dXBEisldKKSWH/zcVh0TsF8GKcVyepcOsQ7Xd5Zo/bZqeOvtQVqZ+8pCUtgya/ttmKbRdas+9w
l22SwYVBKwqf8Sr4EGKxT30pGQtVxmbNkZTTNFB9lRZzAQBlQvTyN7VAGmd8fe5Z8qg3ggt9Ys+x
eZ/se6/+1mTCoshbynUfqvJVqhAK1EyVdUNUkM4FVVhkn4fN2CSH+/OfKgJC1ud6u/LHqK5diq/9
yYKSAKEV99gZ2gwxqQnTfU4KTSBigAEGGIXoGFUfHNptqFaFF2xWbQc4mBBRnxOAp7mXdudFzU84
D/uTLMrxrRvRSB8N5CPLfdFbSXOMWHpQXC5Ql96Ly6yX0PN6ADJ2SS+PJY0VNliEKbJueOuFgZdV
IHR1Dmk9OyyHlquLfR+EtmvXK/T8f1jhvTIPxTe4B47I91my2cDtSn0RyOV+ONoZo2eQgTtnj09I
urx93d16IrfpL0ZOUNY173Wj8vz77I8f+4vVz3y555GoDM/3mdkRTxRjksR/4ntoYNYEP3P6sNO9
YK83+wwNaTh1e2BTSW90M4Le2S4/k7LYaaNhCpVhhgc0b9Oc4smd8XTtgWqqhMxHZOrBR4v+smBv
6MIEH1YzLus5dmtQAQWISZh/vfOccUF7HSI0Nu84kxETp4krFWVoMFNKXVpSLJiJt3I1zgRL3n4x
4Lemszvg8f3pzvBAc1XqTjhedIhKKT5ogoE9Jip2+bmBQ4WoMpP8Na7nnk9ZjQ+aP5bGXAUwNOkq
1DuyohTao8igMoEGSe4pSBFyE5A4B29LNWuJ0zykKBBr7qVgKoTPMLbXmCOOLgSbz/ekVeQuByJD
53Opyy3oMlBAS9GEOaliiBzsg/qSNzpQ47c06BS8l6Sx2GrI3kTtRQczjhCepJxfLh1UsC+5ZBwz
TXpSFTup4im6vn96nGBA64SuyHM4pM8VqeEWl2SLNVlzRVuDYwVI0xjpZy8V01AKW80Ikm5QoQw9
VcGCyASI3SMNf2OGG8ayr6vWEYFuwPCSmMfdaruQiProCGpBghlnhLyscnoqRRRocRJiYkTaECwI
jyHUw4DqlYqCi90z0Ck2eeWlHgqThDUhs315XTvUomkTpgIqTWH6BEM9l7cT+feknCmBeHoOTIEI
qBQurHIg6ekdeb2o4Af/VsN2kSzEDD/SCykZNTWHN+lhMtnl7c7gyeoUWu3+KsuR6a0zOaf1dz0X
6r6OgaaDljlJQcbTCrmkWdB+PAXLN4UoefPcibae0RqjlFWcHWucC2JLIHMfL8DZKvP8EVouKwII
+BfTrWPM8JAy5/Rl2El/Zpwd99R7Lx1xcxQAEILxJDClru3hiMFdRqjnzc3R/ldpqINQ8M5DB7Bi
ae9tOvvkQ6qjB9Pjl0vsc6WwaNmyGNSnHRMyb/jQXFQ+taK+wnnCccOl4ai75J9GL9eqAD2+93CQ
UFbh7zhLXDynDJMO7JD4GzR//A31BEgzOqAQiOuBc8Mz6gZT4Xef1lslDV8//FLrSf3VkiR0Ncv9
fQXt+v8c8Eh9+YUaMgvMXkIJpuoGqeuaAmPZIkwT24S9FB8pxE/qVUtmWJDX0E1zl01FPXSIY+QY
Gf14JO3I+yfupcaIpcc2J5p/cDbIsd+tDddIaadtAQ6WaucGlNTKzs8vuAQaGt1iEGA99LKJ3y8b
Xe1YmUuhm9lZyZkmXqzi1SSnhUItNLEFGTVzZDJuCN9OhYvfviAOTL/i8TvTRfbjzSPxzulj6wuw
Gqsq3EKrd8Klzx8KQJ+IT4Updz4cu4sji8fTFUVUtU8OfGKCLBCv1uHd+Jd9TFGw3bwiDjhGFM2n
UHd7Ovu8VTFPRK75sQ1J62AREiNEokoXyocGBcSKVQIc8WsQK0FJ3SvmBGVvl2yllDEmuozyVmCA
w64LzFvDcbyEYwo1WnceKiArTEQL+/JcrV6JjhJ2cwRXCmuobaqEz7458Zquhap6zntVmf6j7pkZ
qPe38MItxhDQF83PxsCUl4vFABeWPHvoZKBZn426OLr/72GlDI9S6vnIJ26AIKVjuDTyZiiqO59b
zv7nIHQASg388sdNyyOQdx2ZuV2+Tjjd+cRL0s1BJBSW7rLdkYmF8zlfqmic3DPfBr/JXnL2V9ud
Rikr1UaNk7Az4zK+4RX93WBH3Z13+vhHlpKQLJjY5a8VT1hcMEDv+yXSh8yJ+13bTjQ8+UD5RpRo
AE6RKS2rdO7w2kILkj4IU+kbL1X/0QG+YHLFjFIe4YaaL4k5UOXW8yVuR/qSHN6KZ3Xn9mkGD9Zl
807AkhjXLN8Ep91WKr/voBdsIuBPfAZOgMC5K7TYv+NCcm/Euxn8eXo/FeusQxalVoPbgRUTgM24
0hqphdSnQMJCvH8kOzJ0jWfjsdoNptGHW0GSwGuFyobHRjR2NlvUjFMeH45WTPO/ZoNt3WgCzLx6
+Srq0EFG448+dIZsJK/6JHA/1hpBRLK7Vd8CGWYJndu7UfWDcCh85/r7ONuQS7vNmMvHrrSMSCFq
R2x8IWu5YrSoD7mX5BFMdYc2aVFR+QqBkVYidjib//qb5pnKnaseIDXYkb/Sl0WQDx4hk7aO2PPe
w94Jj8/wqXAhK6ZAiLE/DKI+wa+aI21ONTtYQdV9Kn/f+lSi4/z2b1qO9sDy0xKUs9QQ1UdVCUe6
GGlex/v2JbFqT2ZOXFxI4B4C52rQLR9J4LJH71mTZN11QlwoTnlKg+sKTjYiN17pYptcS+HrzYWZ
IRl72hnrefr4lPFbzBzKiAxpHkg0N1pVq1RP9RCFBtbE/i4MKr4AhW8s2zEpwA31UPbGcAW+IVjW
3MHFYk+4oWs1XPuwU9RWJpNITBm4H18DUZgvEvXuWPf0YhZk+11MlKS3BxitW5p12HuXQZvyF//N
RaoG5w+gufVVts0oeUYvWWFCA0kfvU8pZvGR5kH3uaXmR8MddynGjkSfXVa5zBoPtId9glmj5fbE
ZZmaR5W101Xro69jx7kAUqEFpqOZajpWzBGayskEj1uJ595vLAn8TyW/P7vZMui2yF8sGJvTMVZO
THQ4Cx9WS5hJ5pDXjYH1HH232OfZBDijK3yJ4KJ/M9WAllgYQWgK15tmkXrJF3/1F05CtM3PbgOA
4ABp5y8Ct50LOus+DYrV2UwM1qoTYBaG2z3zzAmh872vNe/+5zVyXv72n8VakjhImaKXEwG/H2SM
7w3FNV25h4LF4Oa2eKg4S39SAdvCTsDnq2yQLjpXbtH77Cpbc5MFZi8U2phWlc+VA7bK8oP99ykV
zBHRak/WCg/hAOUNsCttxwUGmr8UkhOlFrHvrvPehkKEl6o/7VRVL2epopfjnbGmGhADGnmSIvgK
KoMWt6Y+9nVbcn/YFzfM+i4JRdICkWwxoALGX7958QTwZ7neGfBElac7oDZ4gjSy4umhjVmvoPTR
lutHLl32+DYvc7EP7EoK9c8NS7kvGDFE3IHEzJZFp6LRy19YwP2lPY+RX2q1ts7AtezDUfGxELVv
BG9XDrOyOXR8Y1+0qxGOn+spnnaZT7oq5oPLpW8mFtbrN5znXjrGKKT3xB+NFP7aMGaycUZ2sbmX
pJ7grqjLhU4k78OwVsjLmMB0ZnksTZjyY2DzvjbNtJ0N+PNcHS0KhsQnjayTI87koQ5T/wxYLmWT
T4QAQCH7FxUECc7ZWAhN3ypUfOro/mkrRnhnE4+uaBa0AjrG5EkAoKM9DE05oTfvIfj7G+bw/sHs
7tmnk8lHEdA2n8udnJhppPjC/IvbeSKPq2ceXbG6nKsfadUr4ToPiQW/AoFfxILJZYMWf0lolJxu
unMBPrrhVXxEurRyoxaL1y1zSSfxOvdQgFqwUIPuMgywsNTpXDbHxho5zk8DJqofc186SC4POl1n
ZELiXClAvXzul2AqeLiMkD1niAJQGUL2jqGK/d2zxlOo8znBP/NObJEejrLsOMNSA8k2zduYCZh9
31OgyCvwcEHSo6ZZ2DHEwtyAleDEDYcy8WajpreHvDwt8mx31EMxKsj9U3chgU+ry6v4vWsJet66
J4wETnwOKjDBxSmf1CeVQkKEu1KKCTQk/tQlK24d/mV+yL6t6vG2hALwvT0QFWj19TPd2CACtiFv
aW4KClwqCLyQ0oOJclMnmXYOKxotxq0o2ktPqcCD0EiBZpcwxmCAPgfIxyI7pzpmmii1sqScG2Pg
1C65q9BxAEqRN5JWV7jRDJXbkIDkZeu/gzzFonl//fP4wCmvdWPJX9GaXMz9ZXG+SfocO8+NjbWp
Lvg0xDIZilXR7IkWmWhT7ulVU6QwVKDB94gCPJULlfy9QipHe7RZVR/6JGhh75lX1p9YlA1e6RDj
5whLA4xDjt+e2kggVH1i6DsFhdIqQSXqZZnH1cdC7ApHRfYY7C7NoZGEdOd882H7KkJIHC2wz1A2
X3NPWVdYcfjnN3aRT5lnH7LTXH4mKmsI3y3pGGdQ7v2RhzfuPcB584TgNmpisr6wqmlUY+3dUHp8
SELvVamSuZqbgNWV+pCm07XDOS0Sipr6R6L6l/f2gGaDS8h7N5ZsoSZsVqZck6lgiOUzYZDY3pau
HYDXfb8U+5bLx+ktrP+vzoqG7qihLVaykaLrDBsZ8fTTHn7vrYo4eEa+/VrJ0JGeG8hkRYvUMR/O
PLfMkb3zXPGzPLaFzSSiZiWWX/xrcTEuW2tw5pL96oSZmPDkVSsALkIpUQQKvlbiPPZMo/c82mkk
r95lKxiqtUHQOQfOXMuGlM1AQVrcSb008sDMzsXdiiwLecvTTpzVxK2PT0D9eNcgpyinf1G4KPU3
mSl/0TyXE+76d75O8eCmLghZM+CNpbNuNNfSs9h3kD9X4ZPfGpWp5T4+AcvL9MEQ3KB/8JoTv7mC
fsviJlxYWBszotCvjdSCEuXgpJ+sOGEIVmdB00Zsqw3ekauCRmX2GdXLP1Q7YqXLFx4SvPSEVEEa
YHdKsM7sbhIgywyHueLSWRzHdcbHcybmJaM7YIsH066G8Dt54lFeRPJ2Zcha4K9fJAmULjrcrgAP
WX4bLl5lk954LBlliYAhIwSrhjFnTweMBLlzyBy4yy1boyJh5CcTEx7NOFXVuvrOJ7CHJCnaqrJZ
kojGAS4s0b6XBKtvtOXCUVlBd4g4aGx1h5WmxMnlGu+wtFaJWMgpfCEbyGoPJlu50KFcsbWTdmO7
II8Wgxfvxea1vWliqc1KXyZVajUgizOW975Nu4y2Nq9RmXmsu1/u7FYr6arjsRJ1gz/NFPHLuJ9B
U7yK37FxmNne6O0xwPLrSAgGVHQbvdvbveHtj25jqMJ7iv0urk92r5j8H9c+3Js3fucdvVP3kFKQ
A7xRoNqoEDFY33+8wkfqMSF4VZDDK+O0Anm+pj20qBgMejoLZ4DvxGVbb7KpiHvX6MLjfX5EPnva
VFo3HRgHO3tG3snYD59YB8JycLoxgafl5elKJBwY/3CjMmt0LvVPBNHfhs2ku4NIecTKCvO6PF/M
vvub7EkR6snn9LAhL3otrXXJRB8d3I0eIl7dGt+P73yMtL1wyGqziSQHrsloromg1jvNJipyIpcg
/HMVq7WPL2+Opx5dhXUtOG+qMXVO1iDaUZ4D0sbLaDEfhfugMo+AGr1LZErt+wKUpcbV5yNCnW29
1tESgBjkw8R0RFzly/MT8870p0BgIgZxM1jiGHAw+hT8kbUuFBPUlkxBquQkNnSNpzfmzmNoF6TA
RTF9GjlAtuBT41wIWS5o5l+O/b9DAU2e3iBoNH/2vOKeLuShHslnW5017gfk3BhykdCBjO5CLZVx
nZiHjzM9rwxbY2TGRM9O6yd74nvKBjioFR4jIFVyYCo+IUrauv7JSdxFwU+lCXm/1AGHSX21NsnS
NoQXsmlM5NOZe4eyMnYAuO5ql2OHkwjR9+FmfqKf7TG6UtucCYXrGrqBdbMFw8ZlY20wBOWYbFRq
+kTDac4W6JXRvjeWgNkqzwBVZBob8TUq2AOtuCMEj/d5YqRMJALjjae/Xv6ANPWp9Dg5IFm7KyzO
aPg3x0Au1r4OreNLDGtxfbddy3q7U8z3vPW/ydm7053R4U2osKVQsUvNIagkPQPIMLuwZBsfLEQy
MwwPihKyRMix63BMXa2R8jFXeNGE1q22mx9SxCkCR8d2hdL9mtny7tcBI19Afl7H7+lPxdFUiBAh
UPbe0SYyqe4FXXnK4ZB8sFExsoEohRnCazPGwEnyOt9rCRyEJW+euwnNYqOTyqWJozej5lZurRSp
oRsxWKTVu2mWponYhA90tO5ymN3qbuLTmA/qHhAV+4JtgiEEvP0F9TcNLg45aBqOogjc5MUfEKsw
RO7Ica+2b8H4rdn0u+Vju34hhbjbMds232kinU9a6rvb7XMat7LDXfyCc6cbZxAMjPE5w5eCFLEl
fi8fUFgWTimNqVwJzMew8pRmZI/UQg3xiLCKLzXX9WwzHfsnvPJSb/ZCcNqsuo46JixwGDj1amoE
/vOLha3ZJiUTL2oc1XolU8C6j9D8WmnT8LyA2pyIxRUrtpk1H1UKXj4IihHNd8OgcDngfiOGRJJ4
LUH8JSXF/cwSPENi36YNph9dRqyFvjm0/hQdxEB1QBW3s96o7nYwXJtBolvTEBdfWWpnC5/phY+r
24ewou+27fgfcJSUkwQrnT25M+raHijI5Ul5nYSjjmv+xRS0fMaGerNBRtB7Y5svgVO4D5kkYY6S
RLUqfyoGetF6ENnEN/aKU4eX4FieJ6D4Lcz2uGm3nm+qYL7F5TLg/3qqS9N6Iv2xgPn2lDUtcEmU
yGLNNHI/Myw1r2clmzMcQzJX73Fazqv0UknpkyRyG/pk4dCpGmcVyboMXYA9et2Cg6YQnipp6Jm9
qdEwVAqN+CA/sSbhCL6hLT7anxwpPYlVb+78d37YMtEEUfLUjXu+z32nv4zk9U/1U0aXVeey0bnn
EC/P9sOp2EKyuC92LjmkowmDpE2KfRqJqUE93jN47W9GGZyTfs1hmCyax07/8RftIC3Mv7dd+r7I
Zy7cF0mIfMn+qCdVh8XxNJQ1QgokhirQ4jrIE2JnRSnAw0g1e0Zy8ywn3R7HxBzheF21mtxNZI9c
XZNO7DW16YxFw2fcCG+7kBf+odR5ZWPQud0AvKJElL3K+jqNt7qv3+HgDWmV2Cj0xHgajZWDcEfo
/z/3yybyx/en/obnGgaS+ABKLjBfK5LWqJgQ04FJkh38FxXjrTHUSw81NqCdVUL7FHzZH0YsS0Nz
t85Y5ij/4adTnUWwBswOfEPLnDDOM4r51reFnFYbuuhMoB3O+8yY6j5Xy8bWDGPFJEk/Yl2g++oj
Od5fhlQoEmMoUNvE+rumnT2NwGdt03WrDlwYv3BlVcNiIKL4dNJ3xzcLNdiGg5F+hKE0n1I+gOUl
+THYUT6V9tPmDTDEOzRyegPYmeTdI4kO1B9+x4OZWsRn/1o4b2E4DCVmDnCscHNBjn6xqMEDYZvi
j+S8cgyhYvUNFrz74kMHS0NPoOyWXwiXPXz/YzS904mkhxlcII/0eShNO30YSPwHWbvorENYwl1+
qA7ugriRzZTG3+Wxry4kr3EgDShTxJjZkNUQ5sAIwFhIu5wf36Mh4Dar2gIAIEWDp0WAjIwZWCFp
+OvTe9fQ1Jd5qlqISY26xbCJOyyl4jNvG8X2ynSKeMhry5EAFyVJB9pSY9z+x/4eoOa0cjL1R/yr
t5pqonxEriM+BNJn9Gjb5hC4Idy2Iw0MDn1YxX5vwn+/xuK29hOozzzUomdwUEmZq+GGAUizFkqh
O4WkE4IZ2aDttuHl/l6Zpv7C4MCfphML7se5z2eCqngxa5tiSnE8E/IcazxDcnVaYBrlPj92I7nW
w5hj+Fki4nfzEWOlvDzN2lejVAgEgtAplTKr9hB41ARz/rB8r1phoQltvf+i9tqFpr87qDEvJNYB
rmqVB7jowcLyUt7THj8uEf10MHb2JEs08nGPFBp7RAF0rLd1ItJZcFIPeaZvwdwb0r17y8Aq+qwn
yeb9LlTdM8wrc8f17XoT1BCdJ9B4YOKB4+nx26/f4+eYI7ODrpGs2lF1zFfa53FQIXcPKgKE2+Jx
w0nrGJ882RIvHHoH0yGNl2mL9w/Xgjkpd6NrbWAAQeFxHg7Mewyzj4L3u1sTmSjpImuOlw+I+pl9
sI8WKzp/i0owiu9FpoEKq8bZcIopjS+ncM09ga+n9hvU0rRyGpg+jpPMPh2gsQEUSUcq/MOgiAM5
k0xCqHRC8j6jh2CUftstJ9NTRDN7SFuuX+VnkNUr7N9LSqOe8Am8UksnOV/CcuQ6Lq2iCZIz0OJo
5I4R2xWQUvLiR/Kx+R32YxC2vMFbmiqo/pJXjDfYwZkpAJUryGykWhZqzHADNX7K4EbWGv6VrsPa
95zo9T7O0ZFaPZ0HRmBXcTXKnKxcEnFhBtQrmQd4sX0yiteD8XvMs157/jNmqY3kwnEjXDDoqc0+
bugEKyxonOHWjOnaRII0Gzup3scZFeHjl1rjgOH7wllKgX5AZ5QzfpbCwndZGFrbjIoF4R57OOYn
twGWfwFx2tGctfmolAtWIgIiEPtiTZQBsEZ842BFJqWw6F6efv1iA/rLTmXw8Lhk+3htJbsQWqHr
Atni8T3tLKWFXiPfkRFiKsCTJIzYWa3o9AUuA+JlimsNwFgVOWdugVwT3tdbZXiRU7Xw9qX3nmv9
JHngVdWd3bZLo1UyfSD69YDYvFU1vwyg8KrW+tJnDHRokHW5qJ+lRF8M//Hf0QEMa0J1Ggg+Z6bP
hN3gpwDkeP4Z7J30oo2S1E2LHuZj15p7ztuFImSQWiwRjxkwiUl3t8GCXHTw4wNKoVMSeWzYqo/R
LnCGYcDVKraWm1RShhuEnzkWd1vTECRbH8wylSaze/+OtQxHAcasD5TDDYOCS/AWP7nLDu03tfwl
KOJS6vU6qTiNdcBLRwo4dpPm2aYXa5P//v5594Ffmz3Q+7Dz1Azx1rY3uoWS3y7Lix+8dgQyh75k
Kq/MPRHyQ+Ts8knagHEM7q1kTMuYR2dQr5+4FmJq7F5Z3VkFAe3YaFKTxEO+oee9GZUz+3iua48r
s/AJLejhoNoBfFssbqobcSy9/ldBGgy7QrcJWyXW4mO8/wvoQieq/wvhNA5e8VdfmIhvos+4Eii2
hFpEjpC8aaNn6bbVh9JX7veW/qA+zF6oJ9ZsTYK/19L7pzQTT35Tlu4pyud+s3jiVy2v4mVPA+0E
+2AAkksSVY/T9iTfd6wf7Bg28g+OC2drsCB8Nlm9gSrlVth0+nXrjxJ8NogwAPLb7c9ZK+tE0ZwU
QunwpjUX7EwJu1IinRwFDp5I36+cJSKigj6gyxbd4hqOepFWyZO4OoS61+OA35w8sUxyvtRrhSwC
7ObL5bY/p0KDQcRK7nIrl88k7kSEhvY1+ywv25H+1DrwH/ydEMIE6GgvhBYDwnqBqMAsb0OfOXsl
2wdK/DtTDRnCouLlJGUBIbzee9d/ciI4jdlNgVn400bOvUDUnCwRWVCT0i4pYl2pClrwUY82r5PJ
PmPUR5q/yj+NSDcjGkggUWporAljqRZt29L/aoTp6CZR+7LllSOYay8OQXk5u4GCgkcv3REqSql0
jclIu6tzVXIAyNqQt37sgLINrx8AmKnm1j0FB/mFEtNYh0T7um827x7N+DTnedUTwQkR2AHcM9Vj
Z4XoZQhMX9jvUKOGYoB3vIsS0fUIiYLMYjYFIFrs1BLOutYluWWR0knQA2yMdGIti8rPstBLpCss
ktzxA8/QFvfXBLC+86ZL5zwiK2c+mQcOLzvKuFDyVCY/lB52b3q1CZMEXoBblUnk3s9+nDvwSMN6
GU6Gzbbr6OTAg+pdTj1YZMRckN9uOL90QZRsEk6dYlVKFSqlC6ARj3g4xIO3EeirGE4e9GTodNMx
H8vq93cznV4r6Y1Z1CpbPxEagMcikrYcCnW9410FFUBmPo51waJ+9i5TZYgDP9juxI7Kk1IZ5Uw9
1ugLxrhgCf9GV1WQIZ/t+tr7OMp7jUHGssE/dvGM0QqHGOzJmn+zC9s6a58ISxpvZb6pVHoO0m4a
WYXWbGv5WYdTSQmV/KhJyBj8deAV+nOvmas2Omd3pchvSvtSrIv31rW81RuH9+alxsEZnsQXBga1
2pZV93Nx5LD90cnzAWVpSf+/SoqgorxZvU0z7YuEZ7BLLYEOqY5gqlt1iwyBP6hn0LWCYV62n7gz
HvFYtUkQbkbGDYB2zySuQkkfF7xxkzbVTCpzH1Wiaj2X56EWqP+6JKX5nMeGBh6CQh0a02L+JSio
3X7tt+OGMCyPcv4erH1rWku53hFr49A3cdeJ7PmEK3SKsPwzNWq5uhhB5r7cl45REuRJ26V834m/
xFAiee/XdtnCCp5JQLs3CMpWUw9GKWrL63inTq1HoR8e+GTUPWNIEBvikWYMNLHr8sGBO6RTX20x
az/esb78QALDxMUNgyEJaGztxCXwPGfhb4DX0WRwvJSSrgEq6gaKz/HZ3nOBJ51RPQHyw0MB45Mb
YUx0ZGcO2zBFFQV0t0bgG5PXHnzVnq5OJOnk0wzie6C7Rrdl2IblIAx0twc1K31TieboCrNM5uM7
pqCTNR5l9rrS6f9Vg5hMRpLk4k8pRmz4naoxzH47qNNvJ9eqA3ktJZczcUQAK0lcURsi4yKPt8i5
uq00EmB9wBcOyXdRwGvP3j2aI7pCKAc2NohU+FwvLMeCTgTR1vduCn3EzIL9lQF0nS2ns0My0Etu
qKnwYBfmjf3Wg8Wk+ZsFNFZsLupVC4H/JxAhPprHctsqOTlJkCBopL2uPiEoziQnP5S6L5RRsoES
zDCisKTT98NOSzD6Dq7qk0KLwT66AaaScMh/Soh4jpRdv59baS5eA2cOL1HZYl+VDlXlDAzQubd6
X0gDJuVzz7smVLYjnUGE/QMDPIga1kVLM3PgD3WyCI0p1xxRfafc5OjHb/NyMoxEHTAmdyRZb6AD
9Zlipzgno8QCcyGjoXBL+/+6YtE5Y6v/gxpD9KSkJDCWuAqzkFjkrZYQ06KGzjZzJbc9FiEeSSDj
oQpHlczwvAejEuU6XZhj2e9FacuIkBQJWvMPZoIBZwLmslDj0/CrNIpMb7lh2bCzqnJDDz/CqZC/
Y8xZQS4LXqvkwrjOM9xKfNiQww6uTpG8oHXSnWWCMZekx8SDLJ1lUgchaQ67eyqPOvsWoJaLTGzw
57QKZFku6xGIRtaHMl3uAb1lPATBPdOoui6knV9YTTDZ7zomJ+FhgAmUjbBuCxdtDtZpjt+JwHhO
bDqif0eI1yHRs7aN9krLMWqwIvNYG+x4IML/wjt0Zz/0x0myUPqkeCLm9aRCeQMgS/TprIR1jtFc
SkG6riKQhxfKZG+GxGycTr20BpTnCwR8xJBty4urmJnnAGEsczQTxT6/mdFe9aRg2AcXQEBDo30h
RRZcbEfxHfIOr8ae91fGpQks3txn+gYcPbW9W4PF6+eukEgKXk717vnWVPKwm8TJGWRCfW7bYoat
2cPRr2Ea0YHCHgioIAdsFfVFb4cUtSTKDeRs7e/z7eQ9J7CjLLzRQlnoxUOMF5V6clKFizGiaFCt
WvGp26MhJR0AtGD4ifbAhc1dAtFylLw/p4Tg4pz5zqfJjP7TTLzvKLyCAFn6SYtbFTxgMK3/ae9V
CgSwvu5mtGw7muCUjkLJc/CaI9n+8Ujb3a5Dl2iYKaGaWzNaDYn9HJta2ysw2TMw6fE8jXurhBto
QIDS6uBWNhT0W+WZrsSeeWrJ1VD035KOUSd6XnoVoYCyo5dQZ7K/F1FssF3nenIjfNfKTE6s10g6
SGf9Utk7EIGZwdnpxMRE5D1O8arP9PMxxa7oR/aBdZzoEKXzjnt/6rjNZXTqGbzLNei24wAzEBfL
E2YMxXtI7CWIFsiuIygX3/ExKrjk1zimrJ+pDLcCKGVL9UQAXL/ee/zdPw6lRgFHaEJcVxCHBmYY
quzFeJKWt47CE+w1kpIPswxQQycUl/o8Bl4XO9t9GSbygj064FCi3kyZMlxwcLtv6BHaDlBQY9fo
pdRtdE7/fcpZyRQOs2CYbSyeLCKoD93JOTMBwgeg253w8NYt47klyWCn4k9GX91Oy0pFCWrvf3Yq
Etb3YxZ9sQg3ukxKYtNv1dvI9fRGX1qlN7d9kfgt7bzV9Ix4lpYN9M1q1Ql6Z7mVYYcNqLG93pyf
ITu/FBlK5l4hNOiKFYRu4hA/XldMhnt+gfcuM8VadRxDEhyZ81RaBgnQ6peHEuPZ1FumJtshbi2+
PldUwSIFG9oUP8WV45nGToxSSerxMtwdKrhERMGIt5bvrxpeGGB2UBJEjIn91siW1k1UhkIDV0U5
yum3XPTNeOzkkLQutzmAF2e+rpJx/7dwARYfQfJSupOSPopbtQcPQxnaMPS8+WW6PFIQ4lZagmlk
l1xMPJn1FJy2qUprR1gpBGBeJBOq+/eAmrl320IS3YXlTaxhHeAxCvPh053EwF+Ck3BYAapy4yhD
gk7eb/Mu8/V1VrEFWjYvVmTmR3rB6O0ekZhcjaU11tgG5RZ6OB/r/vldTLe2VWxM+e6R52vz6Lz8
OPPO0OengKYmRtKQyOCXqr+hMUpJjPd13m8gg4gy4dT3blC8m71zeuSmidZoZTZo6ILApvHT3hfY
E2H3+SB6NAlZ/JLbso/mPhUnmwmJYlkPpv+c8oRQwRIIIYm2xCZ2fJoJCyDMAWG7zuCqoUYeqae0
fzukw5NauvXP7adenBbh22l/g6VEOiJt+rDRy/76xS4FXU60CZMWBW5M8BOlEFSBT6Y18PJ55Mgx
HHU9zznCwLB8rzs9cQGPA4WPvuogMtuPe8t8Gl9hJRLjGf9TiOD3RVN48foNgyoVE+Rdo47vpoAW
a+TjD9+psferCeoxC2H9IxnPpSQDeJGthRtj6Z5QPuTz8v1ZsJBjv9Ce3XrI0gM5XpsbtZV/HmMI
xLzCeCwXA6YqcjI+SCjzOF2ErTS6t8pFfR4ScYpEyqBiQ0EeVdVdCTtB2iNGubtEH/xiqKeCblDS
WMLfvw7chG7DxjBUBL59eKzFYyd4nCJQR/1ed8UyDc5VzVcx3ZNKS0OfvDkE0dcqBGuXA1eTVYtX
YWKlfkVtjZuUjkpXiv42uSjJ4+whFztIAZ0O57f5T2z0LQBySrbt/C/dBXhdWFKSGQEUEyapRX9k
XPgrY782qDKZ+G5MCJvMFtffMX8IZpBOGsMnDOGkeTR8ppn6NJcLDv9FDucSKZuC/RMlJFsC1Lh0
9q5PzmkwtbivWpNXC3PfjCJ9qzEPYtTHxUpnzCKJjAyZeCJDIaCndBLymGb5ZgabtNNiwNNPC29b
zQAZSQw4BPgU5houK3wzyiWgIa89y+o/AeeU7W3gWgky1y+FKIjsAw7LoM1cXGdlLOLaBrbUWrsz
ubrcCJCiVc7cam1fs6pym0wbRJQ0aVtTzkr1vJHwSrKAB0uBR9z6ykHpaE0bIlDjSal5yhomRi+y
2EbIvl7rReijTAuN9kw3z4ydqmVH6+JKVyMagmN6IP5AWi4me8jjQz9mfv2hMCWHEIy6ZnSLIH0d
350iIftgiTlviPZ+AYhZKXVCssTdyNbTaWYnYW9elrwhWy+wtMMgOw3GOhYxJ8d9KBU783Vn2FUo
12hLNxKb1w8hSEIlQt2GeNzRrSRRBW4dwTMjDO96mKMVNu7t1PwAJpgmEENwWEdXRgTf+CcL0SOC
AvVr6b3g5JoZDA6qf/MZP2QBYMF+cBNHGCH8oux/YuDxJDW8tS/Fo+NRThtLzq+QtCpGDg9jDzse
jFnuIuQ4QrctLZJEQbsL8F77s4pBw3Qv0UMiwguZw1/cUHD1YY7WL7dpQM1VdKNKhr7VHpEu+wCC
ssU+Ut/x/qJqyvyzlAeRNEPHUc3XWliuzSp+UjDUzBnmiLYqTkAbZ4z6H9RXABNLPnsKwNngMUrs
NpruJmfmHjgCcsJDRy++3GT3wOOrmwlIZJdZIQcwfh1/HZq9/OU7nBaCs0WtbegkH1+Gdhzql17P
EKWlLhqFykM5SZWbl2OqbcQKuaS3uoHFk2QhxTnzAy2lPr7OLdIJKl+hMfoxHjVu699O8zlx1k9Y
p63l3qJ9WPSYOk0Z0SXVoOVMsl6OwU+cAqbkDet82/3BhDz8rLKsJqcj95jotNFwzEbotVMLN57I
WCyub+zTVrLp9FQGExwKw5qMk9QsAGEDKvbCAcXvejKDhVut+w476uSnzCuZGAhkouKOhHKFLMo5
IdstojowOPr2TKZVIvvWRmzhbSYqKstK2b/icwBjgSqfnxfK+mvTmTXnfDg/g8//vtD4IdBI9rnL
AKnQjnwXkEC43sVjNfvXqqgX4fCehy+cRxYfM+zGzTxhOe0zDqBIWsry6zsNnteectzcI2saxypc
XPeck//EM24e7aYlRTjwdSls//S5qmPdmDHQkDFcVgLriUHhp6VEudmvEgOh+/h4D/ErDq/8T0dm
iWHsmK7q+YnzK0k+Y/Di+tPe4pBM6dCquxYybSE40Bj+RP8XFPuKCiChCKR/zo+m7JggaVkV0Uv7
wdB4Xawl1IelOsL8XnZWN0IUom5Hl3dsJArMBOnBSa5VqBAFeqbOVZ2PtIC/ZdGkW0VIU2c4WIEZ
LjsfUCkVpcojnBtrHVRKA8ETsJh627SqFvUtEwE2gWqZGMC7qbulqkZIjIZ9NaCdpar0yjwH+6Pn
W2MEhybMxqCAWWAoEBgDA8Gx030GNWcTD5wOI7+PmtfueaOIXFbktw6I3Kg+XNkSaV3NYqk1fvMn
kyHaIOfKmUMlNnOuj+ODS4zOIA0Ct0GsbGcPuK+aobdebMrjNFhgz3V3w9o6HNnnG/cM0Itqzr2l
xeL0W8+9kc54WM972HIZpm2FeVknpuFvD1zIN9OoWngo7GhvQRZ4iJg7tVMXvzxjX+oMg1DniZ5a
FwhZOVX6ry1cKbzwWkx+XOgXYq+XZP7ZC0pC4M/NHUyGAejvehBXnjasS0I8kHXgKJhle2qU3WE6
RbvnuzsoRfi33uQjvr7onaLOUZCw7ElngieGs8LgiyD2M5dZT9xOHB8WtPu39bsMBI2PkMtiUoJe
2AT6UuLu4BTaK7TVP0q0YXdTlHGU18Wo1xg1LFBWednGlQBNI12twvyd9VdOg515WQBPuWF4VK9y
7PDza7Mz0UQ23k4MAE5Ty5jLtdeaDLS8vxVBhmGRt/sxLuwReYATo7z4/PdAoShrEkXUd0QpsKfY
4i/FMrBjB4RuFQ1wqSjXB3Rah7xYCMZeEpOn15yIsq/Y0sZANbMC/nhiy5ymIaeP/XcWA2H+v1zc
p5nHU/uOQwSO8Yt1iFYa7rsSK732ZgyYPbHXzQU1tKv2L5nEcqADpaSXbyGJ+LNQNONr9SDo4xHN
T4WxhZR05Xc5Zn0WpDoUkuBKc6iEsTlPl6B3z5sdkwasvhXJCw2lzQlM1wtkBoP1ayaNpl8E6Su8
1QZcdPwUX5gy4iR62E2/Wzh29iA1YelDSPkcdXZnz2x/vUCXR0A1607a/loacqIOXwc6iMzFh0FV
HqDt6Dy3ehAo+T28hPnxX22HTfkjd+ICtXiugQmBxI66S1KKNB/Dnz9pUCKXultOgt665M27yqGv
ZmXGxk51euSE5VEKQrCQ2d4QbHXrECDauGr77XzP61DYtqIEdmwVrf5wlgGNlv+cZ+dFIda4Ec9k
lzES3odSG+/U0TeMSXW5hlQTy7AJ1ve6N0PFocgTEk4eJGe+AsWrB69yuEqLO7zD5aHJYoBJDXIL
w8fEhwijqGDC+cbmjTqwxqI4TOcMWOgaCxy7djwLBxCbHif/axZ8qQnFqcKIAQtxrl8IQU/cDtsH
uZhUtdTLU2WDKr2O+eRu2s1AWgFAy6zUTP3MdCxxr9wQzqKzwuIXWWB+hYIgp569vwurwGo7+w69
m1jjltNU8tAYh+bVN6UDtlBJ6tFmqr4JWD8znd0L9FUdlBaBuVILAwDn4PghDBoe9tJac4qGJBFk
1IkREV4bBGB52fjrPTp5mfNnKbqDWooLuuDFDZJQmZCm+sWcPqI98fI7oJmlaWFcfU50MeEPO19Z
dEIytF1Nb6RrN+OccAL0zyYeb9sJMo/JWu55O6wenfNtqp3wIsFlFuPqtdzLvH+hh7fu+MtxwYIL
LyqU5Z+tUy3JJdmS49s+zfUX/ml3w7Y2ZuBhWldVhNHm7+ICIU7PbqPvtRM+9NTlUyXJhpr7/Nd/
1p00SDAIGESrkUhgZoLZF7zGESUxe22/TFh5CthuafRpoSwo6tk2WUKP9ha3vvKh1fHVegc+CSaJ
CUOGzLI9u+98r256PUftQSbdjjuQ+piCinGLkYcTjjA4J5oWcjWOt0gGWEZjvqiI1LnwuWBajE3h
+XrHCioiDBdByEfGs1uYV4jqEW2eaRud58kWzOyzgwXlflmJ1B8uU6YMdXQbOpbj5VtTF0D2pTfJ
tQgDRl7mXrLzAUn2Xxad+wccCyIYwlCARYjGJyOAv9TqCztZtCZ15cdfpJ7YyvqEXFYzr6pV8EYc
YB52TnvdFPxakQeDcMCjKAM58cXAdySfmKOalcInV8PhtuLO2TAKhf6aDXcggJl3Ml3QOxlKvSET
XJGvk3oub8af+QGL5Rd2GRuDtlMsdLyQNTG0OdYGUHZG9DiwIA/4wM4psrNtKHLxf20R47NZGoj4
F1tn6UIS6VaIuvt4aeH8qqdIsgov2FruZEhYLXdZu7AnGd55nJypOtuhamjPnwtfOAph/Tub1/eG
WBvHqfMWUwGCjpxy2LaREtzELAJJ1HqjSieO6KtVGd9cgBCOsGaEVDJPnM/GP+N2q06uo+qYQKhW
UpHUHXx29gheoZzRujznx0Vi5hFXNY64yru/nIibgq3+Tb+oqFGz3enjVG3IDTcVoRaUIBQUSn1j
BWcDF1ILvZokZ43kreTeJlnjPXrIp8EIGJ9+j9I3QLdJruGbqYFbBgpCSSvLMfiXrO/LiSGXTCMH
fJe698BE9Yx/egU8cfL7VYbjfcXbkWDDyPAV0H23xG3HJyeJfRX+ZcIpxst22LCZCC6WxaMCPBXX
3CFTcAsYTSYY1S+JhchRX6Z/+HN3iAGHru3Z7NcYeeJGOnTCuMztNi++1XLHSFYtkJ+CgOCNTeNY
070YNMlsyzOBkwQ/lf3wxCTOMwNkqoUGrJZbS9PyGh+TydYbZT6+v453/3dzZLTsbu74OQTobUHF
4fczPlVVgLS2p2lFAGXNsignSFjdDJvIt+4Ps+N6I5y5YnmwRehA+ssDapdDyoI7u2cFeZQCzbAo
/8y5OB2xvach0sxJ0udXJ6dI+keaA+s2Qbinvpini5PPHvKD7MTAOqmV7TXmlOge1tQK/GRMkmkD
qPALn7QgQjr8jtUToM6P/GPzceqrO/F8cOLaJCysrNleR5fgCAmstQhpoc1v3rPgywArp8mC4IPo
/+oIxyO9CZo0FcazAZeRyvKYrRiU2IA6XxaurcEV8qRtQ7qKZEtkGyy/D+W+RzFOQtQ39gMm/zKC
M2iiZaNixd5M3Z3sItKHiUMNVPcZRrfkPauzHjqXWyZf3JKRRtVUpWvotwr7mgxs6J6n+wbLeVNb
y+mqmtol4hfZAv9b7hKcNauYtreK8yoMKgRsWOem4eor1GNYCL7swB3S0jf6QYL+IbwyeCaZNSN5
540W8iYXgB5RwPZ9/X2SPOC5wi3Q7baF+PZ8rQ+Zer0ZFtySIdnMuR5T5N5ThJ0C6skersMVSoGv
vimkkyvsQifAZvH78MbMoamnkvt/VCJIOyQZoHb+gRqxXH3VVBSVobHOZnpnhNpFS6Er/+t2/Mo2
W84iNZnvQyeACXB/aVyXK9VsXou2lFrdpzMv8knaOKHQs3YvH1FIBlqQWFun/7irX2SxCB4t16np
EIbVopsC6rNrWegIM2KVr9BmNg0pjzM+DwegkugF/eqaxc+FTaYcTLCK3sMHoK1v8PjpWp2+LVZE
NWA7ZT5dH5EyJbrMkpfmv9fzpXcMTDgie7V2013xynJxIV9aN229/LlSb2LxR55mrAaoPsK8vDqM
0yJP7D79GAsoDiiQRluQD9AmjGp1NE/k9M4PdpNYRmaXanCgj3/NQG0GCCdRjV/R/fGJb6RjPlVd
bLeZhiVOe0UYT2EnH0H4MArHOFJYY4c0svGzl03yf030qk018kLbu3QqaxH/ghhwO0O/q+Pt99z2
sfqe2uMtXDlg5CCF5+eRtzZ+OcOD6WkTwLS0+f7nDVMninUhti79HG+EuvyxWy38ZPRR/CPFSlk2
SKhprp6R4TE/nQhfnC2CxCUZOHGz1EPafljgmBSlEUn4lCoKULaX9Pn4lFZe0xkfz1FX0uFePv1B
uWPLy4Mw7P7vKBYuJQMuAziEXsCSeLfeb/ZjgrjyycV9TDajuKw5FPgN+pQB6PzyQrvQvQD8AKza
EG98tY9OmVWGZ2Gc8QwUXfi3dqXEYANpFHGTmcRD326eysWGxpKGnF925jpSF6gDTo+iBkcapdVx
PjwVVxAstYdrHTBUqbanIR5lbODPQTwwGtbLRIwIQbThrlHm7G/pWVgK+d2pkU5DQ9PMw6MkyUci
sO7MWiNPT1E4yM+4bNSnjJtKc4/OYmBXnmRUzlVJ03v2NP2o1eQVsUpS04xJGnfmgLZShsZFr5C7
DOKVs3sv+JUZy051oF5dKeoegZTxHRcFWHypNbNyT/fLxyGLYdX01jMaWeXj70OLX8cXn1HAblHU
+KqRfMiPuDcD8c+gzvRAZXJqrNWGXE2vjboAdRzc6B5OxyFCNutpz4U4/szN4xzzaIU2ioVsgxxr
zeJEIH4gnqinjz68e1Piotq5vILfazaf5ePYAOF0g9cFSdy8gmsWn1njxJgrqJasTND3yflJtlXR
5COUvWJuzcgsUj9Dc7Tq74sDsl9TrPV4R1Nf2I5zoGcgg90fcRFHpmyaBbmHD31wq1sQWl7XNBHF
KOKtw/0o2GdjQuOdvM6H9ciK9F8AXPuIwWyg/gavSpE+rGGeWfGkfYG/L1priJLJAddY4wFjHm49
30TFcXA5FJiQIjXLUV5OOd6COjj7lZnLlSNMZO1Z5DydluJAkb+9TC34/W0TnkIyE82ebQbzUOhS
O8qvBzfxM49+YosvghcX+ZvANr7KLHI6zDJ4hZgiZrLJ88hdeMmTY8SjEDeS2jW/Tt0DxKjfGN3Z
ISuT4JrBbR7XupMGixgL8QyAKa4wJ14O11s5xPXwc6cxcG//dsP9qookO+3JRi2mY+lZDNdDlTsg
wwgLnbCgFppLJaOLRpyTC+nbnwTgHyMtobYeJJRH4hxZJzu7R4m477oPdM24Akd5BIO9RkEkJk/m
Jiq0/RdBjfwU92xWRFEV+yjNC45z2gsZzPNeemd8BWSbFWeJnmV3jrP91yQzg7ho1Apdvs6BTi+7
BL0GJustNzl6RyZ8xs0NRDfMVRvnWXPN7g+thryMDxBWIJxgqG8CdxCLWleoZ8UQcKG59wlk85ul
awHaAKpUgVn8jlQtjIPrxQ5b8cr8iYhEenWRK6rcODG8T0sw1XVeem4eXnLvtb+D7paDa76/TDBS
nL7YFFHdn+B7KTA/gOTpj2iY8wSH0xvrMIjRERRBNHy8s8TAV1yiF6otmChP+GTFKV6Df7UNFk75
0OG3A+F6zVsyOmx+uBN+LtYj3BidERbLCb59OMNalaixCDV2/jm+uQBX/LysEmouFdbjWXy10OP/
+7yq9EN47Ve6/y0Qj/Nc3w4DKwoAyVqDmVO1BMtrZR6P/uykwRpUJbGrShvQWhfnI0weEGDsv5Ze
PqSlZMu/Hnw8w6eVLQOIl7gNurTYBiikfXq3sQG6Uw+TYtvRpHUHe//MhcDEOzmCceUkL//7SKlv
0ozqopboEBIWaliEEea9Lslh4eul/YccRYm0drwF4qkq3i9yX/p7pG5qZJXjLjqRZWi0Ja2r6vjm
BYri4u81SxHD3qgbk//kUqMXZqBqQO2kEnwGh2CbxMnG7WUu1QAmzACzr/0Up3H0ouaFGyztneIi
oUDeuToh2XjkKxQrdQR9UibcoqxnXFbNraC/hPVfYEiBgE3hYMb818+YIaYKkPN1S/OBq7J8ruoz
u3YQuPNN6Vtka/Nrrr0DDwUQU1dB4NFckxD1P70dYNOHvz/WI+/+pmik99pNHR+lLmK4afl352QD
+/WES5G/yhS4sg3GpUF9YDYxKv7WNFWaCl5w0SsqVo6ms2ByREOY6wm8LLKJTuQUiGRWK3Lm6PiE
5q4Y14IfA+aC7vQ1hUPPJSSwSJfxP+2ymGgqwKWNa/erSvMvnAp8KDe7cPJXM3tVIbv3jvVbLlvh
wuT9y4SdwfBE4cseAQ69//gYAgYmSBAywt2OHMakcAvwlDboYHGS/jBv063HS38pCuRG7aXkV0sq
qTHrl21CqU219k0QE2Qe5tykcocu+3PNmp7vS6CXJEI9PnhHQ6LZllJKOHRtHClGEZhYN39/TC40
WKjxVx9XG0OjOuNvy5xRANryVZh4EBr+634b4sDAHvaxtzDC/MfKeYLCWPHiRqXUXku1JSYHWChC
lHOAybYlfXzu9sXCnI7mjR+L+RYgXcs8NDmJ6kntFYKZq6F8glhFXMaglFN+p9AIEmSzJRM7lfi4
LQDxY2D8UPon0b7Kk6m1h6NK8CnjgqKhauLO2pCZkqEzYJ6BANR3o25G/xUedXVxuOXHCrUA5yOR
g9e4PHCh8JJRYtvGl9e9T4tSZWZ7WUSKAQq89yDwOI/ajOOZXOwvKJADB+nUtVLnpokqALqAzahL
ogucy4hUTScaXnvHltjSeczXLei0vPmJTnHcV21uEgAnNDxHy5H+RhFuDpsM90aHd1/3OB//YEiT
MH56D+knebliDOkj+bDzBbXc9fp5+uNJeHRIdQH65AZpxV9zgGHpFsBWZ1WO7armrYCRtMvyomrP
riRsX8Xo5TUqDAsTsnAvYF3mYvh5551SEfgRxTmx/qR4bCkJ3u/A8GWv9d7YoJIHQoOiatC5Gmee
Y52VuHEbTcCEu+WW9FUzIjOZuFNSnqBN/cICoDIwPpfNVTUAmLF97BbMuS1Yg5V6gOJOv3XGReLL
sgKEKmTw8+h0sMAF0jMGMtMMnw7hzMfazJKgURln7Ojo3/gl/UEzo5AssCl6KXQvrNDl8a8DHxrP
Q6AGVpmkX6VtT11I6mXtOx5zw0KXdyvEvglWzcuslhJj4ZUbXgL/RawHw3+2MIOT8uvVGFb1ZC2+
t1Zc2CdEnuuW42Z1meZPQU6Ru9kznXfposrCQawL6Rhs94vWxkunNSllpxRShbDLw2/eIQ3ifw5v
vI9rdhtkkL579sUDeqvWvLMf+tN0Jq20qF/90L20fKzI7Jr3o76D5MhOx+QpcHuxDtDk2KdVZnei
JA01Cm384OU3F7ZkS1Mjqe2dO97Bd5xfkXBrtKXIaVQze8QJYr1ytb7fWEXYNixhIMWuJVhqC0gV
3wU52uepCfay0/YspkWBRquPHFByeWmkeIGcAVehkvlCiKNwSP5Rxuz7+OVdqQJ83l01yrtju4ax
DLdOZj7VUdKYtEQjqqALW0S19Z1lcO3iBAhC4ls0IKktxrUt00eWHxFVwMyEiD5j7piFvatjHKtD
33l/qKhyKzzV1BSiHbMfKBoaWG6GZe9hXloGS2NFCDK3C3vKqHjOt5GinsECPS7OT9qxLl//oHJq
/i73NuKK1eou/egL5L1MOatVRkJn8wvAQV7/2AxRj57VlbYOpssbd6wyOytmSYAQzTrZrhwytYmQ
DFEGggl5mn48PUkhmBmvyRreN462gaQIM9/oY+k2harVEWebKhAPKYqrXI4jux9kp6ERDzwAD7+K
sTp+heOEschO6Pt9uhKmSo9XF+L4e6LjfbpQ7UccC9aiCoXZJPkKPF1Fu1xEJ9cBAUOlRVgysjKY
nDFVNaS8RNIIP4c1pyEui99I7tIKAYwj6bwrSQpBpN2QlAlhEuI0f90uuxg38PZQMyly0ooTQVA6
Lx6iiITQ+mIXEWMUY0tbLnrePtCLEMEA/0oeQ1p87v7F6IE73VsEliNampd/n/PzKf/6SuAN3OnL
PgYKK+IkUIS5fFnZbwDNEtPj4IO7zWb+4ZRFWXyjWmSRDChtyly6H0Fr/fYJRnQiS7YvBpqLQ+rN
iWiVG67FL0aL8lPW2wK7+rbTd/EpSIBz8i8EEh4D7Ym++lWyuJzPuhmGIrTXNjvcNMZSkUMbSYmK
4DYn/m/6aTRs24wPMgOyjX57vJfjntg2DCMT+TiiMExSTf39qAsuYX9k2exZW3GA4BolAzGk26wo
Xyq9GlZyhvNPoNGzKJV63jdVvFHzc+2vV7OcH5dM3UfsG6uj4KEwag9B7GkKXvkCyaai699J7lda
mt0JTwODlL3Jf/Wiy5P7DuFw02ZwVYgvCMFZxyrXNuZC37APksNFmssC+JN4MRXjV2FeOHig3e/z
mScOya6xHxnffqqxHFibHwVt7XFd5JiUrE7GMXtrJp3sd035k1koQKx4gX9XWzW+hpwaaJxfmGz3
zRUKiqWcrQGInGoZRyw5NGOS3SHTZyo2J/6So1pxgA8mP9A+cZMLwBSeobKBIukHGcm7d6AxGTZD
tfW+3II3gHcQ/p3lxc6dFauDhioTdEO6HyRwoPmUU27xb3wmYTSFbkLLJiERmiFD5rFeK65tTErL
Wvf1iCDnlrfl2MDLijQjLRNmM/eAZ3GDzymdUcVPh9uq+H9kk2YbpZ02JYgDz5gOBlusEi94niAy
M6kbUdGemHgAjmeMRCk7VamzpBrfcEwVeHxfXV9X8MRs5kcQa2Ras+0WvBF6I1QitICEccJ+k4tm
Pdoqv0Ly6cCntrYFjYKb4DQKG4AlS0jduCb//qJPftt30CGiItpGyS1E4SoEnxiNRPp3l2pwPFqe
R0udJLyQBu6T5O5NKMDkNz2UlrHt4uH3U4O56piYzs0Zj+Pxh3Xw93HnBUOplnzfvNK8lHDDB/6r
tuu46ScccYHS0LDtqojAxwz8eBYNhVpmrnGeIpg7fa9CWt4Vc8kxc1wxX8rSG01RjUKJFRYKuDmk
wyDLc1mmdaP/Be0H0uZdiwE1G8RnTV4icKmrmPMybwC03ugeZcuh+u3dpEqOHkTT9hyNoOdLOHKo
8sQyOgdvXQybDBmguxT58/MtHw23ujY7M8ubBi2VEWYpKbcxmbgmVahN10I5NMpWTAro0Mr27HN6
FJJUYVkqzQEhXq1+i1LiZXhQhD3nCPKuA/d0d9TNMqvj/1/3CQPk7S/Avq1MklCf+xY/zhnSe0mi
f0oqW2tr1TzNKgZv9nk2iIzGC2aPm9A/8LRRlHbmTd6gSPHlUMbaZ++maJPqCRSfbNDAT8AxsQVL
y3eLQj8UpEoaNq8zqk9dJBetnRYNn7a5M7JH3UB0Xr56oRr9XqlEKGKMPvPuZXj13Vzj27UTPgkP
96UE1/xfi63x8Ix/ConmZt8iE7sIMXqt5lRjRcDmsX+JzBf0NPhrZQVZvA8Jg9nFByIu5z15IIlD
u9fzqQGlT7RhT8/2nqxzirfBAqgESYyrrWHRRs6DMWWjyYHKOjz1eqZ3EqHqBmuS9oCGfVgIRFBE
FGB+pnJKQJWyyMPvsaqHKG3BjBEph4wrbg5/xFgvtf5GwlxwW60cfSWbw2XC4rUSr9yPBLbQwHrQ
yw8j3ASL4BdwdZD4tHCuwul//SP+fnhVYy9VeQOm7u0uf2w46AAuq/lKo0wFaM6SReQS+rDGOlXd
eIs7lOIRkqA8Uzk6YnDwDmPHn9m3xHr4mF9ff6ih/GHbd1qfY2TqaSOx8mO4Y9OCtlJz0l8XC7hS
rMuaEpLj/I922INGtbChpAnW1zBA6EeSHaopV94j3ikVwl25q6mhMeojAcXceRHT0qKw6BYdCA3R
blCIMsPqQp0rACAXJ1BmJv/p/69fEc635Or9nPIG7thmkhzgalIrG1umMDA74zMpLRTWNCmcba6s
Gi4sYroT+k2GAUu/TAcv7zyxlkMB6ZlrmxUNgLq2OUZkZqZpOoPDe82qjvdYpELFUO43GwQytUNm
lw9we2bjz5dctPJ7pU2KFrW8SZsJqwjHoWyOlgnomplEvMY6Tr6Ze3ciLpmyHKyw/hRYEwKFW3Jk
FGoZ6CgSxwZYeqDXsyRFCvU49eHRCrymSqA46rDFWbdtzN2jPx327x3cvM+yZsg9aUydzUt38SNy
aQYCAVH6A5LG+O7XnjK0k6mEU6PoR8dpT+qsvJKO1rRg5WZQr8e9q/zbkhGCsVFPASdyzu+G0MCT
pMdEbHWeBFVE+CjyLClFMiJT+xUSWBJIKzmd5euWntBCCu+kf4mmopr+aC4ZmMd/mRLCbYnggzSN
m7g4Kw/Ui5tOakJSJOcULqzBwb0MMCutBOOBxP83Ucu5qhgjDYNFgqZUxbAmqcBTSyGmOfJB9OdL
/adRwuKWWrezEmAZslwH7w5v2vnZwW6tIi487OqhShv0KQkHQvky7MsiWvWShGhCEQINpQHAhGQw
SGoubPgdGGRdVSIrrqpZq0dqp1+4JXoQPweAsMACuFuS2PJxPQzzUvjFGtNB71JHUCtPEO/MI7sP
D+BMRJvhu4hLOfmdygFGMDapHpqytyHbZsWMVHE4f+Hei+hLU1h9AJcU6kerb7SfSAr4b8hFUcS+
1OUkooux6DoW9U8/aESD+g8TE+M+xVntH/n5cvJZl2j+j+ja5eJBYCql2xKyznKOmfG1TsQyilsr
h7a2oigidUrPaxJ9U2d9B52HvXaWBcKGmnwiJQvLcymSO0u8s4OxZ3k6N3lCJTxqy8EpDFRQgTJu
wrqkyFZUzvVkG0q89FGoBl5sNzCVPuN8jt+PE97sVpV9UaISgq0ZOyn40nRtc7MIyTWE4eNmWa3c
7mXeRLcqUQqpb5opjy5I8x6R+wX/t2ZPVSr3N+au6jb0RPFfqxa9nYhk4Ki2WeTKvrTxD9ESbDpb
Nc1TxUh9+eaVOewvEniCYixiN4HYxBeFGWWr5nMVzo72EOvO6G618NrFeCH/zHWq5iPTFgfot5kf
c1zJPuSQpOkMQy84pJ9u4XGqEPsIf+OTnOHPhRrLDCtf0jV4PvyeXVE171OdmaRoKQilPJ55tY7S
N0UPcU9HXlOLDFLtiqzg6ktNW3jO2Rb7WwFFmh60qHb/FQo+eAjdl/2vaCo0UHx/WNsthf8nhsJz
k2EDxzyh5CE/ZpVQ3sD5GjsRmquDp5FcVDWP40xR9VaUWTgP7hbmJ68xzXToF2Z2TmTR6/Si9m6Y
1zhN4hBLaywvV2yNLuLaPmWZvXkl59ISH51Y7b9g0Xu/dI/nT/UNmBh/SbcDy4wOgRyKZruxpkBt
KrvmeSREQEDgxhH42BfXY3oYVraI8U8w02mcaDFV0UW1bdbWpyaJq6zoFZVefk8Mhmm865pN9D+k
U4G4k3sbarET9TinDHKgyzNm4JvjpV8i9VaP2t810VT2R04L7SZHxAgrJXYIvfrzCpa5gS/6iVYO
HQF0T6t2O+OV94j0gMvnjNFgvWkuJg6ddrahNQ54V5qGqFidG1hrD9kGsxh/ZqF0Hme0UdfXCAHb
Jk7ybxtynKyjbbcJFqbVErA9+MW8s5vVarbHoJ8PTXFAco6iApDgy/4y+zygRKpRr3dWmgsyxxgx
x94eWxr+gVZ0DDuP83t0r66zTntdzfP2EQu6g+7xG9TVW99lLZy6DkvrCimYD5pIGlUyNO/vv7wk
r97rS9ROtWmAj6lvtWaLldkx5+Mj36cXtvreRzoCJMVm0aLQnZQErnGdkWTqaKHHTMTpjVqRhY/+
xNQsGp/5nLASPuPHrHPaAgfTtRkok8QLxAlBxCavZVIyMCZuYlMeWmvSRpSB72uwWj9P3KhBKeq1
Gr9aU4lPVTYu3/2xb7/tJxlaEbys/VzqEkFydyjh0pbt11EkggzCean5YosJnnTAoeHt8hPpKAwY
TNT0TgGcXRpsaZCzd1pdtJTei5TP1EaJHv/2ekpSwkbydkzo8Y2ASlbS4ixLNjFCWT7pfuhMYv7M
/nAEwmNUrrN44ku2qSjuCU6VdXRy+FB+p3rz9Ro2u+tfAl41oVpPuYK1YYbUaXi66QB2mA9kgbzD
Wfek9gw2gjQp8NueLzj5nUs5+LNQXW2r0y8H/Vijf3jyAM6Ih9XQSGrEwIgB1il/3vtsL2GtvLBW
1ZocG/rvZ8+64fetT6Oyg0/CHorIvWnwVrlXoNO9hMioXzeyI1Az7FsyUI2k60z/TDPU9Gj0UMer
LmK9t+wFAeFSUsa9TuIy6CzqRhxfuqsmgBnI+IX3gGpHNG1BrMpkBudLYHji7PMCx0dZosBHYelm
dqgiJhRRAqbc8PVhKQRvlcRXt9E+mWhknfHEVfdiiozJmp0oPR1HshULnDSG2FwSIuU07w/Oy5AD
2Iqo+UVPjHnf/S959Ln9KhWqdQS5scrRCyeTBoiVhEF1WT9whol9uJ48zYfmlaqNj4xQJoZoJ0BH
VKRJElt29rrDr8m031lzGZd4iKCZb9rpjCE7BnfxUDb0deaeim44Zju9f8iKEHCTYd3Fe5LJNhiD
GfDerdc4MxAdKAy9aQrw0zAOidxu0VHIC5OtmEpr7WYBO3v8v4yrIW+ByPess4+z5SRLwu9CnpRv
C1869QBO1V/kpHsQd8PyW1dzZL5iBFOgOp4HYTiJKMIQTECPgUeRM03CxuYMAVVudfLl1tE3thnr
iT81NAMMDcuEZ4/s4Nf4vrO44wQ280p0JR1pxAEsaDgALSCVWhojcFMPX5ZrpxrPHuJYKZamZo/k
d5qfnpiem54xTo24COzlgmOILvD+qHFD2YaZhDq7BN+cSkHLCzdmEQauvpUX084bWdgl48K5J7Ds
tdztwd50MWcxISWq6kiN42PveZvJlOGPeJS+0jTgdiGgmxUwCffPnrUn4uo8D4y8TOa4LepR4S5b
vCQEU1878fKHhiRk2btbmSEwox3QTTn94nvaRv266hdlP236VmQqT5XuBv+UcL7KjKllTpo790Bq
vgLK7UdmNwWUvK20vW6YMgJEfGKGnenZmmDnoco/bI7guZ1phCoZQSaZlS8f6HNmLaB3KitO1Sad
GV3ayL+siE+t2lAYzvJEtQiJR/Gxop7E1DL85Wte7ux/zEjGhyeNNFT5ueUSPutBEQZK5tepCgOk
2IXiCUZw0gpjiD97/5gUuY7gMxemm0HyUGdhE+bm92gWDm/6F4ElZXF8MoBZoVD+r58DVLTGJWiE
DI+D6+mJ7d56avQzpmcibW4O57Q2Jj0b3blGkT2gvMnMNtQ/6aHrpVGm0suJRcO6H6ZXyUm/md4q
cH2iTTTEqPBHBTbXWP+PQkI2QjftpUTe9d1ZXlKi6XNOK1FutLQWCNytFsKFwdVTTduCEJ6GqLHq
ePIbZHFQegirKJbDL0aiGluB2/9pmOmoZaVvPzvwLE2BJtx1l7/nXtYVOtyY72dCE0AhtgKHVM0D
GVlB0b+tgeCQ/3v6XiPgYwChFBrpHiuepEXz5fsf5Hs7XDeK/f4d63p3FhgfbtzckusiLbNKKwOT
96F2IvhRJdklBGh3tsefigeurybPBQiETGIGSTuMk9HrR3HA/UitlNjzZwL9leYsJ7r1spS9qv5V
kLmE7Otru/Nzuy5YotLP+YrHSHfiW3FvcD6WbsDKz5QSYE3HXn6MAnmP2ofBdKJBA568ie7yXGOe
KAFQgCLQQmUbgZlj6GiTjlnCpYMCD6FwFxvB1nuPAfcglDfqdadLiQ3wGQ+uu5p45DfIkzsEoFZe
w4rN1CFfIKoAibLz9JX8aXDd4Sk23D4DvE5z+5vGaVcNhjrHNhyyrCZVGxFRhRqizpd8kUihNzQk
mpaAf2KZnh5kMKOGuZZgiIbFozH7j65Rz7UmiZPbVMAoDIn/YHoRFVLYDWNAlXX8CkjeTvnntFxO
ECkpuJeE75zzk3XC1CFdUtf3sk/RG5wRlDUjP01B0gY8pVqASKMjC7zyZ6PUJmZ4BmTT6ps2YLtk
zopBCmyduXybK8Tod6oy9xzhxj2fR2ega8y9b0xdQnlVAe9UVGaGYgOcalr3Ns/XB4+hYjdxSMSt
/G4JTZxlUjJKHsjgUE3T4x2mVnowa36e81BRgpwY50yXZZMPmDws16iu39ZO9VIwKfysgVM5qA7q
h7RC3IHe62Iih+7y5B8OOQq6165iYw0t1tH/I7+oPLz83kLQ2Xxs/8eibw==
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
