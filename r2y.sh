apt update && apt install wget unzip -y
wget https://github.com/v2fly/v2ray-core/releases/download/v5.14.0/v2ray-linux-64.zip
unzip v2ray-linux-64.zip
echo '{"inbound":{"port":10086,"protocol":"vmess","settings":{"clients":[{"id":"54f0f20d-7ff9-4dbd-ada0-fa1e27622d85","level":1,"alterId":64}]}}, "streamSettings":{"network":"tcp"},"outbound":{"protocol":"freedom","settings":{}},"outboundDetour":[{"protocol":"blackhole","settings":{},"tag":"blocked"}]}' > ./config.json
v2ray run -c ./config.json
