#!/bin/bash

# Set environment variables for OpenWhisk
export SERVICE_PORT=9090

# Run the MediaService application
exec /app/build/MediaService
