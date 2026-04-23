# ----------------------------------------
# Jasper Version Info
# tool      : Jasper 2025.06
# platform  : Linux 3.10.0-1160.119.1.el7.x86_64
# version   : 2025.06p002 64 bits
# build date: 2025.08.26 14:59:20 UTC
# ----------------------------------------
# started   : 2026-04-24 00:00:53 PKT
# hostname  : pc3.(none)
# pid       : 32664
# arguments : '-style' 'windows' '-label' 'session_0' '-console' '//127.0.0.1:46338' '-data' 'AAAAfHicY2RgYLCp////PwMYMD6A0Aw2jAyoAMRnQhUJbEChGRhYUZVLMSQyZDAkMcQzFDOkMpQwlDIUMOgB6WSGHLAaAPCaC8s=' '-bridge_url' '10.103.76.67:44087' '-proj' '/home/Abdullah.Rafique/Documents/Formal_Verification/AHB-Lite-project/rtl/EE5214_AHB_Lite_25260002_25260006/rtl/jgproject/sessionLogs/session_0' '-init' '-hidden' '/home/Abdullah.Rafique/Documents/Formal_Verification/AHB-Lite-project/rtl/EE5214_AHB_Lite_25260002_25260006/rtl/jgproject/.tmp/.initCmds.tcl' 'ahb_setup.tcl'
# Clear previous session data
clear -all

# Analyze the design and verification files
analyze -sv ahb3lite_pkg.sv design.sv mem.sv ahb_checker.sv bind_ahb.sv

# Elaborate the design
# 'ahb3liten' is the top-level module found in design.txt
# JasperGold will automatically pick up the bind statement in bind_ahb.sv
elaborate -top ahb3liten

# Setup Clock and Reset
# According to the spec (Section 2.1) and DUT (Section 135):
# HCLK is the bus clock
# HRESETn is active-LOW (Section 7.1.2)
clock HCLK
reset ~HRESETn


# Prove the properties
# This will attempt to prove all assertions in ahb_checker.sv
prove -all
