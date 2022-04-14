//
//  main.swift
//  Zaytsev_Homework
//
//  Created by Mar Vengeroff on 25/03/2022.
//  Copyright © 2022 Mar Vengeroff. All rights reserved.
//

import Foundation
import Darwin.C.math
import Cocoa
    
// Решить квадратное уравнение.
// ax^2 + bx + c = 0
 
var x1: Double = 0
var x2: Double = 0
var D: Double = 0
 
let a: Double = 1
let b: Double = -12
let c: Double = 36
 
D = b * b - 4 * a * c
 
if D > 0 {
    x1 = (-b - sqrt(D)) / (2 * a)
    x2 = (-b + sqrt(D)) / (2 * a)
    print("2 roots: X1 = \(x1); X2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("1 root: X = \(x1)")
} else {
    print("Has no roots")
}

//Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let cathetA = 3
let cathetB = 4
let square = (Double)(cathetA * cathetB) / 2.0
let hypotenuseC = sqrt((Double)(cathetA * cathetA) + (Double)(cathetB * cathetB))
let perimeter = (Double)(cathetA + cathetB) + hypotenuseC
print("Площадь треугольника равна \(square), периметр треугольника равен \(perimeter), гипотенуза равна \(hypotenuseC)")



//* Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.



let P = Double(350000)    // первоначальная сумма вложений
let I = Double(4.7)     // годовая ставка (процент)
let T = Double(365)    // количество дней вклада
let K = Double(365)   //количество дней в году
let S = (P * I * T / K) / 100   //выплаченные проценты за год
let Y = ((S * 5) * 100).rounded()/100   //Выплаченные проценты за 5 лет
let A = P + Y // Общая сумма вклад + проценты
print ("Сумма процентов за 5 лет: \(Y)")
print ("Общая сумма на вкладе (вместе с процентами) за 5 лет: \(A)")
