#!/bin/bash

# Set environment variables for OpenWhisk
export SERVICE_PORT=9091

# Run the TextService application
exec /app/build/TextService
