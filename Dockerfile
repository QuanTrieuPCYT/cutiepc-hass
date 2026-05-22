FROM ghcr.io/home-assistant/home-assistant:2026.5.3

RUN pip3 install --no-cache-dir --upgrade "git+https://github.com/QuanTrieuPCYT/pyatv"
RUN sed -i 's/"pyatv==[^"]*"/"pyatv"/g' /usr/src/homeassistant/homeassistant/components/apple_tv/manifest.json
