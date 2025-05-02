#!/bin/bash

# Set environment variables for OpenWhisk
export SERVICE_PORT=9091

# Run the PostStorageService application
exec /app/build/PostStorageService
a