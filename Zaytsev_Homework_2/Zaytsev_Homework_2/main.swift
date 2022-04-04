//
//  main.swift
//  Zaytsev_Homework_2
//
//  Created by Mar Vengeroff on 31/03/2022.
//  Copyright © 2022 Mar Vengeroff. All rights reserved.
//

import Foundation

print("Hello, World!")

// First program (even - четное, odd - нечетное)
print("1. First program - even or odd?")

func isEven(value: Int) -> String   {
    value % 2 == 0 ? "even" : "odd"
}

print(isEven(value: 4))


// Second program (Simple Division)
print("2. Second program - simple division?")

func SimplDiv(value: Int) -> Bool {
    value % 3 == 0 ? true : false
}
    print(SimplDiv(value: 9))


// Third program (Array_100)
print("3. Third program - Array")

var Array: [Int] = []  // пустой массив


for i in 0...100 {
Array.append(i)
}
print(Array)

// Fourth program
print("4. Fourth programm - Filter")

var NumFilt = Array.filter({ $0 % 2 == 0 })

print(NumFilt.filter({ $0 % 3 == 0 }))
