# Rectifier-with-Capacitor-Filter
Design of a Bridge Rectifier with Capacitor Filter for AC to DC Conversion

### Tasks:
Designing the circuit given below:

<img width="473" alt="rectifier_capacitor_filter_circuitsiagram" src="https://user-images.githubusercontent.com/47363228/167240367-8174c626-a2e4-4a4d-b3e7-d776300221ed.png">

Specifications:
- Average output Power = 100W
- Input Voltage = 20V rms @50Hz

--------------------------
### Working on the Design

#### Component Values from matlab/octave:
Values of the components is calculated according to the specification from the simulation of the program [click here](Rectifier_Capacitor_Filter.m)

#### Simulation of the Circuit:
The Circuit can be simulated with spice, here I used gEDA for building the cirucuit netlist and then simulated it with the stimulus designed by me. I used the model of the diode too that is included in the netlist file.

- gEDA schematic (.sch) [click here](rectifier_capacitor_filter.sch)
- spice netlist of the circuit (.net) [click here](rectifier_capacitor_filter.net)
- simulation analysis (.cir) [click here](rectifier_capacitor_filter.cir)
- diode model (.mod) [click here](1N4007.mod)

---------------------------------------
### Final Design and Simulation Results
