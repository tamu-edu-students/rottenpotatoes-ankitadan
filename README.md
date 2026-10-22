# Rotten Potatoes

A movie management web application built with Ruby on Rails for the Software Engineering course Assignment at Texas A&M University.

🔗 **Live Demo:** [View Rotten Potatoes](https://rottenpotatoes-ankitadan.onrender.com)

## Overview

Rotten Potatoes allows users to browse and manage a collection of movies through a clean, styled web interface. The application supports creating, viewing, editing, and deleting movie records, along with sorting movies by different attributes.

## Features

- **Movie Listing:** View movies in a structured table displaying title, rating, and release date.
- **Sorting:** Sort movies by title, rating, or release date in ascending or descending order.
- **Sort Indicators:** Visual arrows and column highlighting indicate the active sort order.
- **Movie Details:** View individual movie information, including description, rating, and release date.
- **CRUD Operations:** Create, read, update, and delete movie records.
- **Seed Data:** Populate the database with sample movies using Rails seeds.
- **Custom Styling:** Handwritten CSS for tables, forms, buttons, movie details, and page layouts.
- **Persistent Sort Preference:** Retain the selected sorting preference when navigating away from and returning to the movie index.

## Technology Stack

- **Language:** Ruby 3.3.12
- **Framework:** Ruby on Rails 8.1.4
- **Frontend:** HTML, ERB, CSS
- **Local Database:** SQLite
- **Production Database:** PostgreSQL
- **Deployment:** Render
- **Version Control:** Git and GitHub

## Getting Started

### Prerequisites

- Ruby 3.3.12
- Bundler
- SQLite3
- Git

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/tamu-edu-students/rottenpotatoes-ankitadan
   cd rottenpotatoes
   ```

2. Install dependencies:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   bin/rails db:create
   bin/rails db:migrate
   bin/rails db:seed
   ```

4. Start the development server:

   ```bash
   bin/rails server
   ```

5. Open [http://localhost:3000](http://localhost:3000) in your browser.

## Database Seeding

The application includes sample movie records in `db/seeds.rb`. The seed logic uses `find_or_create_by!` to avoid creating duplicate records for movies that already exist with the same title.

To load seed data:

```bash
bin/rails db:seed
```

## Deployment

The application is deployed on Render using a Ruby web service and a PostgreSQL database.

The deployment build script is located at `bin/render-build.sh`. It installs dependencies, precompiles assets, runs database migrations, and loads seed data.

The production database connection is configured through the `DATABASE_URL` environment variable.

## Project Structure

```text
rottenpotatoes/
├── app/
│   ├── controllers/
│   ├── models/
│   ├── views/
│   └── assets/
│       └── stylesheets/
├── bin/
│   └── render-build.sh
├── config/
│   └── database.yml
├── db/
│   ├── migrate/
│   └── seeds.rb
├── Gemfile
└── README.md
```

## Running Tests

Run the Rails test suite with:

```bash
bin/rails test
```

