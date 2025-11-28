#!/bin/bash

# Clean previous build
rm -rf package lambda.zip

# Create package folder
mkdir package

# Install dependencies into package
pip install -r requirements.txt --target package

# Copy backend code into package
cp app.py package/

# Zip everything
cd package
zip -r ../lambda.zip .
cd ..

# Move lambda.zip to terraform folder
mv lambda.zip ../terraform/

echo "Lambda zip created and moved to terraform folder ✅"
