v 20130925 2
C 40000 40000 0 0 0 title-B.sym
C 45700 47600 1 90 0 diode-1.sym
{
T 45100 48000 5 10 0 0 90 0 1
device=DIODE
T 45200 47900 5 10 1 1 90 0 1
refdes=D1
T 45700 47600 5 10 0 1 0 0 1
model-name=D1N4007
}
C 47200 47600 1 90 0 diode-1.sym
{
T 46600 48000 5 10 0 0 90 0 1
device=DIODE
T 46700 47900 5 10 1 1 90 0 1
refdes=D2
T 47200 47600 5 10 0 1 0 0 1
model-name=D1N4007
}
C 45700 44200 1 90 0 diode-1.sym
{
T 45100 44600 5 10 0 0 90 0 1
device=DIODE
T 45200 44500 5 10 1 1 90 0 1
refdes=D3
T 45700 44200 5 10 0 1 0 0 1
model-name=D1N4007
}
C 47200 44200 1 90 0 diode-1.sym
{
T 46600 44600 5 10 0 0 90 0 1
device=DIODE
T 46700 44500 5 10 1 1 90 0 1
refdes=D4
T 47200 44200 5 10 0 1 0 0 1
model-name=D1N4007
}
C 43400 46900 1 0 0 resistor-1.sym
{
T 43700 47300 5 10 0 0 0 0 1
device=RESISTOR
T 43600 47200 5 10 1 1 0 0 1
refdes=Rs
T 43700 46600 5 10 1 1 0 0 1
value=0
}
C 52400 47600 1 270 0 resistor-1.sym
{
T 52800 47300 5 10 0 0 270 0 1
device=RESISTOR
T 52700 47400 5 10 1 1 270 0 1
refdes=Rout
T 52100 47100 5 10 1 1 0 0 1
value=25
}
C 52100 48500 1 0 0 generic-power.sym
{
T 52300 48750 5 10 1 1 0 3 1
net=out:1
}
C 48400 43900 1 0 0 gnd-1.sym
C 50300 47000 1 270 0 capacitor-2.sym
{
T 51000 46800 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 50800 46800 5 10 1 1 270 0 1
refdes=C
T 51200 46800 5 10 0 0 270 0 1
symversion=0.1
T 49600 46500 5 10 1 1 0 0 1
value=2000uF
}
N 42000 47000 43400 47000 4
N 45500 47600 45500 45100 4
N 47000 47600 47000 45100 4
N 45500 48500 52500 48500 4
N 45500 44200 52500 44200 4
N 50500 48500 50500 47000 4
N 52500 48500 52500 47600 4
N 44300 47000 45500 47000 4
N 42000 45800 47000 45800 4
C 42300 47000 1 0 0 generic-power.sym
{
T 42500 47250 5 10 1 1 0 3 1
net=in:1
}
C 45500 47200 1 270 0 generic-power.sym
{
T 45750 47000 5 10 1 1 270 3 1
net=a:1
}
C 40300 49900 1 0 0 spice-model-1.sym
{
T 40400 50600 5 10 0 1 0 0 1
device=model
T 40400 50500 5 10 1 1 0 0 1
refdes=A1
T 41600 50200 5 10 1 1 0 0 1
model-name=1N4007
T 40800 50000 5 10 1 1 0 0 1
file=1N4007.mod
}
C 42700 45800 1 180 0 generic-power.sym
{
T 42500 45550 5 10 1 1 180 3 1
net=b:1
}
C 41700 45800 1 0 0 vsin-1.sym
{
T 42400 46450 5 10 1 1 0 0 1
refdes=Vin
T 42400 46650 5 10 0 0 0 0 1
device=vsin
T 42400 46850 5 10 0 0 0 0 1
footprint=none
T 42400 46250 5 10 1 1 0 0 1
value=sin(0 20 50 0 0)
}
C 50400 45800 1 270 0 resistor-1.sym
{
T 50800 45500 5 10 0 0 270 0 1
device=RESISTOR
T 50700 45600 5 10 1 1 270 0 1
refdes=Resr
T 50200 45500 5 10 1 1 270 0 1
value=0.1
}
C 52400 46000 1 270 0 inductor-1.sym
{
T 52900 45800 5 10 0 0 270 0 1
device=INDUCTOR
T 52700 45800 5 10 1 1 270 0 1
refdes=L
T 53100 45800 5 10 0 0 270 0 1
symversion=0.1
T 52300 45800 5 10 1 1 270 0 1
value=10mH
}
N 50500 46100 50500 45800 4
N 50500 44900 50500 44200 4
N 52500 46700 52500 46000 4
N 52500 45100 52500 44200 4