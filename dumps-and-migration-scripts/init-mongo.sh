#!/bin/bash

echo "Waiting for MongoDB to start..."
until mongosh --quiet --eval "db.adminCommand('ping')" > /dev/null 2>&1; do
  sleep 1
done

# Restore with full path
mongorestore --uri="mongodb://root:root@localhost:27017" --drop /dump/

echo "Restore completed with exit code: $?"
