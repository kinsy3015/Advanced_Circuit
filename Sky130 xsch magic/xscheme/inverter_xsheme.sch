v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {my first prj of inverter
} 20 -320 0 0 0.4 0.4 {}
N 80 -110 80 -30 {lab=Vout}
N 10 -140 40 -140 {lab=Vin}
N 10 -0 40 0 {lab=Vin}
N 10 -140 10 -130 {lab=Vin}
N 10 -130 10 -100 {lab=Vin}
N 10 -50 10 0 {lab=Vin}
N 10 -100 10 -50 {lab=Vin}
N 80 -70 140 -70 {lab=Vout}
N -250 -180 -250 -160 {lab=VDD}
N -250 60 -250 80 {lab=GND}
N 80 -190 80 -170 {lab=VDD}
N 80 30 80 60 {lab=GND}
N -250 -20 -250 0 {lab=Vin}
N 80 -0 90 -0 {lab=GND}
N 90 10 90 40 {lab=GND}
N 80 40 90 40 {lab=GND}
N 90 0 90 10 {lab=GND}
N 80 -140 90 -140 {lab=VDD}
N 90 -180 90 -140 {lab=VDD}
N 80 -180 90 -180 {lab=VDD}
N -130 -70 -80 -70 {lab=Vin}
N -20 -70 10 -70 {lab=Vin}
N -250 -80 -250 -60 {lab=GND}
N -250 -160 -250 -140 {lab=VDD}
N -60 -70 -20 -70 {lab=Vin}
N -80 -70 -60 -70 {lab=Vin}
C {sky130B/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 60 0 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130B/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 60 -140 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -130 -70 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {lab_pin.sym} -250 -20 2 0 {name=p2 sig_type=std_logic lab=Vin
}
C {lab_pin.sym} 140 -70 2 0 {name=p3 sig_type=std_logic lab=Vout

}
C {vsource.sym} -250 30 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -250 -110 0 0 {name=V1 value=3 savecurrent=false}
C {vdd.sym} -250 -180 0 0 {name=l5 lab=VDD}
C {vdd.sym} 80 -190 0 0 {name=l3 lab=VDD}
C {gnd.sym} -250 80 0 0 {name=l1 lab=GND}
C {gnd.sym} 80 60 0 0 {name=l2 lab=GND}
C {gnd.sym} -250 -60 0 0 {name=l6 lab=GND}
C {code.sym} 230 -60 0 0 {name=s1 only_toplevel=false value="

.lib /usr/local/share/xschem/xschem_library/devices/sky130A/libs.tech/ngspice/sky130.lib.spice tt"

.control
	dc V2 0 3 0.01
	plot v(VDD)

.endc

.save all

"}
C {code_shown.sym} 230 100 0 0 {name=my only_toplevel=false value="

.dc V2 0 1.8 0.001
.save all

"}
