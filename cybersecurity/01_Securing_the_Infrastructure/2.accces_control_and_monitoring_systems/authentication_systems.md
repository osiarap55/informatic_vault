# Authentication Systems

Authentication = process of verifying that someone **is who they claim to be**.  
It is essential to control **ingress, egress, and regress** into secure areas.  

---

## Authentication Factors
- **Knowledge** → Something you know (e.g., password, PIN).  
- **Possession** → Something you have (e.g., card, token).  
- **Inheritance** → Something you are (biometrics like fingerprint, iris).  
- **Location** → Somewhere you are (GPS-based, restricted zones).  

---

## Single vs. Multi-Factor Authentication
- **Single-factor**: based on one factor (less secure).  
- **Two-factor (2FA)**: combines two categories (e.g., PIN + card).  
- **Multi-factor (MFA)**: uses more than two for higher assurance.  

---

## Magnetic Stripe Readers
- Store data magnetically on a stripe.  
- Card readers translate data into digital form.  
- Used for simple authentication but susceptible to tampering.  

---

## Smart Cards
- Similar to credit cards, but with **embedded microprocessors and memory**.  
- Store user credentials like: passwords, PINs, certificates, encryption keys.  
- Resistant to tampering but can become unusable if damaged.  
- Contain Personally Identifiable Information (PII).  

---

## RFID Badges
- **Radio Frequency Identification** enables hands-free authentication.  
- Tags communicate with readers via radio waves.  
- Store data such as IDs and serial numbers.  
- Can operate without an internal power source (passive RFID).  

---

## Biometric Scanners
- Use **unique human characteristics**: fingerprints, palm prints, iris scans, facial features, voice.  
- Provide strong authentication but not error-free.  

### Biometric Device Accuracy (Table 2.1)
| Method         | False Positive | False Negative |
|----------------|----------------|----------------|
| Palm Print     | 1.43%          | 4%             |
| Facial         | 0.1%           | 0.8–1.6%       |
| Voice          | 2–5%           | 5–10%          |
| Eye (Iris/Retina) | 0.1%        | 1.1–1.4%       |
| Signature      | 0.49%          | 7.05%          |
| Fingerprint    | 2.2%           | 2.2%           |

---

## Authentication Failures
- **Type 1: False Rejection (False Negative)** → Authorized person is denied.  
- **Type 2: False Acceptance (False Positive)** → Unauthorized person is granted access.  
- False positives are more dangerous as they compromise security.  

---

## Key Takeaway
Authentication systems should balance **convenience and accuracy**, often combining factors (2FA/MFA) to reduce risk of failures.

#access_control_and_monitoring_systems
