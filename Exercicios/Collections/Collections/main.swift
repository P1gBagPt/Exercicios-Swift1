//
//  main.swift
//  Collections
//
//  Created by Tarles Barbosa on 22/06/2023.
//

import Foundation

var numbers = Array(1...10)

func arrayNumber(){
    
    numbers.append(11)
    
    if let index = numbers.firstIndex(of: 5){
        numbers.remove(at: index)
    }
}
arrayNumber()

func numero8(){
    print(numbers.contains(8))
}
numero8()


var uniqueNumbers = Set(1...10)

uniqueNumbers.insert(11)

uniqueNumbers.remove(5)

let contains8InSet = uniqueNumbers.contains(8)

var names = [1: "Joao", 2: "Barbara", 3: "Pedro", 4: "Ana"]

if let name = names[2]{
    print(name)
}

let filterednumbers = numbers.filter{$0 % 2 == 0}

let uniquefilteredNumbers = uniqueNumbers.filter{$0 % 2 == 0}

let filteredNames = names.filter{$0.key % 2 == 0}

let sortedNumbers = numbers.sorted(by: >)

let maxNumber = numbers.max()

let numbers2 = [1, 2, 3, 4, 5]

let allMaiorqueZero = numbers2.allSatisfy{$0 > 0}

let sum = numbers2.reduce(0, +)

let uniquenumbers = [1, 2, 3, 3, 4, 5, 5]
let uniqueSquaredNumbers = Set(uniquenumbers.map{$0 * $0})
print(uniqueSquaredNumbers)

let namessss = ["Joao", "Maria", "Pedro", "Ana"]
let nameLengths = Dictionary(uniqueKeysWithValues: namessss.map{ ($0, $0.count) })
print(nameLengths)

