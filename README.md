# 🔎 Seeker - Search System

🚀 **Seeker** is a modern search platform that allows users to find **names, numbers, and images** efficiently. It features **real-time searching** using AJAX and MySQL, ensuring a **smooth user experience** without page reloads.

---

## 📌 Features

- ✅ **Live Search**: Results appear instantly without reloading the page.
- ✅ **Search by Name & Number**: Users can search using **names** or **phone numbers**.
- ✅ **Image Preview**: Displays associated profile pictures in search results.
- ✅ **MySQL Database**: Stores search data securely.
- ✅ **AJAX Integration**: Ensures fast, interactive searching.
- ✅ **Modern UI**: Clean and responsive design.

---

## 📸 System Workflow

```mermaid
graph TD;
    User["🧑‍💻 User"] -->|Types query| SearchBox["🔍 Search Input"]
    SearchBox -->|Sends request via AJAX| Server["🌐 search.php"]
    Server -->|Fetches from MySQL| Database["🗄️ MySQL"]
    Database -->|Returns matching results| Server
    Server -->|Sends JSON response| Browser["🖥️ Display Results"]
    Browser -->|Updates UI| Results["📋 Search Results"]
