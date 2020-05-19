### [Makers Academy](http://www.makersacademy.com) - Week 7 Process review

# Bank

#### Technologies: Ruby, RSpec, HTML, CSS 

[Task](#Task) | [User Stories](#User_Stories) | [Inputs & Outputs](#Inputs_&_Outputs) | [Methods](#Methods) | [Acceptance criteria](#Acceptance_criteria)

## <a name="Task">The Task</a>

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
* Account balance printing

## <a name="User_Stories">User Stories</a>
```
As a user,
So I can contirbute to my account,
I would like to be able to make a deposit
```
```
As a user,
So I can obtain money from my account,
I would like to able to make a withdrawal
```
```
As a user,
To get details about my account,
I would like to print an account statement containing date, amount, balance
```
```
As a user,
To see how much money I have in my account,
I would like to be able to print a current balance
```

## <a name="Inputs_&_Outputs">Inputs & Outputs</a>

| Input   | Output  | 
| ------- | ------- | 
| Account.new |  PrintBalance should return Current Balance: £0.00 |
| Account.new | PrintStatement should print "date || credit || debit || balance" |
| Account.desposit(1, 01/01/2020) |  PrintBalance should return 1.00, |
| Account.desposit(1, 01/01/2020) |  PrintStatement should print "date || credit || debit || balance /n 01/01/2020 || 1.00 || || 1.00" |
| Account.desposit(1, 02/01/2020) |  PrintBalance should return 2.00, |
| Account.desposit(1, 02/01/2020) |  PrintStatement should print "date || credit || debit || balance /n 02/01/2020 || 1.00 || || 2.00 /n 01/01/2020 || 1.00 || || 1.00" |
| Account.withdraw(1, 03/01/2020) |  PrintBalance should return 1.00, |
| Account.withdraw(1, 03/01/2020) |  PrintStatement should print "date || credit || debit || balance /n 03/01/2020 || || 1.00 || 1.00 /n 02/01/2020 || 1.00 || || 2.00 /n 01/01/2020 || 1.00 || || 1.00" |



## <a name="Methods">Objects & Methods</a>

For the user stories I created a domain model for each object, including attributes and behaviour:

| Object: | Account | 
| ------- | ------- | 
| **Attributes:** |  statement (date, credit, debit, balance), balance |
| **Method:** | PrintStatement |
| **Method:** | PrintBalance |
| **Method:** | Deposit |  
| **Method:** | Withdrawal |  

## <a name="Acceptance_criteria">Acceptance criteria</a>

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```


**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank balance  
**Then** she would see

```
Current Balance: £2500.00
```
