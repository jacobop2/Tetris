// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Mon Nov 20 16:31:13 2023
// Host        : Meredith-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/mered/School/final_project_ece385/final_project/ece385_final_project.gen/sources_1/ip/end_screen_rom/end_screen_rom_sim_netlist.v
// Design      : end_screen_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "end_screen_rom,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module end_screen_rom
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
  (* C_INIT_FILE = "end_screen_rom.mem" *) 
  (* C_INIT_FILE_NAME = "end_screen_rom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10800" *) 
  (* C_READ_DEPTH_B = "10800" *) 
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
  (* C_WRITE_DEPTH_A = "10800" *) 
  (* C_WRITE_DEPTH_B = "10800" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "3" *) 
  (* C_WRITE_WIDTH_B = "3" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  end_screen_rom_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 34560)
`pragma protect data_block
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
1V6f/hzipwX4wLlZY+ZEtcp+
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
