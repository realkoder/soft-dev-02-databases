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

|                | Partition Types | Boundary Values             | Test case Values                                          |
|----------------|-----------------|-----------------------------|-----------------------------------------------------------|
| **email**      | invalid         | 0 - 6 _(string length)_     | `'t.d'`,                                                  |
|                | valid           | 6 - 100 _(string length)_   | `'johnUser_232@test.dk'`,                                 |
|                | invalid         | \> 100  _(string length)_   | `'a'*200 + '@example.com'`                                |
|                |                 |                             |                                                           |
| **first_name** | valid           | 2 - 60 _(string length)_    | `Maximilian`,                                             |
|                | invalid         | \> 60 _(string length)_     | `'A' * 200`                                               |
|                |                 |                             |                                                           |
| **last_name**  | valid           | 2 - 60 _(string length)_    | `Wolfeschlegelsteinhausenbergerdorff`,                    |
|                | invalid         | \> 60 _(string length)_     | `'A' * 200`                                               |
|                |                 |                             |                                                           |
| **bio**        | valid           | 0 - 2_000 _(string length)_ | `'I like AI food'*15`                                     |
|                | invalid         | \> 2_000 _(string length)_  | `'I like to cook with AI'*500`                            |
|                |                 |                             |                                                           |
| **uid**        | valid           | 0 - 100 _(string length)_   | `xoheuif3qr3`                                             |
|                | invalid         | \> 100 _(string length)_    | `'u'*450`                                                 |
|                |                 |                             |                                                           |
| **provider**   | valid           | 0 - 40 _(string length)_    | `apple`                                                   |
|                | invalid         | \> 40 _(string length)_     | `'a'*100`                                                 |
|                |                 |                             |                                                           |
| **password**   | invalid         | 0 - 6 _(string length)_     | `psw`,                                                    |
|                | valid           | 6 - 50 _(string length)_    | `superSecPsw!a31b_qwe0#`                                  |
|                | invalid         | \> 50 _(string length)_     | `'p'*100`                                                 |
|                |                 |                             |                                                           |
| **image_src**  | invalid         | 0 - 14 _(string length)_    | `http://s.d`,                                             |
|                | valid           | 14 - 400 _(string length)_  | `https://munchora.pro/uploads/recipes/3r93xhue938383.jpg` |
|                | invalid         | \> 400 _(string length)_    | `'http://img.dk/uploads/' + 'x'*778 (800)`                |

---

### 3-value Boundary Value Analyse

| Field          | Boundary Condition          | Boundary Values | 3 Test Case Values (below, on, above)                                                                                                      |
|----------------|-----------------------------|-----------------|--------------------------------------------------------------------------------------------------------------------------------------------|
| **email**      | 0 - 6 _(string length)_     | 0               | `''`, `'t'`                                                                                                                                |
|                | 6 - 100 _(string length)_   | 6               | `'u@t.d'`, `'u@t.dk'`, `'u1@t.dk'`                                                                                                         |
|                | 6 - 100 _(string length)_   | 100             | `'a'*87 + '@example.com' (99)`, `'a'*88 + '@example.com' (100)`, `'a'@89 + '@example.com' (101)`                                           |
|                |                             |                 |                                                                                                                                            |
| **first_name** | 0 - 2                       | 0               | `''`, `O`                                                                                                                                  |
|                | 2 - 60 _(string length)_    | 2               | `O`,  `Li`, `'Lee'`                                                                                                                        |
|                | 2 - 60 _(string length)_    | 60              | `'A'*59`, `'A'*60`, `'A'*61`                                                                                                               |
|                |                             |                 |                                                                                                                                            |
| **last_name**  | 0 - 2                       | 0               | `''`, `J`                                                                                                                                  |
|                | 2 - 60 _(string length)_    | 2               | `J`, `Jo`, `'Joe'`                                                                                                                         |
|                | 2 - 60 _(string length)_    | 60              | `'A'*59`, `'A'*60`, `'A'*61`                                                                                                               |
|                |                             |                 |                                                                                                                                            |
| **bio**        | 0 - 2_000 _(string length)_ | 0               | `''`, `'a'`                                                                                                                                |
|                | 0 - 2_000 _(string length)_ | 2000            | `'a'*1_999`, `'a'*2_000`, `'a'*2_001`                                                                                                      |
|                |                             |                 |                                                                                                                                            |
| **uid**        | 0 - 100 _(string length)_   | 0               | `''`, `'a'`                                                                                                                                |
|                | 0 - 100 _(string length)_   | 100             | `'a'*99`, `'a'*100`, `'a'*101`                                                                                                             |
|                |                             |                 |                                                                                                                                            |
| **provider**   | 0 - 40 _(string length)_    | 0               | `''`, `'u'`                                                                                                                                |
|                | 0 - 40 _(string length)_    | 40              | `'u'*39`, `'u'*40`, `'u'*41`                                                                                                               |
|                |                             |                 |                                                                                                                                            |
| **password**   | 0 - 6 _(string length)_     | 0               | `'',  `'p'`                                                                                                                                |
|                | 6 - 50 _(string length)_    | 6               | `'secpw'`, `'secpsw'`, `'secpswd'`                                                                                                         |
|                | 6 - 50 _(string length)_    | 50              | `'p'*49`, `'p'*50`, `'p'*51`                                                                                                               |
|                |                             |                 |                                                                                                                                            |
| **image_src**  | 0 - 14 _(string length)_    | 0               | `''`, `'h'`                                                                                                                                |
|                | 14 - 400 _(string length)_  | 14              | `'http://img.dk' (13)`, `'http://img.dk/' (14)`, `'http://img.dk/1' (15)`                                                                  |
|                | 14 - 400 _(string length)_  | 400             | `'http://img.dk/uploads/' + 'x'*377 (399)`,<br/>`'http://img.dk/uploads/' + 'x'*378 (400)`,<br/>`'http://img.dk/uploads/' + 'x'*379 (401)` |

<br>

---

## Edge Cases

This outlines the field-level test cases for the **User model**, specifying expected formats and example invalid
values to ensure robust validation against **incorrect types**, **malformed emails**, and **invalid URLs**.

| Field          | Format                         | Test Case Value                                                                              |
|----------------|--------------------------------|----------------------------------------------------------------------------------------------|
| **email**      | `URI - :mailto`                | `null`, `plainaddress`, `@missinguser.com`, `user@.com`, `user@com,com`, `user@exa mple.com` |
| **first_name** | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **last_name**  | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **bio**        | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **uid**        | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **provider**   | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **password**   | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **image_src**  | `URI - :http/https`            | `a.com`, `invalid_url`, `http://a.co`, `htp://site.com/uploads/x.jpg`                        |

<br>

---

## Decision table

This table summarizes the key conditions and expected outcomes for **user creation**, covering both _manual signup_
and _OAuth flows_, and highlights which combinations of field validity result in a successful account creation.

| **User model**                  | **R1**        | **R2**        | **R3**        | **R4**        | **R5**       | **R6**       | **R7**       | **R8**       |
|---------------------------------|---------------|---------------|---------------|---------------|--------------|--------------|--------------|--------------|
| **Conditions**                  |               |               |               |               |              |              |              |              |
| Email & names valid?            | F             | T             | F             | T             | F            | T            | F            | T            |
| Password valid?                 | F             | F             | T             | T             | /            | /            | /            | —            |
| Provider & uid present?         | /             | /             | /             | /             | F            | F            | T            | T            |
| Image_src valid?                | /             | /             | /             | /             | /            | /            | /            | /            |
| Bio valid?                      | /             | /             | /             | /             | /            | /            | /            | /            |
| **Expected Validation Context** | Manual signup | Manual signup | Manual signup | Manual signup | OAuth signup | OAuth signup | OAuth signup | OAuth signup |
| **Actions**                     |               |               |               |               |              |              |              |              |
| User created (valid)?           | ❌             | ❌             | ❌             | ✅             | ❌            | ❌            | ❌            | ✅            |

<br>

---

<br>

# White Box Design Techniques
