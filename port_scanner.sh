echo "Simple Port Scanner"
echo "-------------------"

read -p "Enter target IP or hostname: " target

for port in {1..10124}
do
    timeout 1 bash -c "echo >/dev/tcp/$target/$port" 2>/dev/null

    if [ $? -eq 0 ]; then
         echo "Port $port is OPEN"
    fi
done

echo "Scan Completed!"
