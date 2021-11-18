Parameter extarction 
.lib /tech/eda-technology/sky130/models/spice/models/sky130.lib.spice tt


.global gnd

xm1 d g s1 b1 sky130_fd_pr__nfet_01v8 w=5 l=1
*xm2 d d s2 b2 sky130_fd_pr__nfet_01v8 w=5 l=1
*.model mymod nmos (LEVEL

vds d gnd dc 1.8
vgs g gnd dc 1.511
vsb1 b1 gnd dc 0
*vsb2 b2 gnd dc -1.8
vid1 s1 gnd dc 0
*vid2 s2 gnd dc 0

.dc vds 0 1.8 0.1
.control 
run

plot vid1#branch 

.endc
.end
