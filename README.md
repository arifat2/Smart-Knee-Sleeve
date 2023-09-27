# Fit-Trainer (Smart Knee Sleeve)

**Author:** Asif Rifat  
**Institution:** University of Illinois at Chicago (UIC)  
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

## III. Software

![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/db40e3d2-4018-4d03-8c69-01b452e13bdc)
![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/830f64d6-95b1-4baa-ba2d-8a9ec2696d61)
![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/fd9ae7ad-b52e-4bf2-9d62-54ffd4f2ec80)

Fit Trainer is an innovative fitness solution that aims to revolutionize users' workout experiences by providing real-time feedback, comprehensive insights, and customizable options for three core exercises: squats, deadlifts, and cardio. The system leverages cutting-edge technology, such as Force Sensitive Resistors (FSRs) and accelerometers, to empower users in making data-driven decisions, refining their techniques, and ultimately achieving their fitness goals.

### A. Real-time feedback
Fit Trainer utilizes advanced sensors, including FSRs and accelerometers, to monitor users' movements and provide instant feedback on their form and technique. This real-time feedback helps users identify and correct any errors or inconsistencies in their movements, ensuring that they are performing each exercise safely and effectively. Additionally, the system offers audio and visual cues to guide users through their workouts, enhancing the overall training experience.

### B. Start Screen
Upon launching the Fit Trainer app, users are immediately prompted to the user-friendly Start, which serves as the 
gateway to the various features and functions of the system. It allows users to effortlessly navigate between the three workout options - squat, deadlift, and cardio and initiate their desired exercise with a simple tap. The program's smooth transition to the corresponding exercise tab ensures a seamless user experience. This can be seen in figure 2.

#### C. Squat Tab
The Squat tab incorporates cutting-edge visualization and tracking tools to provide users with real-time performance analysis. The heat map reveals the distribution of foot pressure throughout the squat motion, while a green circle pinpoints the optimal pressure zone to maximize stability and power. This data is collected via two FSRs strategically placed on the user's shoe soles. Additionally, a stick figure animation serves as a visual aid for proper knee movement, and a green line represents the target squat depth for full range of motion. The tab also displays the number of attempted and proper reps, encouraging users to maintain correct form for maximum benefits. To further enhance the user's experience, the Squat tab provides information on eccentric, concentric, and time-at-depth metrics. Users are encouraged to aim for a 1.1-second (or longer) eccentric and concentric time, and a 2.1-second (or longer) time-at-depth to ensure proper muscle engagement and reduce injury risk. This can be seen in figure 3. 

### D. Deadlift Tab
Mirroring the functionality of the Squat tab, the Deadlift tab features an innovative heat map that visualizes foot pressure distribution during the exercise, with a green circle highlighting the ideal pressure zone. A stick figure graphic offers visual guidance on correct knee movement, while a green line signifies the target deadlift depth for a proper rep. The Deadlift tab displays users attempted and proper rep counts, promoting proper form for maximum efficacy. Eccentric, concentric, and time-at-depth metrics are also provided, with the same recommended targets as the Squat tab to guarantee optimal performance and minimize injury potential. This can be seen in figure 4.

### E. Cardio tab
The Cardio tab delivers a comprehensive overview of the user's cardiovascular workout, essential for those who want to optimize their fitness routine. It includes real-time heart rate data, which allows users to gauge the intensity of their workout and make adjustments as needed. The tab also displays total workout duration, encompassing the entire length of the session, and active workout time, determined using an accelerometer to ensure that only genuine exercise contributes to this metric. A dynamic, easy-to-read heart rate graph is located at the bottom of the screen, offering users a visual representation of their cardiovascular performance throughout the workout. This enables users to identify patterns and trends in their heart rate, helping them maintain their target heart rate zone for maximum fitness benefits. By selecting the 'Insight' button within the Cardio tab, users can delve deeper into their workout trends and records, accessing a more granular analysis of their progress.

![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/b90156cd-25f9-495a-94f1-872b34c37ba8)
![image](https://github.com/arifat2/Smart-Knee-Sleeve/assets/111903875/4bd9f26b-12c8-4aae-af45-446196418519)

### F. Insight Tab
The Insight tab consolidates various performance metrics, such as average heart rate, total calories burned, and distance covered during workouts. These measurements are computed using FSR and accelerometer data to calculate step count, from which caloric expenditure and distance are derived. The tab also displays the user's cadence, or steps per minute, enabling users to monitor and adjust their pacing as needed. A standout feature of the Insight tab is the Cardio Zone classification system, which segments workout intensity into four distinct zones: warmup, fat burn, hardcore, and VO2 max. Time spent in each zone is calculated based on the user's heart rate, assuming a standard age of 21. To facilitate quick interpretation, color-coded, resizable rectangles represent the duration spent in each zone, providing users with a visually engaging snapshot of their workout intensity distribution. Fit Trainer's combination of sophisticated technology, real-time feedback, and user-friendly interface sets it apart as a comprehensive fitness solution for individuals looking to optimize their exercise routines. By providing personalized insights into performance metrics, form, and intensity, Fit Trainer empowers users to make informed decisions, track their progress, and ultimately achieve their fitness objectives more effectively. This can be seen in figure 6.


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
