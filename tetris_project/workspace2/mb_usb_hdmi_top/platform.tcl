# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\mered\School\ece385_6.1\workspace2\mb_usb_hdmi_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\mered\School\ece385_6.1\workspace2\mb_usb_hdmi_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mb_usb_hdmi_top}\
-hw {C:\Users\mered\School\ece385_6.1\mb_usb_hdmi_top.xsa}\
-out {C:/Users/mered/School/ece385_6.1/workspace2}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform generate -quick
platform generate
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_2.xsa}
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_3.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_4.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_5.xsa}
platform generate -domains 
platform clean
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_6.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_7.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_8.xsa}
platform clean
platform generate
platform clean
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_9.xsa}
platform clean
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_10.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_11.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_12.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_24.xsa}
platform clean
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_joe.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_100.xsa}
platform clean
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/mered/School/ece385_6.1/mb_usb_hdmi_top_1000.xsa}
platform clean
platform clean
platform generate
