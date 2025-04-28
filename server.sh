#!/bin/bash

# Start the server
gnome-terminal -- bash -c "./server 5000; exec bash"

# Wait for the server to be ready
echo "Waiting for server to start..."
while ! nc -z localhost 5000; do
  sleep 0.5
done
echo "Server is up!"

# Launch first client
gnome-terminal -- bash -c "./sh13 localhost 5000 localhost 5001 Karlitou; exec bash"
sleep 0.5

# Launch second client
gnome-terminal -- bash -c "./sh13 localhost 5000 localhost 5002 Hahaha; exec bash"
sleep 0.5

# Launch third client
gnome-terminal -- bash -c "./sh13 localhost 5000 localhost 5003 Whatever; exec bash"
sleep 0.5

# Launch fourth client
gnome-terminal -- bash -c "./sh13 localhost 5000 localhost 5004 HiHiHI; exec bash"
