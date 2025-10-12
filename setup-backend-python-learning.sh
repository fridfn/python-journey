#!/bin/bash

# Script untuk membuat struktur folder pembelajaran Python Backend
# Dibuat untuk: Farid Fathoni
# Tanggal: 12 Oktober 2025

echo "🚀 Memulai pembuatan struktur folder Python Backend Learning..."
echo ""

# Buat folder utama backend
echo "📁 Membuat folder utama backend..."
mkdir -p python-backend

cd python-backend

# ==========================================
# 01. API FUNDAMENTALS
# ==========================================
echo "📝 Membuat folder 01_api_fundamentals..."
mkdir -p 01_api_fundamentals/{flask_basics,fastapi_basics,routing,middleware,task}

touch 01_api_fundamentals/flask_basics/hello_flask.py
touch 01_api_fundamentals/flask_basics/flask_routing.py
touch 01_api_fundamentals/flask_basics/templates_basics.py
touch 01_api_fundamentals/flask_basics/static_files.py

touch 01_api_fundamentals/fastapi_basics/hello_fastapi.py
touch 01_api_fundamentals/fastapi_basics/path_parameters.py
touch 01_api_fundamentals/fastapi_basics/query_parameters.py
touch 01_api_fundamentals/fastapi_basics/request_body.py

touch 01_api_fundamentals/routing/route_methods.py
touch 01_api_fundamentals/routing/url_building.py
touch 01_api_fundamentals/routing/redirect_and_errors.py

touch 01_api_fundamentals/middleware/custom_middleware.py
touch 01_api_fundamentals/middleware/cors_setup.py

touch 01_api_fundamentals/task/notes.md
touch 01_api_fundamentals/task/playground.py

# ==========================================
# 02. DATABASE & ORM
# ==========================================
echo "📝 Membuat folder 02_database_orm..."
mkdir -p 02_database_orm/{sqlite_basics,postgresql,sqlalchemy,migrations,task}

touch 02_database_orm/sqlite_basics/connect_sqlite.py
touch 02_database_orm/sqlite_basics/crud_operations.py
touch 02_database_orm/sqlite_basics/raw_queries.py

touch 02_database_orm/postgresql/connect_postgres.py
touch 02_database_orm/postgresql/psycopg2_basics.py

touch 02_database_orm/sqlalchemy/orm_basics.py
touch 02_database_orm/sqlalchemy/models_and_tables.py
touch 02_database_orm/sqlalchemy/relationships.py
touch 02_database_orm/sqlalchemy/queries_advanced.py

touch 02_database_orm/migrations/alembic_setup.py
touch 02_database_orm/migrations/create_migration.py

touch 02_database_orm/task/notes.md
touch 02_database_orm/task/playground.py

# ==========================================
# 03. REST API DESIGN
# ==========================================
echo "📝 Membuat folder 03_rest_api_design..."
mkdir -p 03_rest_api_design/{http_methods,status_codes,json_handling,validation,task}

touch 03_rest_api_design/http_methods/get_post_put_delete.py
touch 03_rest_api_design/http_methods/patch_and_head.py

touch 03_rest_api_design/status_codes/response_codes.py
touch 03_rest_api_design/status_codes/error_handling.py

touch 03_rest_api_design/json_handling/json_responses.py
touch 03_rest_api_design/json_handling/serialization.py

touch 03_rest_api_design/validation/pydantic_models.py
touch 03_rest_api_design/validation/request_validation.py
touch 03_rest_api_design/validation/custom_validators.py

touch 03_rest_api_design/task/notes.md
touch 03_rest_api_design/task/playground.py

# ==========================================
# 04. AUTHENTICATION & SECURITY
# ==========================================
echo "📝 Membuat folder 04_auth_security..."
mkdir -p 04_auth_security/{jwt_auth,session_auth,password_hashing,oauth2,task}

touch 04_auth_security/jwt_auth/jwt_basics.py
touch 04_auth_security/jwt_auth/create_token.py
touch 04_auth_security/jwt_auth/verify_token.py
touch 04_auth_security/jwt_auth/protected_routes.py

touch 04_auth_security/session_auth/session_management.py
touch 04_auth_security/session_auth/cookies_setup.py

touch 04_auth_security/password_hashing/bcrypt_basics.py
touch 04_auth_security/password_hashing/hash_and_verify.py

touch 04_auth_security/oauth2/oauth2_flow.py
touch 04_auth_security/oauth2/google_login.py

touch 04_auth_security/task/notes.md
touch 04_auth_security/task/playground.py

# ==========================================
# 05. API TESTING
# ==========================================
echo "📝 Membuat folder 05_api_testing..."
mkdir -p 05_api_testing/{pytest_basics,unittest,integration_tests,mocking,task}

touch 05_api_testing/pytest_basics/first_test.py
touch 05_api_testing/pytest_basics/fixtures.py
touch 05_api_testing/pytest_basics/parametrize.py

touch 05_api_testing/unittest/unittest_basics.py
touch 05_api_testing/unittest/test_api_endpoints.py

touch 05_api_testing/integration_tests/test_database.py
touch 05_api_testing/integration_tests/test_auth_flow.py

touch 05_api_testing/mocking/mock_external_api.py
touch 05_api_testing/mocking/mock_database.py

touch 05_api_testing/task/notes.md
touch 05_api_testing/task/playground.py

# ==========================================
# 06. FILE UPLOADS & STORAGE
# ==========================================
echo "📝 Membuat folder 06_file_storage..."
mkdir -p 06_file_storage/{upload_basics,image_processing,cloud_storage,task}

touch 06_file_storage/upload_basics/upload_file.py
touch 06_file_storage/upload_basics/validate_file_type.py
touch 06_file_storage/upload_basics/save_to_disk.py

touch 06_file_storage/image_processing/pillow_basics.py
touch 06_file_storage/image_processing/resize_image.py
touch 06_file_storage/image_processing/thumbnail_generator.py

touch 06_file_storage/cloud_storage/aws_s3_upload.py
touch 06_file_storage/cloud_storage/cloudinary_setup.py

touch 06_file_storage/task/notes.md
touch 06_file_storage/task/playground.py

# ==========================================
# 07. BACKGROUND TASKS & QUEUES
# ==========================================
echo "📝 Membuat folder 07_background_tasks..."
mkdir -p 07_background_tasks/{celery_basics,redis_queue,task_scheduling,task}

touch 07_background_tasks/celery_basics/celery_setup.py
touch 07_background_tasks/celery_basics/simple_task.py
touch 07_background_tasks/celery_basics/periodic_tasks.py

touch 07_background_tasks/redis_queue/rq_basics.py
touch 07_background_tasks/redis_queue/job_queue.py

touch 07_background_tasks/task_scheduling/schedule_jobs.py
touch 07_background_tasks/task_scheduling/cron_tasks.py

touch 07_background_tasks/task/notes.md
touch 07_background_tasks/task/playground.py

# ==========================================
# 08. WEBSOCKETS & REAL-TIME
# ==========================================
echo "📝 Membuat folder 08_websockets..."
mkdir -p 08_websockets/{websocket_basics,socketio,chat_app,task}

touch 08_websockets/websocket_basics/ws_server.py
touch 08_websockets/websocket_basics/ws_client.py

touch 08_websockets/socketio/socketio_server.py
touch 08_websockets/socketio/socketio_events.py
touch 08_websockets/socketio/room_management.py

touch 08_websockets/chat_app/simple_chat.py
touch 08_websockets/chat_app/broadcast_messages.py

touch 08_websockets/task/notes.md
touch 08_websockets/task/playground.py

# ==========================================
# 09. CACHING & PERFORMANCE
# ==========================================
echo "📝 Membuat folder 09_caching_performance..."
mkdir -p 09_caching_performance/{redis_cache,memcached,query_optimization,task}

touch 09_caching_performance/redis_cache/redis_basics.py
touch 09_caching_performance/redis_cache/cache_decorator.py
touch 09_caching_performance/redis_cache/session_storage.py

touch 09_caching_performance/memcached/memcached_setup.py
touch 09_caching_performance/memcached/cache_strategies.py

touch 09_caching_performance/query_optimization/eager_loading.py
touch 09_caching_performance/query_optimization/indexing.py
touch 09_caching_performance/query_optimization/pagination.py

touch 09_caching_performance/task/notes.md
touch 09_caching_performance/task/playground.py

# ==========================================
# 10. LOGGING & MONITORING
# ==========================================
echo "📝 Membuat folder 10_logging_monitoring..."
mkdir -p 10_logging_monitoring/{logging_basics,structured_logging,monitoring,task}

touch 10_logging_monitoring/logging_basics/basic_logging.py
touch 10_logging_monitoring/logging_basics/log_levels.py
touch 10_logging_monitoring/logging_basics/log_to_file.py

touch 10_logging_monitoring/structured_logging/json_logs.py
touch 10_logging_monitoring/structured_logging/custom_formatter.py

touch 10_logging_monitoring/monitoring/health_checks.py
touch 10_logging_monitoring/monitoring/metrics.py

touch 10_logging_monitoring/task/notes.md
touch 10_logging_monitoring/task/playground.py

# ==========================================
# 11. DEPLOYMENT
# ==========================================
echo "📝 Membuat folder 11_deployment..."
mkdir -p 11_deployment/{docker,heroku,railway,nginx,task}

touch 11_deployment/docker/Dockerfile
touch 11_deployment/docker/docker-compose.yml
touch 11_deployment/docker/dockerignore

touch 11_deployment/heroku/Procfile
touch 11_deployment/heroku/runtime.txt
touch 11_deployment/heroku/deploy_guide.md

touch 11_deployment/railway/railway_setup.md
touch 11_deployment/railway/environment_vars.md

touch 11_deployment/nginx/nginx.conf
touch 11_deployment/nginx/reverse_proxy.conf

touch 11_deployment/task/notes.md
touch 11_deployment/task/deployment_checklist.md

# ==========================================
# 12. PROJECTS
# ==========================================
echo "📝 Membuat folder 12_projects..."
mkdir -p 12_projects/{blog_api,todo_api,ecommerce_api,social_media_api,task}

touch 12_projects/blog_api/main.py
touch 12_projects/blog_api/models.py
touch 12_projects/blog_api/routes.py
touch 12_projects/blog_api/README.md

touch 12_projects/todo_api/main.py
touch 12_projects/todo_api/models.py
touch 12_projects/todo_api/routes.py
touch 12_projects/todo_api/README.md

touch 12_projects/ecommerce_api/main.py
touch 12_projects/ecommerce_api/models.py
touch 12_projects/ecommerce_api/routes.py
touch 12_projects/ecommerce_api/README.md

touch 12_projects/social_media_api/main.py
touch 12_projects/social_media_api/models.py
touch 12_projects/social_media_api/routes.py
touch 12_projects/social_media_api/README.md

touch 12_projects/task/notes.md
touch 12_projects/task/project_ideas.md

# ==========================================
# UTILITIES & CONFIG FILES
# ==========================================
echo "📝 Membuat file konfigurasi..."
touch requirements.txt
touch .env.example
touch .gitignore
touch config.py

# Isi requirements.txt
cat > requirements.txt << 'EOF'
# Framework
flask==3.0.0
fastapi==0.104.1
uvicorn==0.24.0

# Database
sqlalchemy==2.0.23
psycopg2-binary==2.9.9
alembic==1.12.1

# Authentication
pyjwt==2.8.0
bcrypt==4.1.1
python-jose==3.3.0

# Validation
pydantic==2.5.0

# Testing
pytest==7.4.3
pytest-asyncio==0.21.1

# Background Tasks
celery==5.3.4
redis==5.0.1

# WebSockets
python-socketio==5.10.0

# File Processing
pillow==10.1.0

# Utilities
python-dotenv==1.0.0
python-multipart==0.0.6
EOF

# Isi .env.example
cat > .env.example << 'EOF'
# Database
DATABASE_URL=sqlite:///./app.db
# DATABASE_URL=postgresql://user:password@localhost/dbname

# JWT Secret
SECRET_KEY=your-secret-key-here
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30

# Redis
REDIS_URL=redis://localhost:6379/0

# AWS S3 (if used)
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_BUCKET_NAME=

# Email (if used)
SMTP_HOST=
SMTP_PORT=
SMTP_USER=
SMTP_PASSWORD=
EOF

# Isi .gitignore
cat > .gitignore << 'EOF'
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
.venv

# Environment
.env
.env.local

# Database
*.db
*.sqlite
*.sqlite3

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db

# Logs
*.log

# Testing
.pytest_cache/
.coverage
htmlcov/

# Build
dist/
build/
*.egg-info/
EOF

# Buat README.md utama
cat > README.md << 'EOF'
# 🚀 Struktur Pembelajaran Python Backend — From Zero to Hero

> **Dibuat untuk:** Farid Fathoni  
> **Tujuan:** Panduan sistematis belajar Backend Development dengan Python  
> **Platform:** Termux (Android) & PC

## 📖 Roadmap Pembelajaran

### Phase 1: API Fundamentals (Week 1-2)
- ✅ Flask & FastAPI basics
- ✅ Routing & Middleware
- ✅ Request/Response handling

### Phase 2: Database & ORM (Week 3-4)
- ✅ SQLite & PostgreSQL
- ✅ SQLAlchemy ORM
- ✅ Database migrations

### Phase 3: Security & Auth (Week 5-6)
- ✅ JWT Authentication
- ✅ Password hashing
- ✅ OAuth2 implementation

### Phase 4: Advanced Topics (Week 7-8)
- ✅ Testing & Mocking
- ✅ WebSockets
- ✅ Background tasks
- ✅ Caching strategies

### Phase 5: Production Ready (Week 9-10)
- ✅ Logging & Monitoring
- ✅ Docker containerization
- ✅ Deployment strategies

### Phase 6: Real Projects (Week 11-12)
- ✅ Blog API
- ✅ E-commerce API
- ✅ Social Media API

## 🛠️ Setup Environment

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Copy environment variables
cp .env.example .env

# 3. Run your first API
cd 01_api_fundamentals/flask_basics
python hello_flask.py
```

## 📁 Struktur Folder

```
python-backend/
├── 01_api_fundamentals/     # Flask & FastAPI
├── 02_database_orm/         # Database & SQLAlchemy
├── 03_rest_api_design/      # REST principles
├── 04_auth_security/        # Authentication
├── 05_api_testing/          # Testing strategies
├── 06_file_storage/         # File uploads
├── 07_background_tasks/     # Celery & Redis
├── 08_websockets/           # Real-time communication
├── 09_caching_performance/  # Optimization
├── 10_logging_monitoring/   # Production readiness
├── 11_deployment/           # Docker & Deploy
└── 12_projects/             # Real-world projects
```

## 💡 Tips Belajar

1. **Jangan skip fundamentals** — Pahami Flask/FastAPI dulu
2. **Praktik langsung** — Jalankan setiap kode
3. **Bikin project sendiri** — Aplikasikan ilmu
4. **Test everything** — Biasakan testing dari awal
5. **Deploy early** — Jangan tunggu perfect

## 🎯 Learning Goals

- [ ] Bisa bikin REST API dari nol
- [ ] Mengerti database design & ORM
- [ ] Implementasi authentication yang aman
- [ ] Deploy API ke production
- [ ] Bikin 3 project portfolio

## 📚 Resources

- [Flask Documentation](https://flask.palletsprojects.com/)
- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [SQLAlchemy Tutorial](https://docs.sqlalchemy.org/)
- [Real Python Backend](https://realpython.com/tutorials/api/)

## 🚀 Next Steps

1. Mulai dari `01_api_fundamentals/flask_basics/hello_flask.py`
2. Ikuti urutan folder secara berurutan
3. Tulis catatan di setiap `task/notes.md`
4. Build project di folder `12_projects`

---

**Dibuat dengan 💜 untuk perjalanan backend Farid**  
**"From localhost to production, one endpoint at a time"**
EOF

echo ""
echo "✨ Selesai! Struktur folder backend berhasil dibuat."
echo ""
echo "📊 Ringkasan:"
echo "   - Total folder: 12 modul utama"
echo "   - Total subfolder: 50+ folder"
echo "   - Total file: 150+ file"
echo ""
echo "🎯 Langkah selanjutnya:"
echo "   1. cd python-backend"
echo "   2. pip install -r requirements.txt"
echo "   3. cp .env.example .env"
echo "   4. Mulai dari 01_api_fundamentals/flask_basics/hello_flask.py"
echo ""
echo "💜 Selamat belajar Backend, Farid!"
echo "🚀 Let's build something amazing!"