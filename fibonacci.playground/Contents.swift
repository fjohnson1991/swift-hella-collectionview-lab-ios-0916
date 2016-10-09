//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var fibonacciNumArray: [Int] = [0,1,1]

func findFibonacciNum(){
    while fibonacciNumArray.count < 90 {
        var count = fibonacciNumArray.count
        let lastNumIndex = count - 1
        let secondToLastNumIndex = count - 2
        let secondToLastNum = fibonacciNumArray[secondToLastNumIndex]
        let lastNum = fibonacciNumArray[lastNumIndex]
        let newNum = secondToLastNum + lastNum
        fibonacciNumArray.append(newNum)
        print(newNum)
        count += 1
    }
}

findFibonacciNum()

