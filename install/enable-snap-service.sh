#!/bin/bash

echo "Enabling snap service..."

startServiceAndWaitUntilItIsRunning "snapd.service" 5
startServiceAndWaitUntilItIsRunning "snapd.socket" 5
