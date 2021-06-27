#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
 digit = '0' * 5
 
 isPositive = 0
 isNegative = 0
 isZero = 0
 
 arr.each do | item |
  if item.negative? then
   isNegative += 1
  elsif item.positive? then
   isPositive += 1
  else 
   isZero += 1
  end
 end
 
 isPositive = isPositive.to_f / arr.length
 isNegative = isNegative.to_f / arr.length
 isZero = isZero.to_f / arr.length
 
 splitPositiveNumber = isPositive.to_s.split('')
 splitNegativeNumber = isNegative.to_s.split('')
 splitZeroNumber = isZero.to_s.split('')


 
 if splitPositiveNumber.length == 2 then
  isPositive = isPositive.to_s + digit
 elsif splitPositiveNumber.length > 6 then
  isPositive = isPositive.round(6)
 elsif splitNegativeNumber.length == 2 then
  isNegative = isNegative.to_s + digit
 elsif splitNegativeNumber.length > 6 then
  isNegative = isNegative.round(6)
 end
 
 if splitZeroNumber.length > 6 then
  isZero = isZero.round(6)
 elsif splitZeroNumber.length == 2 then
  isZero = isZero.to_s + digit
 end
 
 puts isPositive
 puts isNegative
 puts isZero
 
end
