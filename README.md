# Fit-Trainer (Smart Knee Sleeve)

**Author:** Asif Rifat  
**Institution:** University of Illinois of Chicago (College of Engineering)
**Location:** Chicago, United States of America  
**Email:** [arifat2@uic.edu](mailto:arifat2@uic.edu)

## Abstract
This electronic document provides background on our Smart Knee Sleeve device also known as Fit-Trainer. The knee sleeve features integrated sensors that monitor joint movement and provide real-time feedback on technique, form, and potential injury risk. The device is also equipped with an app that allows users to track their workouts and receive personalized recommendations for improving their performance. Overall, the smart knee sleeve is a promising tool for optimizing exercise routines and reducing the risk of any injuries.

**Keywords:** knee, injury, data, performance, workout

## I. Introduction
Running, squatting, and deadlifting are examples of popular activities that may help people increase their strength, endurance, and general fitness. These activities, however, can place a tremendous pressure on the knee joint, increasing the risk of damage. 

## II. Hardware
### A. Materials

| Materials                | Quantity |
|--------------------------|----------|
| Knee Sleeve              | 2        |
| Fire Beatle Boards       | 2        |
| Fire Beatle Proto Board  | 1        |
| Force Sensitive Resistor | 2        |
| Flex Sensor              | 1        |
| Accelerometer            | 1        |
| Heart Rate Sensor        | 1        |
| Battery                  | 1        |
| Wires                    | 15       |
| Resistors (10KOhm)       | 4        |

![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/77a33c98-ec5f-448c-80d5-4a4c1fb0d175)

### B. Functionality and Design
The device incorporates two distinct sleeves, each housing various sensors and equipment. This design enables seamless monitoring of an individual's heart rate and other vital fitness data. The first knee sleeve features an integrated heart rate sensor, which is achieved by cutting a section of the sleeve and embedding the sensor within. The second knee sleeve is designed to accommodate a Force sensor and additional equipment, intended to be worn on top of the first sleeve. In addition to the sensors housed within the knee sleeves, the device also includes two force-sensitive resistors which are to be placed on the user's shoe sole. These resistors collect data on foot pressure during exercise, providing valuable information on the user's foot placement. This layered approach allows for comprehensive data collection while maintaining wearer comfort. The system is powered by two FireBeetle Board-328P microcontrollers, which communicate wirelessly via Bluetooth to transfer collected data. One of the FireBeetle boards is situated in the first knee sleeve, while the other is connected to a computer for data analysis and visualization. The FireBeetle board housed in the knee sleeve is connected to an array of sensors, including two force-sensitive resistors, one flex sensor, an accelerometer, and a heart rate sensor. This board is powered by a battery, and the force-sensitive resistors and flex sensor are connected to the board through a series of resistors, ensuring accurate and reliable data transmission. By utilizing this advanced knee sleeve system, we can effectively monitor various fitness metrics, providing individuals with valuable insights into their performance and overall health.

![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/db40e3d2-4018-4d03-8c69-01b452e13bdc)
![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/830f64d6-95b1-4baa-ba2d-8a9ec2696d61)
![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/fd9ae7ad-b52e-4bf2-9d62-54ffd4f2ec80)

## III. Software
Fit Trainer is an innovative fitness solution that aims to revolutionize users' workout experiences by providing real-time feedback, comprehensive insights, and customizable options for three core exercises: squats, deadlifts, and cardio. The system leverages cutting-edge technology, such as Force Sensitive Resistors (FSRs) and accelerometers, to empower users in making data-driven decisions, refining their techniques, and ultimately achieving their fitness goals.

# Real-time feedback 

## IV. Further Work and Setbacks
... [Details about further work and setbacks]

## V. Conclusion
... [Conclusion details]

## VI. Acknowledgment
The authors would like to acknowledge and thank...

## VII. References
1. [SparkFun Electronics Hookup Guide](https://learn.sparkfun.com/tutorials/sparkfun-pulse-oximeter-and-heart-ratemonitor-hookup-guide?_ga=2.220576152.1212953126.1599321693-1639076062.1599321693)
2. [Using an FSR by Adafruit Learning System](https://learn.adafruit.com/force-sensitive-resistor-fsr/using-an-fsr)
3. [ADXL345 Hookup Guide by SparkFun Electronics](https://learn.sparkfun.com/tutorials/adxl345-hookup-guide?_ga=2.181873639.1926396791.1682396306-169495036.1681830306)
... [More References]
