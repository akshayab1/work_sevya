Nmos characterstics

.lib /tech/eda-technology/sky130/models/spice/models/sky130.lib.spice tt

.global gnd
xm1 out in s gnd sky130_fd_pr__nfet_01v8 w=5 l=1
vgs in gnd dc 1
vds out gnd dc 1.8
vid s out1 dc 0
.dc vds 0 1.8 0.1
.control
run

plot vid#branch

.endc
.end


