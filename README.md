### [Makers Academy](http://www.makersacademy.com) - Week 7 Process review

# Bank

#### Technologies: Ruby, RSpec, HTML, CSS 

[Task](#Task) | [Installation Instructions](#Installation) | [Functional Description](#Functional_Description) | [User Stories](#User_Stories) | [Further improvements](#Further_Improvements)

## <a name="Task">The Task</a>

## <a name="Installation">Installation Instructions</a>

## <a name="Functional_Description">Functional Description</a>

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

## <a name="Methods">Objects & Methods</a>

For the user stories I created a domain model for each object, including attributes and behaviour:

| Object: | Account | | | |
| ------- | ------- | - | - | - |
| **Attributes:** | date | amount | balance | TransactionHistory |

| **Methods:** | PrintStatement |

| **Methods:** | PrintBalance |

<br>

| Object: | Deposit | | | |
| ------- | ------- | - | - | - |
| **Methods:** | AddFunds | CreateTransaction |

<br>

| Object: | Withdrawl | | | |
| ------- | ------- | - | - | - |
| **Methods:** | SubtractFunds | CreateTransaction |


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
