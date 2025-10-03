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
| **email**      | invalid         | length < 4, length > 100                                   | "a@b", "aaa", "@ex.com", "a"*101 + "@example.com"                                    |
|                | invalid         | bad format                                                 | "plainaddress", "@missinguser.com", "user@.com", "user@com,com", "user@exa mple.com" |
|                | valid           | length >= 4 _AND_ length <= 100                            | "user@test.com", "msgme@mail.dk"                                                     |
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

|                 | Partitions          | Boundary Values | Test case Values               |
|-----------------|---------------------|-----------------|--------------------------------|
| **CM / Inches** | -MAX DOUBLE - -0.01 | -MAX DOUBLE     | -MAX DOUBLE - -MAX DOUBLE+0.01 |
|                 | -MAX DOUBLE - -0.01 | -0.01           | -0.01 -0.02 0                  |
|                 | 0 - MAX DOUBLE      | 0               | -0.01 0 0.01                   |
|                 | 0 - MAX DOUBLE      | MAX DOUBLE      | MAX DOUBLE MAX DOUBLE-0.01     |

## Decision table

| **Driver License**                | R1 | R2 | R3 | R4 |
|-----------------------------------|----|----|----|----|
| **Conditions**                    |    |    |    |    |
| _Theory ≥ 85_                     | F  | T  | F  | T  |
| _Practical errors ≤ 2_            | F  | F  | T  | T  |
| **Actions**                       |
| _Drivers license granted_         | N  | N  | N  | Y  |
| _Repeat on of the exams_          | N  | Y  | Y  | N  |
| _Take additional driving lessons_ | Y  | N  | N  | N  |

---

##

---

<br>

# White Box Design Techniques
