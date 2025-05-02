#!/bin/bash

# Set environment variables for OpenWhisk
export SERVICE_PORT=9091

# Run the HotelTimelineService application
exec /app/build/HotelTimelineService
