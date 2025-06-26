# REST, HTTP, Headers, and Dart Asynchronous Concepts

---

## 1. REST Protocol Explanation

**REST (Representational State Transfer)** is an architectural style for designing networked applications.

### 🔑 Key Principles:
- **Stateless**: Each request contains all the information needed.
- **Client-Server**: Separation of concerns between client and server.
- **Cacheable**: Responses can be cached for efficiency.
- **Uniform Interface**: A consistent way to interact with resources.
- **Layered System**: Architecture can include multiple layers for security, load balancing, etc.

> REST uses **HTTP** as the underlying protocol and treats everything as a **resource**.
Resources are identified using **URLs (Uniform Resource Locators)**.

---

## 2. HTTP Methods Explanation

**HTTP Methods (also called HTTP Verbs)** define actions on resources:

| Method | Description                    | Characteristics                        | Example                                      |
|--------|--------------------------------|----------------------------------------|----------------------------------------------|
| `GET`  | Retrieve data (Read)           | Safe, Idempotent                       | `GET /api/users?page=1&limit=10`             |
| `POST` | Create new data                | Not Idempotent                         | `POST /api/users` (with data in body)        |
| `PUT`  | Update entire resource         | Idempotent                             | `PUT /api/users/123` (replaces entire user)  |
| `PATCH`| Partial update of a resource   | Idempotent                             | `PATCH /api/users/123` (updates some fields) |
| `DELETE`| Remove a resource             | Idempotent                             | `DELETE /api/users/123`                      |

---

## 3. Headers and Authentication

### HTTP Headers

Headers provide metadata about the request or response.

#### Common Headers:
- `Content-Type`: `application/json`
- `Authorization`: `Bearer <token>`
- `Accept`: `application/json`
- `User-Agent`: Client identification
- `Cache-Control`: Caching instructions

### Authentication Types

1. **API Key**: A simple key passed in headers or query params.
2. **Bearer Token**: Usually a JWT or OAuth token.
3. **Basic Auth**: `username:password` encoded in Base64.
4. **OAuth**: A more advanced delegated authentication system.

---

## 4. Future and Await in Dart

### Future

- Represents a value or error available at a **later time**.
- Used for **asynchronous operations**, like API calls.
  
- Can be:
- **Uncompleted**
- **Completed with data**
- **Completed with an error**

### Await

- Keyword used to **pause execution** until the `Future` completes.
- Can **only be used inside `async` functions**.
- Makes asynchronous code look like synchronous code.

### Example Flow

1. Function calls API → returns a `Future`.
2. `await` waits for the `Future` to complete.
3. Function continues with the result.

```dart
Future<String> fetchData() async {
final response = await http.get(Uri.parse('https://example.com/data'));
return response.body;
}
