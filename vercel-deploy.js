#!/usr/bin/env node

/**
 * Vercel Deployment Helper Script
 * 
 * This script helps prepare a DSA-Companion application for Vercel deployment.
 * It performs the following tasks:
 * 1. Checks for required environment variables
 * 2. Generates a random SESSION_SECRET if none is provided
 * 3. Creates or updates .env.production with the necessary variables
 */

import fs from 'fs';
import crypto from 'crypto';

console.log('\n🚀 Preparing for Vercel deployment...\n');

// Check if DATABASE_URL exists in the environment
if (!process.env.DATABASE_URL) {
  console.error('❌ Error: DATABASE_URL is not set in your environment.');
  console.log('Please set your Neon PostgreSQL connection string as DATABASE_URL.');
  console.log('Example: export DATABASE_URL="postgres://user:password@hostname:port/database"');
  process.exit(1);
}

// Generate a random session secret if not provided
let sessionSecret = process.env.SESSION_SECRET;
if (!sessionSecret) {
  sessionSecret = crypto.randomBytes(32).toString('hex');
  console.log('✅ Generated a random SESSION_SECRET');
} else {
  console.log('✅ Using provided SESSION_SECRET');
}

// Create or update .env.production
const envContent = `NODE_ENV=production
DATABASE_URL=${process.env.DATABASE_URL}
SESSION_SECRET=${sessionSecret}
`;

fs.writeFileSync('.env.production', envContent);
console.log('✅ Created .env.production file');

console.log('\n✨ Deployment preparation complete!');
console.log('\nNext steps:');
console.log('1. Run: npm run build');
console.log('2. Deploy to Vercel using: vercel --prod');
console.log('3. Set the following environment variables in your Vercel project:');
console.log('   - DATABASE_URL');
console.log('   - NODE_ENV=production');
console.log(`   - SESSION_SECRET=${sessionSecret}`);
console.log('\nFor more information, see DEPLOYMENT.md\n');