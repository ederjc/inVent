## Inspiration
The bulk of settings of the ventilator would be connected automatically by an Algorithm from the parameters observed. 

## What it does
1. The ventilator settings can be monitored and controlled externally using a mobile app or computer 
2. The clinician can supervise the status of all patients assigned to him on his app 
3. The algorithm can raise and send alarms to the clinician to attend the patient in case of a drop in health condition.

## How we built it
Parameters to monitor from the other ICU sensors/monitors: 
* Patient status-work (RR, flow, EMG activity of diaphragm) 
* Ventilation: Expiratory time constant (E<sub>T</sub>CO₂)
* Oxygenation (SpO₂)

Parameters to be set on the ventilator 
* Tidal Volume (V<sub>T</sub>) – a recommendation to use low V<sub>T</sub>
* Positive end-expiratory pressure (PEEP)- Low levels of PEEP (3 to 5 cmH₂O) are routinely used in patients on mechanical ventilation

The algorithm can adapt the ventilator settings to each patient’s metabolism to provide the oxygen required in the blood (oxygenation function) and to eliminate carbon dioxide(CO₂) (ventilation function).

### Advantages of the proposed solution: 
* Patient-specific (dependant on lung condition) adaptation of ventilation
* Decreases workload on the Doctors and Nurses, requiring less presence next to the patient
* Supports all modes of ventilation (assisted, pressure, controlled)
* Algorithm can learn from existing ICU data (knowledge-based) to adjust for the different modes

"Intellivent" is deployed on Microsoft Azure cloud services which are HIPAA and GDPR compliant. 

## Challenges we ran into
* Limited in the gathered dataset from ventilators for training model
* Connecting Simulink simulator for ventilator model. 

## Accomplishments that we're proud of
* We're quite proud of participating in a team of highly skilled people from 10 years + experienced medical doctors and computer scientists. 
* Great team spirit and chemistry. 

## What we learned
* Learnt operational working of ventilators. 
* Team building and productive working

## What's next for Autonomous Ventilator
* Collecting more data for improving the performance of the algorithm
* Connecting and collaborating with OpenVent team. 

## References
* Platen, P.v., Pomprapa, A., Lachmann, B.et al.The dawn of physiological closed-loop ventilation—a review.Crit Care24,121 (2020). https://doi.org/10.1186/s13054-020-2810-1https://ccforum.biomedcentral.com/articles/10.1186/s13054-020-2810-1
