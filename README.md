# DSA Problem Tracker

<div align="center">
  <img src="attached_assets/1.png" alt="DSA Tracker Interface" width="800"/>
</div>

A comprehensive Data Structures and Algorithms (DSA) problem-tracking platform that seamlessly integrates with platforms like LeetCode and GeeksforGeeks.

## Features

- **Problem Management**: Add, update, and delete DSA problems with metadata
- **Progress Tracking**: Track your progress on individual problems (not started, attempted, completed)
- **Advanced Filtering**: Filter problems by topics, difficulty, companies, and search by title
- **Analytics Dashboard**: View statistics about your progress and problem distribution
- **LeetCode Integration**: Import problems from LeetCode
- **User Management**: Admin and user roles with appropriate permissions
- **Persistent Storage**: Uses PostgreSQL for reliable data storage

## Tech Stack

- **Frontend**: React with TypeScript, TailwindCSS, Shadcn UI components
- **Backend**: Express.js with TypeScript
- **Database**: PostgreSQL with Drizzle ORM
- **Authentication**: Session-based auth with Passport.js
- **State Management**: React Query for server state
- **Form Handling**: React Hook Form with Zod validation

## Getting Started

### Prerequisites

- Node.js 16+
- PostgreSQL database

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/dsa-problem-tracker.git
   cd dsa-problem-tracker
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Set up environment variables:
   Create a `.env` file with the following variables:
   ```
   DATABASE_URL=postgres://user:password@localhost:5432/dsa_tracker
   ```

4. Push the schema to the database:
   ```
   npm run db:push
   ```

5. Start the development server:
   ```
   npm run dev
   ```

## Deployment

For detailed deployment instructions, please see [DEPLOYMENT.md](DEPLOYMENT.md).

### Deploying to Vercel

This application is configured to be deployed to Vercel with minimal setup:

1. **Fork or Push to GitHub**:
   - Fork this repository or push your local repository to GitHub

2. **Connect to Vercel**:
   - Go to [Vercel](https://vercel.com/) and sign up/login (using GitHub is recommended)
   - Click "Add New" and select "Project"
   - Select your GitHub repository containing this project
   - Vercel will automatically detect the framework (Vite)

3. **Configure Environment Variables**:
   - Add the following environment variables in Vercel project settings:
     ```
     DATABASE_URL=your_neon_postgres_connection_string
     NODE_ENV=production
     SESSION_SECRET=your_secure_random_string
     ```

4. **Deploy**:
   - Click "Deploy"
   - Vercel will build and deploy your application
   - Once deployed, you can access your application at the provided URL

### Database Setup for Production

For production deployment, we recommend using Neon PostgreSQL:

<div align="center">
  <img src="attached_assets/neon.png" alt="Neon PostgreSQL Dashboard" width="800"/>
</div>

1. Create an account at [Neon](https://neon.tech/)
2. Create a new PostgreSQL database
3. Copy the connection string
4. Add it as `DATABASE_URL` in your Vercel environment variables
5. After deployment, run the database schema migration through Vercel CLI:
   ```
   vercel env pull .env.production
   npm run db:push
   ```

## Usage

- **Adding Problems**: Go to the Admin Dashboard to add new problems
- **Tracking Progress**: Mark problems as attempted or completed from the Problems page
- **Viewing Statistics**: Check your progress on the Dashboard or Profile page

## Contributing

Contributions are welcome! Please feel free to submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.