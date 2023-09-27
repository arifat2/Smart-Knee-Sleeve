boolean inEccentricPhase = false;
boolean inDepthPhase = false;
boolean inConcentricPhase = false;
boolean atTOP = false;

int eccentricStartTime;
int depthStartTime;
int concentricStartTime;
int atTOPStartTime;

float Eccentric_time = 0;
float Depth_time = 0;
float Concentric_time = 0;
float atTOP_time = 0;

int depthPhaseUpdates = 0;
int below80Counter = 0;
int depthPhaseUpdates2 = 0;

// cadence
int cadence = 0;
float cadence_count = 0;
int total_steps = 0;

// Initialize boolean variable to true
boolean isFootOnGround = true;

// miles
float miles;
float inches;
float meters;

// calories
float calories;

// for timer
long lastMinute = 0;
long active_time = 0;
long last_active_time = 0;
long total_seconds;
String a_minutes;
String a_seconds;
boolean is_moving = false;
boolean isMoving = false;

// thresholds
float cadence_threshold = 1;
float A_threshold = 6.0;

// cardio zone
float Warm_Up_time = 0;
float Fat_Burn_time = 0;
float Hard_Core_time = 0;
float VO2_Max_time = 0;

// average heart rate
int heart_rate_sum = 0;
int total_samples = 0;
float average_heart_rate = 0;

// squat
void Calculation(float F_sensor_1) {
  if (F_sensor_1 <= 80 && !inEccentricPhase) {
    inEccentricPhase = true;
    eccentricStartTime = millis();
    below80Counter++;
  } else if (F_sensor_1 <= 40 && inEccentricPhase) {
    Eccentric_time = (millis() - eccentricStartTime) / 1000.0;
  }

  if (F_sensor_1 < 40 && !inDepthPhase) {
    inDepthPhase = true;
    depthStartTime = millis();

    if (F_sensor_2 < F_sensor_3) {
      depthPhaseUpdates++;
    }
  } else if (F_sensor_1 > 40 && inDepthPhase) {
    Depth_time = (millis() - depthStartTime) / 1000.0;
    inDepthPhase = false;
  }

  if (F_sensor_1 >= 40 && !inConcentricPhase && inEccentricPhase) {
    inConcentricPhase = true;
    inEccentricPhase = false;
    concentricStartTime = millis();
  } else if (F_sensor_1 >= 80 && inConcentricPhase) {
    Concentric_time = (millis() - concentricStartTime) / 1000.0;
    inConcentricPhase = false;
  }

  //// deadlift
  //if (F_sensor_2 < F_sensor_3) {
  //  depthPhaseUpdates2++;
  //}

  // atTOP timer logic
  if (F_sensor_1 > 85 && !atTOP) {
    atTOP = true;
    atTOPStartTime = millis();
  } else if (F_sensor_1 < 85 && atTOP) {
    atTOP_time = (millis() - atTOPStartTime) / 1000.0;
    atTOP = false;
  }

  if (atTOP) {
    float elapsedTime = (millis() - atTOPStartTime) / 1000.0;
    if (elapsedTime > 5) {
      // atTOP timer exceeded 5 seconds
      atTOP = false;
      atTOP_time = 5; // Set atTOP_time to the maximum allowed time of 5 seconds
      // Handle this case as needed
    }
  }
}


// cardio
void Calculations2 () {
  // update cadence every minute
  if (millis() - lastMinute >= 60000) {
    cadence = int(cadence_count);
    total_steps += cadence_count;
    cadence_count = 0;
    lastMinute = millis();
  }

  // cadence
  if (F_sensor_2 < cadence_threshold && F_sensor_3 < cadence_threshold ) {
    if (isFootOnGround) {
      // Increment cadence only if foot was on ground in previous frame
      cadence_count++;
      isFootOnGround = false;
    }
  } else {
    isFootOnGround = true;
  }

  // miles
  inches = total_steps * 40;
  meters = inches * 0.0254;
  miles = meters * 0.000621371;

  // calories
  calories = 0.04 * total_steps;

  // Activity Time
  boolean is_active = (A_sensor_2 <= A_threshold);
  if (is_active) {
    if (!is_moving) {
      // If the person was not moving before, update the last active time
      last_active_time = millis();
      is_moving = true;
    }
    active_time += millis() - last_active_time;
    last_active_time = millis();
  } else {
    // If there is no activity, mark the person as not moving
    is_moving = false;
  }

  total_seconds = active_time / 1000;
  a_minutes = nf(floor(total_seconds / 60), 2);
  a_seconds = nf(int(total_seconds % 60), 2);
}


// Cardio zone calculations
void Calculations3() {
  // Add the heart rate to the sum and increment the sample count
  heart_rate_sum += Heart_Rate;
  total_samples++;

  // Calculate the average heart rate
  average_heart_rate = float(heart_rate_sum) / total_samples;

  // Add half a second to the appropriate cardio zone time
  if (Heart_Rate < 80) {
    Warm_Up_time += 0.25;
  } else if (Heart_Rate >= 80 && Heart_Rate < 100) {
    Fat_Burn_time += 0.25;
  } else if (Heart_Rate >= 100 && Heart_Rate < 120) {
    Hard_Core_time += 0.25;
  } else {
    VO2_Max_time += 0.25;
  }
}
