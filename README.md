
# Change Maker

## Getting Started

To run the app, use the following command accompanied with the value you would like to break:

`rake make_change_for[32]`

## Instructions

### The point of this exercise is to create a change maker. That is, given any amount of cents
### the code will return an array with the minimum amount of coins that add up to the required amount.
### The array should be arranged from highest to lowest value coin.
###
### A working version will provide the output specified below:
### Change.make(26) => [25,1]
### Change.make(24) => [10,10,1,1,1,1]
### Change.make(49) => [25, 10, 10, 1, 1, 1, 1]
### Change.make(0) => []
### Change.make(26, [10, 25, 1, 5]) => [25, 1]
### Change.make(14, [10, 7, 1]) => [7, 7]
###
### Please make use of the Ruby api doc and irb to help you solve the problem.