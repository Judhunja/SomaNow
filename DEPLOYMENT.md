# SomaNow - Vercel Deployment Guide

## 🚀 Deploying to Vercel

### Step 1: Connect Your Repository
1. Go to [vercel.com](https://vercel.com)
2. Sign in with your GitHub account
3. Click "New Project"
4. Select your `SomaNow` repository

### Step 2: Configure the Project
When importing, Vercel should automatically detect the settings from `vercel.json`, but make sure these are set:

- **Framework Preset**: Vite
- **Root Directory**: `./` (keep as root)
- **Build Command**: `cd web && npm run build`
- **Output Directory**: `web/dist`
- **Install Command**: `cd web && npm install`

### Step 3: Set Environment Variables
In your Vercel project settings, add these environment variables:

```
VITE_SUPABASE_URL=https://lmcmxqbzqsudvqxutpuf.supabase.co
VITE_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImxtY214cWJ6cXN1ZHZxeHV0cHVmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTU2NzUwMDgsImV4cCI6MjA3MTI1MTAwOH0.LhwNoejaSxBNO3Z846FipckgO1ZmxILtTqabDahF7qc
VITE_AI_PROVIDER=deepseek
VITE_AI_KEY=sk-e50895f5daab4d589ce9b96a2a949e53
VITE_APP_NAME=SomaNow
VITE_APP_SHORT_NAME=SomaNow
VITE_APP_DESCRIPTION=AI-powered learning platform for Kenya
```

### Step 4: Deploy
1. Click "Deploy"
2. Wait for the build to complete
3. Your site will be live at `https://your-project-name.vercel.app`

## 🔄 Automatic Deployments

Once connected, every time you push to your `main` branch, Vercel will automatically:
1. Pull the latest code
2. Run the build process
3. Deploy the updated site

## ✅ Verification

After deployment, check:
- [ ] Homepage loads correctly
- [ ] Lessons page works
- [ ] AI features function properly
- [ ] All routes work (thanks to the rewrite rules)

## 🛠 Troubleshooting

If deployment fails:
1. Check the build logs in Vercel dashboard
2. Ensure all environment variables are set
3. Verify the build works locally with `cd web && npm run build`
4. Check that `web/dist` folder is created with `index.html`

## 📝 Notes

- The `vercel.json` file handles routing for your React SPA
- Environment variables are automatically injected during build
- Build artifacts are cached for faster subsequent deployments
