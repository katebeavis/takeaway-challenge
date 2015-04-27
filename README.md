[![Code Climate](https://codeclimate.com/github/katebeavis/takeaway-challenge/badges/gpa.svg)](https://codeclimate.com/github/katebeavis/takeaway-challenge) [![Test Coverage](https://codeclimate.com/github/katebeavis/takeaway-challenge/badges/coverage.svg)](https://codeclimate.com/github/katebeavis/takeaway-challenge) [![Build Status](https://travis-ci.org/Dinnr-Makers/Dinnr.svg?branch=master)](https://travis-ci.org/Dinnr-Makers/Dinnr)
# Takeaway Challenge

The Airport challenge was the second weekend challenge at Makers Academy.

We were briefed that we had to create a takeaway program with the following functionality:
- list of dishes with prices
- The ability to place an order by giving a list of dishes, their quantities and a number that should be the exact total.
- If the number given does not match the total the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now.
- Text sending functionality implemented using Twilio API.

### Objectives
---------
To understand the single responsibilty principle and how gems can be used to add functionality to a program.

### Technology
- Ruby
- Twilio
- Rspec

### To Run
```
$ git clone https://github.com/katebeavis/takeaway-challenge.git
$ cd takeway-challenge
$ irb
    > Dir['./lib/*.rb'].each {|file| require file }
```

### To Run Tests
```
$ rspec
```

