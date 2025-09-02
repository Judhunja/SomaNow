#!/bin/bash

echo "🚀 Building SomaNow for Vercel deployment..."

# Navigate to web directory
cd web

# Install dependencies
echo "📦 Installing dependencies..."
npm ci

# Build the application
echo "🔨 Building application..."
npm run build

echo "✅ Build completed successfully!"
