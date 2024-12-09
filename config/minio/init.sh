#!/bin/sh

# Wait for MinIO to be ready
until curl -sf http://minio:9000/minio/health/ready; do
    echo 'Waiting for MinIO to be ready...'
    sleep 5
done

# Create the Loki buckets using MinIO client
mc alias set minio http://minio:9000 ${MINIO_ROOT_USER} ${MINIO_ROOT_PASSWORD}
mc mb --ignore-existing minio/loki-data
mc mb --ignore-existing minio/loki-ruler

# Set bucket policies (optional, adjust as needed)
mc policy set download minio/loki-data
mc policy set download minio/loki-ruler

echo "MinIO initialization completed"
