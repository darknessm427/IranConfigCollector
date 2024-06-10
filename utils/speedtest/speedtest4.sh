# Download the LiteSpeedTest binary
echo "Downloading lite-linux-amd64 binary..."
wget -O lite-linux-amd64 https://github.com/mahdibland/V2RayAggregator/releases/download/1.0.0/lite-linux-amd64-12

# Download the lite_config.json configuration file
echo "Downloading lite_config.json..."
wget -O lite_config.json https://raw.githubusercontent.com/lagzian/IranConfigCollector/main/utils/speedtest/lite_config.json

# Provide execute permissions to the binary
echo "Setting execute permissions for lite-linux-amd64..."
chmod +x ./lite-linux-amd64

# Run LiteSpeedTest with the specified configuration
echo "Running LiteSpeedTest..."
sudo nohup sh -c 'set -x; ./lite-linux-amd64 --config ./lite_config.json --test subs' >speedtest.log 2>&1 &

echo "LiteSpeedTest started in the background."
