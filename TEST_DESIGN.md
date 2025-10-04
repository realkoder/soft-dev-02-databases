# Test Design for munchora-server-relational-db

This document outlines the design techniques and testing process
for the **_Munchora_** application.

The core functionalities of **_Munchora_** have been prioritized
to achieve high test coverage, which will include:

- **MODELS**
    - _GroceryList_
    - _GroceryListItem_
    - _GroceryListShare_
    - _User_
- **Requests**
    - _auth_controller_
    - _grocery_lists_controller_
    - _users_controller_
- **Services**
    - _**grocery_lists**_
        - _creator_
        - _item_manager_
        - _sharer_

---

<br>

# Black Box Design Techniques

## User model

### Equivalence Partitions

|                | Partition Types | Boundary Values                                            | Test case Values                                                                     |
|----------------|-----------------|------------------------------------------------------------|--------------------------------------------------------------------------------------|
| **email**      | invalid         | length < 6, length > 100                                   | "a@b", "aaa", "@ex.com", "a"*101 + "@example.com"                                    |
|                | invalid         | bad format                                                 | "plainaddress", "@missinguser.com", "user@.com", "user@com,com", "user@exa mple.com" |
|                | valid           | length >= 6 _AND_ length <= 100                            | "a@d.dk", "user@test.com", "msgme@mail.dk"                                           |
|                |                 |                                                            |                                                                                      |
| **first_name** | invalid         | length < 2, length > 40                                    | "J", "A"*41                                                                          |
|                | valid           | length >= 2 _AND_ length <= 40                             | "John", "Marie"                                                                      |
|                |                 |                                                            |                                                                                      |
| **last_name**  | invalid         | length < 2, length > 40                                    | "J", "A"*41                                                                          |
|                | valid           | length >= 2 _AND_ length <= 40                             | "Doe", "Brink"                                                                       |
|                |                 |                                                            |                                                                                      |
| **bio**        | invalid         | length > 2_000                                             | "I like AI food"*145                                                                 |
|                | valid           | null _OR_ length <= 2_000                                  | "I like to cook with AI"                                                             |
|                |                 |                                                            |                                                                                      |
| **uid**        | invalid         | length > 100                                               | "u"x101                                                                              |
|                | valid           | null _OR_  length <= 100                                   | "", "xoheuif3qr3"                                                                    |
|                |                 |                                                            |                                                                                      |
| **provider**   | invalid         | length > 100                                               | "a"x101                                                                              |
|                | valid           | null _OR_ length <= 100                                    | "apple", "google"                                                                    |
|                |                 |                                                            |                                                                                      |
| **password**   | invalid         | length < 6, length > 50                                    | "psw", "s"x51                                                                        |
|                | valid           | length >= 6 _AND_ length <= 50                             |                                                                                      |
|                |                 |                                                            |                                                                                      |
| **image_src**  | invalid         | length < 6, length > 400, invalid URL                      | "a.com", "A"*401 + ".com", "invalid_url"                                             |
|                | valid           | length >= 6 _AND_ length <= 400 _AND_ valid HTTP/HTTPS URL | "http://a.co", "https://" + "a"*393 + ".com"                                         |

---

### 3-value Boundary Value Analyse

| Field          | Boundary Condition                              | Boundary Values          | 3 Test Case Values (below, on, above)                                             |
|----------------|-------------------------------------------------|--------------------------|-----------------------------------------------------------------------------------|
| **email**      | min length = 4, max length = 100                | 4, 100                   | `"a@b"` (3), `"a@b1"` (4), `"a"*101 + "@x.com"` (101)                             |
|                | format constraint                               | must match `URI::MailTo` | `"plainaddress"`, `"a@b1.com"`, `"a@b@b.com"`                                     |
| **first_name** | min length = 2, max length = 40                 | 2, 40                    | `"J"` (1), `"Jo"` (2), `"A"*41` (41)                                              |
| **last_name**  | min length = 2, max length = 40                 | 2, 40                    | `"D"` (1), `"Do"` (2), `"B"*41` (41)                                              |
| **bio**        | max length = 2000                               | 2000                     | `"A"*1999`, `"A"*2000`, `"A"*2001`                                                |
| **uid**        | no explicit min, assume max = 100 (for realism) | 100                      | `"A"*99`, `"A"*100`, `"A"*101`                                                    |
| **provider**   | no explicit min, assume max = 100 (for realism) | 100                      | `"a"*99`, `"a"*100`, `"a"*101`                                                    |
| **password**   | min length = 6, max length = 50                 | 6, 50                    | `"12345"` (5), `"123456"` (6), `"A"*51` (51)                                      |
| **image_src**  | min length = 6, max length = 400                | 6, 400                   | `"a.com"` (5), `"http://a.co"` (~6), `"https://" + "a"*393 + ".com"` (400+ valid) |

---

## Decision table

| **User model**                  | **R1**        | **R2**        | **R3**        | **R4**        | **R5**       | **R6**       | **R7**       | **R8**       | **R9**       | **R10**      |
|---------------------------------|---------------|---------------|---------------|---------------|--------------|--------------|--------------|--------------|--------------|--------------|
| **Conditions**                  |               |               |               |               |              |              |              |              |              |              |
| Email valid?                    | F             | T             | F             | T             | —            | —            | —            | —            | —            | —            |
| Password valid?                 | F             | T             | F             | T             | —            | —            | —            | —            | —            | —            |
| First name valid?               | T             | F             | T             | T             | T            | F            | T            | T            | F            | T            |
| Last name valid?                | T             | T             | F             | T             | T            | F            | T            | F            | T            | T            |
| Provider present?               | F             | F             | F             | F             | T            | T            | T            | T            | T            | T            |
| UID present?                    | F             | F             | T             | T             | F            | F            | T            | T            | T            | T            |
| Image_src valid?                | T             | T             | T             | T             | T            | T            | T            | T            | F            | F            |
| Bio valid?                      | T             | T             | T             | T             | T            | T            | T            | T            | T            | F            |
| **Expected Validation Context** | Manual signup | Manual signup | Manual signup | Manual signup | OAuth signup | OAuth signup | OAuth signup | OAuth signup | OAuth signup | OAuth signup |
| **Actions**                     |               |               |               |               |              |              |              |              |              |              |
| User created (valid)?           | ❌             | ❌             | ❌             | ✅             | ❌            | ❌            | ✅            | ❌            | ❌            | ❌            |

---

##

---

<br>

# White Box Design Techniques
