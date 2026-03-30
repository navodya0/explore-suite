# admin-ERP

A Laravel-based administrative ERP system for managing office-related tasks, including employees, leave, departments, job titles, transport requests, and other workflows.

## 🔧 Requirements

- PHP 8.1+ (or PHP version used by this project)
- Composer
- Node.js + npm (for frontend assets with Vite)
- MySQL (or another DB supported by Laravel)

## 🚀 Setup

1. Clone repo

```bash
git clone <repo-url> admin-ERP
cd admin-ERP
```

2. Install PHP dependencies

```bash
composer install
```

3. Install JS dependencies

```bash
npm install
```

4. Copy env and generate key

```bash
cp .env.example .env
php artisan key:generate
```

5. Configure `.env` (database, mail, etc.)

```dotenv
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=admin_erp
DB_USERNAME=root
DB_PASSWORD=
```

6. Run migrations and seeders

```bash
php artisan migrate --seed
```

7. Build frontend assets

```bash
npm run build
```

8. Start server

```bash
php artisan serve
```

Then open `http://127.0.0.1:8000` in browser.

## 🧪 Tests

Run tests with:

```bash
php artisan test
```

## 📁 Key folders

- `app/Models` - Eloquent data models
- `app/Http/Controllers` - request controllers
- `database/migrations` - database schema
- `resources/views` - blade views
- `routes` - route definitions

## 🛠 Features

- Departments, job titles, employees
- Leave policies, requests, balances
- Role and permission structure
- Vehicle requests and transport service
- Document, contact, emergency, experience tracking

## 🌐 Notes

- Uses Inertia/Vite (check `vite.config.js` and `resources/js`)
- Ensure `storage` and `bootstrap/cache` are writable

## ❤️ Contributing

1. Fork
2. New branch
3. PR with description

### 🚀 Happy Coding!