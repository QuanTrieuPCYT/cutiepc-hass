# cutiepc's custom Home Assistant Docker image
This Docker image incorporates custom changes to the Home Assistant home automation software.

## Changes
- Fan entities no longer expose their preset modes as switches in Apple HomeKit.
- Adds `min` and `max` to fan scale of thermostat entities in Apple HomeKit. The fan scales of those entities can now have 6 maximum levels.