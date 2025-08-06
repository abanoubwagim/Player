# ⚽ Spring MVC CRUD - FIFA Player Management System

A full-stack Java web application for managing FIFA player data. Built using **Spring MVC**, **Hibernate**, **JSP**, and **MySQL**, this project demonstrates a complete **CRUD** (Create, Read, Update, Delete) system following the **MVC architecture**.

---

## 🚀 Features

- 🔍 View all players
- ➕ Add new players
- ✏️ Edit player information
- ❌ Delete players
- 🧩 MySQL + Hibernate integration
- 🖥️ JSP views using JSTL and Spring Form tags
- 🎨 Styled with Bootstrap 4
- ⚙️ XML-based Spring configuration
- 🔁 Transactional session management with Hibernate

---

## 🛠️ Tech Stack

| Layer           | Technology                     |
|----------------|---------------------------------|
| Backend         | Java, Spring MVC, Hibernate    |
| Frontend        | JSP, JSTL, Bootstrap           |
| Database        | MySQL                          |
| ORM             | Hibernate                      |
| Build Tool      | Maven                          |
| Connection Pool | c3p0                           |
| Server          | Apache Tomcat                  |

---

## 🗂️ Project Structure

```
src/
└── com.spring
    ├── controller         # PlayerController
    ├── dao                # PlayerDAO, PlayerDAOImpl
    ├── model              # Player.java
    ├── service            # PlayerService, PlayerServiceImpl

WebContent/
├── WEB-INF/
│   ├── lib/               # External JARs
│   ├── view/              # JSP pages (addPlayer.jsp, fifa-players.jsp)
│   ├── spring-container.xml
│   └── web.xml
├── resources/
│   └── css/mystyle.css

```

---

## 🧪 How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/abanoubwagim/Player.git
   cd Player
   ```

2. Import into **Eclipse** or **IntelliJ** as a Maven project.

3. Configure your MySQL database:
   - Create a schema named `player`
   - The table will be created automatically by Hibernate

4. Update `spring-container.xml` with your DB username/password if needed.

5. Deploy the project to **Apache Tomcat** server.

6. Open your browser:

   ```
   http://localhost:8081/Player/
   ```

   This will redirect to:

   ```
   http://localhost:8081/Player/fifa/players
   ```

---

## 📸 Video

[Watch the Demo](https://github.com/user-attachments/assets/2f7f059e-5c54-4e96-a638-40f97020aeb7)

---

## 📄 License

This project is open-source and free to use under the MIT License.
