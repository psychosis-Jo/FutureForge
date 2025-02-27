# My Calendar

A modern calendar application built with Next.js and Supabase.

## Tech Stack

- **Framework:** [Next.js 14](https://nextjs.org/)
- **Database:** [Supabase](https://supabase.com/)
- **Authentication:** NextAuth.js
- **Styling:** Tailwind CSS
- **Deployment:** Docker

## Prerequisites

- Node.js (v20 or later)
- pnpm (v9.15.4 or later)
- Docker (optional)

## Getting Started

### Environment Setup

1. Clone the repository:
```bash
git clone <repository-url>
cd my-calendar
```

2. Install dependencies:
```bash
pnpm install
```

3. Set up environment variables:
```bash
cp .env.example .env.local
```

4. Update `.env.local` with your credentials:
- Create a Supabase project and add credentials
- Generate NEXTAUTH_SECRET using `openssl rand -base64 32`
- Update database connection URL

### Development

Start the development server:

```bash
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

### Using Docker

1. Build and run with Docker Compose:
```bash
docker-compose up --build
```

2. For production build:
```bash
docker-compose -f docker-compose.prod.yml up --build
```

## Project Structure

```
my-calendar/
├── app/                # Next.js app directory
├── components/         # React components
├── lib/               # Utility functions
├── public/            # Static assets
├── styles/            # Global styles
└── types/             # TypeScript types
```

## Available Scripts

- `pnpm dev` - Start development server
- `pnpm build` - Build for production
- `pnpm start` - Start production server
- `pnpm lint` - Run ESLint
- `pnpm test` - Run tests (when implemented)

## Contributing

1. Create a feature branch
2. Commit changes
3. Push to the branch
4. Create a Pull Request

## License

[MIT](LICENSE)
#   F u t u r e F o r g e  
 