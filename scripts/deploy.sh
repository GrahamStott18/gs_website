#!/bin/bash

echo "🚀 Starting deployment process..."

# Build the project
echo "📦 Building project..."
npm run build

# Check if build was successful
if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    
    # Deploy to Netlify (uncomment if using Netlify CLI)
    # netlify deploy --prod --dir=dist
    
    # Deploy to GitHub Pages (uncomment if using gh-pages)
    # npm run deploy
    
    echo "🎉 Deployment complete!"
else
    echo "❌ Build failed!"
    exit 1
fi