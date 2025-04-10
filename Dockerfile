# Use Alpine for a lightweight image
FROM alpine:3.18

# Install necessary libs
RUN apk add --no-cache ca-certificates

# Create app directory
WORKDIR /app

# Copy PocketBase binary
COPY pocketbase .

# Copy optional data
COPY pb_data ./pb_data

# Make binary executable
RUN chmod +x ./pocketbase

# Expose the default port
EXPOSE 8090

# Run PocketBase
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
