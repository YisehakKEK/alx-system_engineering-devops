# Postmortem: The Great Thermal Expansion Catastrophe

## Issue Summary
On **February 26, 2025, from 5:00 AM to 7:30 AM EAT**, our data center suffered a major outage due to an unexpected **thermal expansion anomaly** in our server racks. Approximately **95% of users** experienced **unresponsive services**, while the remaining **5%** faced **intermittent failures**. The root cause was a **minor temperature fluctuation** that caused a cascading failure in precision-mounted hardware, leading to a complete system shutdown.

## Timeline
- **4:50 AM EAT** - Temperature monitoring system detected an **increase of 2°C** beyond the normal range.
- **5:00 AM EAT** - First system-wide service failures reported.
- **5:10 AM EAT** - On-site engineers noticed slight misalignments in hardware racks.
- **5:30 AM EAT** - Assumed the issue was related to **software misconfiguration** and attempted restarts.
- **6:00 AM EAT** - Further analysis revealed increasing gaps between server racks due to thermal expansion.
- **6:30 AM EAT** - Escalated to facility management for structural evaluation.
- **6:50 AM EAT** - Discovered mounting rails had shifted, disrupting critical fiber optic connections.
- **7:10 AM EAT** - Implemented emergency cooling procedures to counteract expansion.
- **7:30 AM EAT** - System stabilized, and operations resumed.

## Root Cause and Resolution
### Root Cause
The issue stemmed from a **combination of material expansion and improper mounting tolerances**. A minor but consistent rise in temperature caused **precision-mounted servers** to shift beyond acceptable thresholds, leading to **misalignment of fiber optic cables** and eventual **network failure**.

### Resolution
1. Recalibrated **mounting tolerances** to account for thermal expansion variations.
2. Implemented **real-time monitoring** for structural changes within the server racks.
3. Adjusted **cooling system thresholds** to prevent similar gradual expansions.
4. Repaired and reinforced all affected fiber optic connections.

## Corrective and Preventative Measures
- **Improved Rack Design**: Use materials with lower thermal expansion coefficients.
- **Structural Monitoring**: Install sensors to detect micro-shifts in server alignment.
- **Cooling System Optimization**: Adjust air conditioning parameters for better climate stability.
- **Engineer Training**: Educate data center personnel on **thermal stress effects**.
- **Documentation Update**: Add **thermal expansion mitigation** guidelines.
- **Postmortem Review**: Conduct regular stress tests to ensure hardware resilience.

By implementing these measures, we aim to **eliminate failures caused by thermal expansion** and ensure long-term reliability of our data infrastructure.

