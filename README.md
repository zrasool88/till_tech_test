# Code Coverage
[![Code Climate](https://codeclimate.com/github/zshnr/till_tech_test/badges/gpa.svg)](https://codeclimate.com/github/zshnr/till_tech_test) [![Test Coverage](https://codeclimate.com/github/zshnr/till_tech_test/badges/coverage.svg)](https://codeclimate.com/github/zshnr/till_tech_test/coverage) [![Build Status](https://travis-ci.org/zshnr/till_tech_test.svg)](https://travis-ci.org/zshnr/till_tech_test)

# Tech Test Description

We want to sell tills to local hipster coffee shop who are finally embracing the 21st century. We need a new till to replace their vintage machines - unfortunately, hipster staff are too cool to learn a new system, so we need you to build something that they will understand.

# Specification

This is what a sample receipt looks like:

![a receipt](/images/receipt.jpg)

## Version 1
- [ ] Receipt must calculate and show correct amount of tax
- [ ] Receipt must show correct line totals
- [ ] Receipt must show correct total

## Version 2

- [ ] Till must be able to take payment
- [ ] Till must be able to calculate correct change
- [ ] Till must be able to handle discounts
  - [ ] 5% discount on orders over $50
  - [ ] 10% discount on muffins

## Version 3

- [ ] Implement UI that can actually be used as a till.

# Usage

# Testing

1. `git clone` the repository
2. Change into the project directory
3. Run `bundle install` to install all dependencies
4. Run `bundle exec rspec` to run the tests
