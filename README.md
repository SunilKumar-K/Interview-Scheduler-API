# 📅 Interview-Scheduler-API

An enterprise-ready RESTful API for scheduling interviews between candidates and interviewers. This backend service manages availability, prevents double-bookings, sends asynchronous notifications using RabbitMQ, and supports both MySQL and PostgreSQL databases.

![Build Status](https://img.shields.io/github/actions/workflow/status/SunilKumar-K/Interview-Scheduler-API/maven-publish.yml)
![License](https://img.shields.io/github/license/SunilKumar-K/Interview-Scheduler-API)
![Java](https://img.shields.io/badge/Java-17-blue)

---

## 📌 Features

- ✅ Schedule, update, and cancel interviews
- ✅ Avoid conflicts with overlapping time slots
- ✅ Notify participants via asynchronous messaging (RabbitMQ)
- ✅ Swagger documentation for easy API testing
- ✅ Configurable for MySQL or PostgreSQL
- ✅ CI/CD pipeline using GitHub Actions + Maven
- ✅ GitHub Package Registry publishing

---

## 🚀 Tech Stack

| Layer            | Technology             |
|------------------|------------------------|
| Language         | Java 17                |
| Framework        | Spring Boot 3.4+       |
| Build Tool       | Maven                  |
| Messaging        | RabbitMQ               |
| Database         | MySQL / PostgreSQL     |
| API Docs         | Swagger (OpenAPI)      |
| CI/CD            | GitHub Actions         |
| Registry         | GitHub Packages        |

---



## 🛠️ Installation & Setup

### 📋 Prerequisites

- Java 17+
- Maven 3.8+
- MySQL or PostgreSQL
- Reddis
- RabbitMQ (can run locally or via Docker)

## ▶️ Run the Application
```bash 

git clone https://github.com/SunilKumar-K/Interview-Scheduler-API.git

cd Interview-Scheduler-API

mvn spring-boot:run
```

## 📡 API Documentation

The API is documented using Swagger/OpenAPI. Once the application is running, you can access the interactive API documentation at:

```
http://localhost:8080/swagger-ui.html
```

### Key Endpoints

| Method | Endpoint                          | Description                           |
|--------|-----------------------------------|---------------------------------------|
| POST   | /api/v1/interviews               | Schedule a new interview              |
| PUT    | /api/v1/interviews/{id}          | Update an existing interview          |
| DELETE | /api/v1/interviews/{id}          | Cancel an interview                   |
| GET    | /api/v1/interviews               | List all interviews                   |
| GET    | /api/v1/interviews/{id}          | Get interview details                 |
| GET    | /api/v1/availability             | Check interviewer availability        |

## ⚙️ Configuration

### Environment Variables

Create a `.env` file in the root directory with the following configurations:

```properties
# Database Configuration
SPRING_DATASOURCE_URL=jdbc:mysql://localhost:3306/interview_scheduler
SPRING_DATASOURCE_USERNAME=your_username
SPRING_DATASOURCE_PASSWORD=your_password

# RabbitMQ Configuration
RABBITMQ_HOST=localhost
RABBITMQ_PORT=5672
RABBITMQ_USERNAME=guest
RABBITMQ_PASSWORD=guest

# Redis Configuration
REDIS_HOST=localhost
REDIS_PORT=6379

# Application Configuration
SERVER_PORT=8080
```

### Database Setup

The application supports both MySQL and PostgreSQL. To switch between databases, update the `application.properties`:

For MySQL:
```properties
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQLDialect
```

For PostgreSQL:
```properties
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
```

## 🔍 Error Handling

The API uses standard HTTP status codes and returns consistent error responses:

```json
{
    "status": 400,
    "error": "Bad Request",
    "message": "Invalid interview time slot",
    "timestamp": "2024-03-20T10:15:30Z"
}
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Development Guidelines

- Follow Java code style and conventions
- Write unit tests for new features
- Update documentation as needed
- Add comments for complex logic

## 📞 Support & Contact

For support and queries, please:

- Open an issue on GitHub

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

