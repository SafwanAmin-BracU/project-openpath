# OpenPath Developer Analytics Platform

[![Svelte](https://img.shields.io/badge/Svelte-5.0-orange)](https://svelte.dev)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-3.0-blue)](https://tailwindcss.com)
[![Drizzle ORM](https://img.shields.io/badge/Drizzle_ORM-0.25-yellow)](https://orm.drizzle.team)

A developer analytics platform that tracks and visualizes open-source contributions using GitHub API integration.

## Features

- **GitHub Integration**
  Track contributions across multiple repositories with OAuth authentication
- **Contribution Analytics**
  Visualize code contributions, documentation updates, and issue tracking
- **Skill-Based Matching**
  AI-powered project recommendations based on developer expertise
- **Impact Scoring**
  Algorithmic scoring system for contribution quality and maintainer feedback
- **Multi-dimensional Metrics**
  Track lines changed, files modified, complexity scores, and review times

## Tech Stack

- **Frontend**: SvelteKit 5 + Vite
- **Styling**: Tailwind CSS + Shadcn/Svelte
- **Database**: Drizzle ORM + SQLite
- **Analytics**: Custom metrics engine
- **Auth**: GitHub OAuth integration

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-org/project-openpath.git
   cd project-openpath
   ```

2. Install dependencies using pnpm:

   ```bash
   pnpm install
   ```

3. Create `.env` file with GitHub OAuth credentials:

   ```env
   GITHUB_CLIENT_ID=your_github_oauth_id
   GITHUB_CLIENT_SECRET=your_github_oauth_secret
   DATABASE_URL=file:./dev.db
   ```

4. Start development server:
   ```bash
   pnpm run dev
   ```

## Database Schema

The system uses a sophisticated metrics tracking system defined in:

```sql
CREATE TABLE contributions (
  id UUID PRIMARY KEY,
  user_id UUID REFERENCES users(id),
  type VARCHAR(20) CHECK (type IN ('code', 'documentation', 'bug_fix', 'feature')),
  lines_added INT,
  lines_removed INT,
  complexity_score NUMERIC,
  status VARCHAR(20) DEFAULT 'pending'
);
```

## Project Structure

Key components:

- `<mcfile name="+page.svelte" path="src/routes/+page.svelte"></mcfile>`: Main landing page
- `<mcfile name="uniqueFeatures.queries.sql" path="uniqueFeatures.queries.sql"></mcfile>`: Database schema and complex queries
- Dashboard routes:
  - `<mcfile name="analytics/+page.svelte" path="src/routes/dashboard/analytics/+page.svelte"></mcfile>`
  - `<mcfile name="portfolio/+page.svelte" path="src/routes/dashboard/portfolio/+page.svelte"></mcfile>`

## Contributing

Follow these guidelines:

- Use Conventional Commits
- Maintain TypeScript type safety
- Update relevant documentation
- Add tests for new features

## License

MIT License - See [LICENSE](LICENSE) for details
