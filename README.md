# Dart OOP Assignment: Kigali Bus Card

**Name:** Ishimwe Christian Shema  
**Student ID:** 26243/2024

## My numbers
- D = 43
- L = 3
- Starting balance = 1430 RWF
- Bus fare = 243 RWF
- Student discount = 13%

## Output of main.dart
```text
--- BUS CARD ---
Error: name too short
Owner: Ama | Balance: 1430 RWF
Owner: Ishimwe Christian Shema | Balance: 1430 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 243 RWF
Paid 243 RWF
Owner: Ishimwe Christian Shema | Balance: 2944 RWF
--- STUDENT CARD ---
Student discount: 31 RWF
Paid 212 RWF
Owner: Ishimwe Christian Shema | Balance: 1218 RWF
Student card: 13% off
```

## Part 1: Why no setter for balance?
There is no setter for balance because people should not change the balance directly. They should use topUp() and pay() so the program can check the amount and protect the money.

## Part 2: What does ~/ do?
The `~/` operator divides and gives a whole-number result. `/` gives a decimal result. For example, `237 * 17 / 100` gives `40.29`, while `237 * 17 ~/ 100` gives `40`.

## Part 4: Bug table
| Bug | The line/problem | Why it is wrong | Fix |
|---|---|---|---|
| 1 | `_brand` and `_battery` have no starting values | Non-nullable fields must be initialized | Give them starting values |
| 2 | SmartPhone constructor does not call the Phone constructor | The parent fields are not initialized | Add `: super(brand, battery)` |
| 3 | `@override` is used for `restart()` but Phone has no `restart()` method | A method can only override a parent method | Add `restart()` to Phone |
| 4 | `p.battery = 100` has no setter | The battery cannot be changed | Add a setter that accepts 0 to 100 |
| 5 | `print(p.battery())` | A getter is not a method and should not use brackets | Use `print(p.battery)` |

**Not a bug:** `Phone p = new Phone('Tecno', 50);` is correct. The `new` keyword is allowed when creating an object in Dart.

The fixed bug hunt program prints:
```text
100
```

## Part 5: Prediction the output

**My prediction:**

1
5


**Why:** The first Bag adds one item. Setting its items to -5 is refused because the setter accepts only values greater than or equal to zero. BigBag adds two items each time, so two calls make 4, and adding 1 more makes 5.

**Real output:**
```text
1
5
```

**Was I right?** Yes, my prediction was correct.
