//
//  main.swift
//  classes
//
//  Created by Tarles Barbosa on 29/06/2023.
//

import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let persons = Person(name: "João", age: 30)
print("Nome: \(persons.name), Idade: \(persons.age)")

struct Point {
    var x: Double
    var y: Double
    
    func distanceToOrigin() -> Double {
        return sqrt(x * x + y * y)
    }
}

let point = Point(x: 3.0, y: 4.0)
let distance = point.distanceToOrigin()
print("Distância até a origem: \(distance)")

class Shape {
    func draw() {
        // Método vazio
    }
}

class Circle: Shape {
    override func draw() {
        print("Desenhando um círculo")
    }
}

let shape = Circle()
shape.draw()

protocol Describable {
    func describe()
}

extension Person: Describable {
    func describe() {
        print("Nome: \(name), Idade: \(age)")
    }
}

let person = Person(name: "Maria", age: 25)
person.describe()

extension Point {
    func isOrigin() -> Bool {
        return x == 0.0 && y == 0.0
    }
}

let point2 = Point(x: 0.0, y: 0.0)
let isOrigin = point2.isOrigin()
print("Está na origem? \(isOrigin)")

protocol Printable {
    var description: String { get }
}

extension Person: Printable {
    var description: String {
        return "Nome: \(name), Idade: \(age)"
    }
}

let person3 = Person(name: "João", age: 30)
print(person3.description)

class Vehicle {
    var numberOfWheels: Int
    
    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
    
    func drive() {
        print("Conduzir o veículo")
    }
}

class Car: Vehicle {
    override func drive() {
        print("Conduzir o carro")
    }
}

let car = Car(numberOfWheels: 4)
car.drive()

protocol AreaCalculable {
    func calculateArea() -> Double
}

struct Circle2: AreaCalculable {
    var radius: Double
    
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}

let circle2 = Circle2(radius: 3.0)
let area = circle2.calculateArea()
print("Área do círculo: \(area)")

extension String {
    func reverse() -> String {
        return String(self.reversed())
    }
}

let reversedString = "Hello".reverse()
print(reversedString)

protocol Equatable {
    func isEqual(_ object: Self) -> Bool
}

extension Person: Equatable {
    func isEqual(_ object: Person) -> Bool {
        return self.name == object.name && self.age == object.age
    }
}

let person1 = Person(name: "João", age: 30)
let person2 = Person(name: "Maria", age: 25)
let person4 = Person(name: "João", age: 30)

print(person1.isEqual(person2)) // false
print(person1.isEqual(person4)) // true

