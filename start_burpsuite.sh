#!/bin/bash

# Check if Burp Suite Pro is already cracked
if [ ! -f "/app/Burp-Loader-Windows/.burpsuite_cracked" ]; then
    echo "First time setup: Cracking Burp Suite Pro..."

    # Start the Burp Suite with the loader in one terminal
    java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/app/Burp-Loader-Windows/loader.jar -noverify -jar /app/Burp-Loader-Windows/burpsuite_pro_v2022.8.5.jar &

    # Start the keygen in another terminal
    java -jar /app/Burp-Loader-Windows/keygen.jar &

    # Wait for the user to complete the keygen process
    read -p "Press [Enter] after cracking Burp Suite Pro..."

    # Create a marker file to indicate that Burp Suite has been cracked
    touch /app/Burp-Loader-Windows/.burpsuite_cracked

    echo "Cracking completed. You can now use Burp Suite Pro without repeating this process."
fi

# Start Burp Suite Pro
echo "Starting Burp Suite Pro..."
java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:/app/Burp-Loader-Windows/loader.jar -noverify -jar /app/Burp-Loader-Windows/burpsuite_pro_v2022.8.5.jar
