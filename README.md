# AI Chat Frontend

A modern frontend application for AI Chat built with SvelteKit and Bun.

## Tech Stack

- **SvelteKit**: Frontend framework
- **Bun**: JavaScript runtime and package manager
- **TypeScript**: Type-safe JavaScript
- **Tailwind CSS**: Utility-first CSS framework
- **Vite**: Build tool

## Getting Started

### Prerequisites

- [Bun](https://bun.sh/) (>= 1.0.0)

### Installation

Clone the repository and install dependencies:

```bash
# Clone the repository
git clone <repository-url>
cd ai-chat

# Install dependencies
bun install
```

### Development

Run the development server:

```bash
bun run dev
```

The application will be available at `http://localhost:5173`.

### Building for Production

```bash
bun run build
```

### Previewing the Production Build

```bash
bun run preview
```

## Docker

### Building the Docker Image

```bash
docker build -t ai-chat-frontend .
```

### Running the Container

```bash
docker run -p 80:80 ai-chat-frontend
```

The application will be available at `http://localhost`.

### Docker Compose Integration

The frontend container can be integrated with a backend using Docker Compose. The Nginx server within the frontend container doesn't conflict with any proxy Nginx used in a Docker Compose setup.

Example Docker Compose configuration:

```yaml
version: '3'
services:
  frontend:
    image: ai-chat-frontend
    networks:
      - app-network
    
  backend:
    image: backend-image
    networks:
      - app-network
    
  nginx-proxy:
    image: nginx:alpine
    ports:
      - "80:80"
    volumes:
      - ./nginx/nginx.conf:/etc/nginx/conf.d/default.conf
    networks:
      - app-network
    depends_on:
      - frontend
      - backend

networks:
  app-network:
```

## Project Structure

```
ai-chat/
├── src/            # Application source code
│   ├── routes/     # SvelteKit routes
│   ├── lib/        # Shared components and utilities
│   └── app.html    # HTML template
├── static/         # Static assets
├── .svelte-kit/    # SvelteKit generated files
└── build/          # Production build output
```

## Development Commands

- `bun run dev` - Start development server
- `bun run build` - Build for production
- `bun run preview` - Preview production build
- `bun run lint` - Lint code
- `bun run format` - Format code with Prettier

