# Rectifier-with-Capacitor-Filter
Design of a Bridge Rectifier with Capacitor Filter for AC to DC Conversion

### Tasks:
Designing the circuit given below:
- Simulate the circuit with idealities and non-idealities.
- Measure the power factor and compare the power factors for both cases.

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

##### SPECIFICATIONS FOR THE RECTIFIER 
- Output Power, W     = 10.00
- Input voltage, volts    =   20.00
- Input voltage tolerance, percent    =   20.00
- Peak to peak output ripple, percent   =    10.00
- Supply frequency, Hz  =   50.00
 
##### CAPACITOR SELECTION
- Capacitor value, uF   =  390.56
- Voltage should be >, V  =   28.94
- Rms value of current, A  =    0.98
 
##### DIODE SELECTION 
- PIV, V    = 33.94
- Avg. current, A    =  0.35
- Rms value of current, A    =  0.89


### Circuit Schematic without non-idealities:
![schematic_without non idealities](https://user-images.githubusercontent.com/47363228/167241120-6b4e75b2-e5c6-42bc-9eba-5d203c129de8.png)

#### Input and Output Waveform:
![3_4](https://user-images.githubusercontent.com/47363228/167241343-116e2a45-b62d-4cec-b010-bcddfb410373.jpg)

#### Input Current wrt Voltage Waveform:
![3_5](https://user-images.githubusercontent.com/47363228/167241374-3eeb08b2-0166-4b38-8120-31c06be350c1.jpg)

### Circuit Schematic with non-idealities:
Non-idealities considered are as follows:
- ESR (Effective Series Resistance) of the capacitor is considered.
- Inductive effect of the load is considered. (say 10mH)

![schematic_with non idealities](https://user-images.githubusercontent.com/47363228/167241472-6b1caae2-e5de-4d13-900a-0b558d0345de.png)

#### Input Current and Voltage Waveform:
![6](https://user-images.githubusercontent.com/47363228/167241503-15ec10b6-03a1-4f70-ba91-77409698a8b2.jpg)


### Power Factor Calculations:

<img src="https://render.githubusercontent.com/render/math?math={Power Factor = \frac{Real Power}{Reference Power}}#gh-light-mode-only">
<img src="https://render.githubusercontent.com/render/math?math={\color{white}Power Factor = \frac{Real Power}{Reference Power}}#gh-dark-mode-only">

<img src="https://render.githubusercontent.com/render/math?math={Real Power = \frac{1}{T}\int_{0}^{T} V\times I\, dt}#gh-light-mode-only">
<img src="https://render.githubusercontent.com/render/math?math={\color{white}Real Power = \frac{1}{T}\int_{0}^{T} V\times I\, dt}#gh-dark-mode-only">

<img src="https://render.githubusercontent.com/render/math?math={Reference Power = V_m \times \frac{I_m}{2}}#gh-light-mode-only">
<img src="https://render.githubusercontent.com/render/math?math={\color{white}Reference Power = V_m \times \frac{I_m}{2}}#gh-dark-mode-only">

Where, 
- V<sub>m</sub> : Peak Voltage 
- I<sub>m</sub> : Peak current 
- V : Instantaneous Voltage 
- I : Instantaneous Current 

Reference Power is the power dissipated across a pure resistive load with the value of voltage and current maximum to be V<sub>m</sub> and I<sub>m</sub> respectively. 


#### Power Factor without non-idealities:
As per our data, 
- V<sub>m</sub> = 20 V
- I<sub>m</sub> = 5.2 A
- V<sub>rms</sub> = 16 V
- I<sub>rms</sub> = 0.64 A 
- Real Power = 10 Watts (Design Basis) 
- Reference Power = 52 W 
- Power factor = 0.192 (Leading)


#### Power Factor with non-idealities: 
As per our data, 
- V<sub>m</sub> = 20 V
- I<sub>m</sub> = 4.8 A
- V<sub>rms</sub> = 15.5 V
- I<sub>rms</sub> = 0.645 A, 
- Real Power = 10 Watts (Design Basis) 
- Reference Power = 48 W 
- Power factor = 0.208 (Leading)
