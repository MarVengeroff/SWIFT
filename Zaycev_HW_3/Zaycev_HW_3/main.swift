//
//  main.swift
//  Zaycev_HW_3
//
//  Created by Mar Vengeroff on 14/04/2022.
//  Copyright © 2022 Konstantin_Zaytsev. All rights reserved.
//

import Foundation

print("Hello, World! НomeWork 3!")


//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//6. Вывести значения свойств экземпляров в консоль.


//MARK: - Enums

/// Состояние двигателя
enum EngineState {
    case start, stop
}

/// Состояние окон
enum WindowState {
    case open, close
}

/// Состояние багажного отдела
enum TrunkState {
    case full, empty
}

//MARK: - SportCar

struct SportCar {
    var brand : String
    let model : String
    var color : String
    mutating func ChangeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "blue"
        case "brown":
            self.color = "brown"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var TrunkVolume : Double {
        willSet {
            if (TrunkState == .empty) && (TrunkVolume > 0) && (TrunkVolume != 0) && (newValue < TrunkVolume) {
                let space = TrunkVolume - newValue
                print ("\(brand) \(model) trunk free: \(space)")
            } else { print("Input error or \(brand) \(model) trunk is full.")}
        }
    }
    
    
    var EngineState : EngineState {
        willSet {
            if newValue == .start {
                print ("\(brand) \(model) engine is on")
            } else {print("\(brand) \(model) engine is off")}
        }
    }
    var WindowState : WindowState {
        willSet {
            if newValue == .open {
                print("\(brand) \(model) windows are open")
            } else { print("\(brand) \(model) windows are close") }
        }
    }
    var TrunkState : TrunkState
    mutating func EmptyTrunck() {
        self.TrunkState = .empty
        print ("\(brand) \(model) trunck is empty")
    }


init(brand: String, model: String, color: String, release: Int, TrunkVolume: Double, EngineState : EngineState, WindowState : WindowState, TrunkState : TrunkState) {
    self.brand = brand
    self.model = model
    self.color = color
    self.release = release
    self.TrunkVolume = TrunkVolume
    self.EngineState = EngineState
    self.WindowState = WindowState
    self.TrunkState = TrunkState

    }
}


//MARK: - Truck

struct Truck {
    let brand : String
    let model : String
    var color : String
    mutating func ChangeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "blue"
        case "brown":
            self.color = "brown"
        default:
            print("Input error.")
        }
    }
    let release : Int
    var BodyVolume : Double {
        willSet {
            if (TrunkState == .empty) && (BodyVolume > 0) && (BodyVolume != 0) && (newValue < BodyVolume) {
                let space = BodyVolume - newValue
                print ("\(brand) \(model) trunk free: \(space)")
            } else { print("Input error or \(brand) \(model) trunk is full.")}
        }
    }
    var EngineState : EngineState {
        willSet {
            if newValue == .start {
                print ("\(brand) \(model) engine is on")
            } else {print("\(brand) \(model) engine is off")}
        }
    }
    var WindowState : WindowState {
        willSet {
            if newValue == .open {
                print("\(brand) \(model) windows are open")
            } else { print("\(brand) \(model) windows are close") }
        }
    }
    var TrunkState : TrunkState
    mutating func emptyTrunck() {
        self.TrunkState = .empty
        print ("\(brand) \(model) trunck is empty")
    }
}

    

var CarOne = SportCar(brand: "111", model: "Karoq", color: "clear", release: 2020, TrunkVolume: 480.0 , EngineState: .stop, WindowState: .open, TrunkState: .empty)
var CarTwo = SportCar(brand: "Skoda", model: "Kodiaq", color: "clear", release: 2020, TrunkVolume: 580.0, EngineState: .stop, WindowState: .close, TrunkState: .full)

var TruckOne = Truck(brand: "MAN", model: "Rock", color: "clear", release: 2012, BodyVolume: 100000.0, EngineState: .start, WindowState: .open, TrunkState: .full)
var TruckTwo = Truck(brand: "Mercedes-Benz", model: "Bird", color: "clear", release: 2013, BodyVolume: 150000.0, EngineState: .start, WindowState: .close, TrunkState: .empty)

CarOne.brand = "Skoda"
CarOne.EngineState = .start
CarOne.TrunkVolume = 340.0
CarOne.ChangeColor(c: "brown")
CarOne.TrunkVolume = 890.0
CarTwo.EmptyTrunck()
CarTwo.TrunkVolume = 80.9
CarTwo.WindowState = .open
CarTwo.ChangeColor(c: "black")

TruckOne.EngineState = .stop
TruckOne.WindowState = .close
TruckTwo.EngineState = .stop
TruckTwo.BodyVolume = 15000


//MARK: - Print
    print ("Information about the first car: brand&model: \(CarOne.brand) \(CarOne.model), release: \(CarOne.release), color: \(String(describing: CarOne.color)), free TrunkVolume: \(CarOne.TrunkVolume), engine is \(CarOne.EngineState)")


