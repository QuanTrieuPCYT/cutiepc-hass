FROM ghcr.io/home-assistant/home-assistant:2026.5.4

RUN pip3 install --no-cache-dir --upgrade "git+https://github.com/QuanTrieuPCYT/pyatv"
RUN sed -i 's/"pyatv==[^"]*"/"pyatv"/g' /usr/src/homeassistant/homeassistant/components/apple_tv/manifest.json && sed -i '/def should_add_preset_mode_switch/,/return True/s/return True/return False/' /usr/src/homeassistant/homeassistant/components/homekit/type_fans.py && sed -i 's/\[FAN_LOW, FAN_MIDDLE, FAN_MEDIUM, FAN_HIGH\]/["min", FAN_LOW, FAN_MIDDLE, FAN_MEDIUM, FAN_HIGH, "max"]/' /usr/src/homeassistant/homeassistant/components/homekit/type_thermostats.py
