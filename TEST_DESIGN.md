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

|                | Partition Types | Boundary Values             | Test case Values                                                                                                 |
|----------------|-----------------|-----------------------------|------------------------------------------------------------------------------------------------------------------|
| **email**      | invalid         | 0 - 6 _(string length)_     | `'t.d'`,                                                                                                         |
|                | valid           | 6 - 100 _(string length)_   | `'johnUser_232@test.dk'`,                                                                                        |
|                | invalid         | \> 100  _(string length)_   | `'a'*200 + '@example.com'`                                                                                       |
|                |                 |                             |                                                                                                                  |
| **first_name** | valid           | 2 - 60 _(string length)_    | `Maximilian`,                                                                                                    |
|                | invalid         | \> 60 _(string length)_     | `'A' * 200`                                                                                                      |
|                |                 |                             |                                                                                                                  |
| **last_name**  | valid           | 2 - 60 _(string length)_    | `Wolfeschlegelsteinhausenbergerdorff`,                                                                           |
|                | invalid         | \> 60 _(string length)_     | `'A' * 200`                                                                                                      |
|                |                 |                             |                                                                                                                  |
| **bio**        | valid           | 0 - 2_000 _(string length)_ | `'I like AI food'*15`                                                                                            |
|                | invalid         | 2_000 < _(string length)_   | `'I like to cook with AI'*500`                                                                                   |
|                |                 |                             |                                                                                                                  |
| **uid**        | valid           | 0 - 100 _(string length)_   | `'u'x950`                                                                                                        |
|                | invalid         | \> 100 _(string length)_    | null `xoheuif3qr3`                                                                                               |
|                |                 |                             |                                                                                                                  |
| **provider**   | valid           | 0 - 100 _(string length)_   | `'a'x101`                                                                                                        |
|                | invalid         | \> 100 _(string length)_    | `apple`, `google`                                                                                                |
|                |                 |                             |                                                                                                                  |
| **password**   | invalid         | 0 - 6 _(string length)_     | `psw`, `'s'x51`                                                                                                  |
|                | valid           | 6 - 50 _(string length)_    | `Myp$W3`, `superSecPsw!a31b`                                                                                     |
|                | invalid         | \> 50 _(string length)_     |                                                                                                                  |
|                |                 |                             |                                                                                                                  |
| **image_src**  | invalid         | 0 - 14 _(string length)_    | `a.com`, `'A'*401 + '.com'`, `invalid_url`                                                                       |
|                | valid           | 14 - 400 _(string length)_  | `http://site.co/img`, `https://munchora.pro/uploads/recipes/1.jpg`, `'http://site.com/file/' + 'a'*393 + '.com'` |
|                | invalid         | \> 400 _(string length)_    | `http://site.co/img`, `https://munchora.pro/uploads/recipes/1.jpg`, `'http://site.com/file/' + 'a'*393 + '.com'` |

---

### 3-value Boundary Value Analyse

| Field          | Boundary Condition                              | Boundary Values | 3 Test Case Values (below, on, above)                                                            |
|----------------|-------------------------------------------------|-----------------|--------------------------------------------------------------------------------------------------|
| **email**      | 0 - 6 _(string length)_                         | 0               | `''`, `'t'`                                                                                      |
|                | 6 - 100 _(string length)_                       | 6               | `'u@t.d'`, `'u@t.dk'`, `'u1@t.dk'`                                                               |
|                | 6 - 100 _(string length)_                       | 100             | `'a'*87 + '@example.com' (99)`, `'a'*88 + '@example.com' (100)`, `'a'@89 + '@example.com' (101)` |
|                |                                                 |                 |                                                                                                  |
| **first_name** | 0 - 2                                           | 0               | `''`, `O`                                                                                        |
|                | 2 - 60 _(string length)_                        | 2               | `O`, `Li`, `'Lee'`                                                                               |
|                | 2 - 60 _(string length)_                        | 60              | `'A'*59`,`'A'*60`, `'A'*61`                                                                      |
|                |                                                 |                 |                                                                                                  |
| **last_name**  | 0 - 2                                           | 0               | `''`, `J`                                                                                        |
|                | 2 - 60 _(string length)_                        | 2               | `J`, `Jo`, `'Joe'`                                                                               |
|                | 2 - 60 _(string length)_                        | 60              | `'A'*59`,`'A'*60`, `'A'*61`                                                                      |
|                |                                                 |                 |                                                                                                  |
| **bio**        | 0 - 2_000 _(string length)_                     | 0               | `''`, `'a'`                                                                                      |
|                | 0 - 2_000 _(string length)_                     | 2000            | `'a'*1_999`,, `'a'*2_000`, `'a'*2_001`                                                           |
|                |                                                 |                 |                                                                                                  |
| **uid**        | no explicit min, assume max = 100 (for realism) | 100             | `'A'*99`, `'A'*100`, `'A'*101`                                                                   |
| **provider**   | no explicit min, assume max = 100 (for realism) | 100             | `'a'*99`, `'a'*100`, `'a'*101`                                                                   |
| **password**   | min length = 6, max length = 50                 | 6, 50           | `12345` , `123456` , `'A'*51`                                                                    |
| **image_src**  | min length = 14, max length = 400               | 6, 400          | `a.com` , `http://a.co`, `'https://' + 'a'*393 + '.com'`                                         |

---

## Edge Cases

| Field          | Format                         | Test Case Value                                                                              |
|----------------|--------------------------------|----------------------------------------------------------------------------------------------|
| **email**      | `URI - :mailto`                | `null`, `plainaddress`, `@missinguser.com`, `user@.com`, `user@com,com`, `user@exa mple.com` |
| **first_name** | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **last_name**  | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **bio**        | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **uid**        | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **provider**   | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **password**   | `UTF-8 encoded Unicode` string | `wrong data types`                                                                           |
| **image_src**  | `URI - :http/https`            | `a.com`, `http://a.co`, `'https://' + 'a'*393 + '.com'`                                      |

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
