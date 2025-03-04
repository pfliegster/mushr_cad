$include_rbc = false;
include <racecar_back_cover.scad>

$include_rc = false;
include <../../chassis/racecar_chassis.scad>

rbcc_length = (rc_wrt_rcb_x_offset+rcp_front_bumper_x_offset+rcpfb_tri_x_offset+rcpfb_tri_height/2.0)-(rc_wrt_rcb_x_offset+rc_back_gearbox_x_offset+rcbb_back_bar_x_offset-rcbb_back_bar_height/2.0);
rbcc_width = rcbb_back_bar_length;
rbcc_height = (rbf_wrt_rcb_z_offset+rbc_platform_z_offset+rbc_platform_height/2.0)-(rc_wrt_rcb_z_offset + rc_back_gearbox_z_offset +rcbb_flap_z_offset - rcbb_flap_height/2.0);
rbcc_x_offset = (rc_wrt_rcb_x_offset+rc_back_gearbox_x_offset+rcbb_back_bar_x_offset-rcbb_back_bar_height/2.0) + rbcc_length/2.0;
rbcc_y_offset = rc_wrt_rcb_y_offset+rcbb_back_bar_y_offset;
rbcc_z_offset = rbf_wrt_rcb_z_offset+rbc_platform_z_offset+rbc_platform_height/2.0 - rbcc_height/2.0;

if($include_rbcc==undef) {

    RacecarBaseCollision();
}

module RacecarBaseCollision() {

    translate([rbcc_x_offset, rbcc_y_offset, rbcc_z_offset]) {
        cube([rbcc_length, rbcc_width, rbcc_height], true);
    }
    
}

