//
//  main.swift
//  Funcoes
//
//  Created by Tarles Barbosa on 29/06/2023.
//

import Foundation

func calculateNumbers(_ num1: Int, _ num2: Int) {
    let maior = max(num1, num2)
    let menor = min(num1, num2)
    let soma = num1 + num2
    let isImpar = soma % 2 != 0
    let potencia = pow(Double(num1), Double(num2))
    
    print("Maior número: \(maior)")
    print("Menor número: \(menor)")
    print("Soma: \(soma)")
    print("A soma é ímpar? \(isImpar)")
    print("Potência: \(potencia)")
}

calculateNumbers(5, 3)


func calculateResolvente(a: Double, b: Double, c: Double) {
    let delta = b * b - 4 * a * c
    
    if delta > 0 {
        let x1 = (-b + sqrt(delta)) / (2 * a)
        let x2 = (-b - sqrt(delta)) / (2 * a)
        print("Soluções: \(x1), \(x2)")
    } else if delta == 0 {
        let x = -b / (2 * a)
        print("Solução única: \(x)")
    } else {
        print("Não há soluções reais")
    }
}

calculateResolvente(a: 1, b: -5, c: 6)


func calculateRegraDeTres(a: Double, b: Double, c: Double) {
    let x = (c * b) / a
    print("O valor de x é: \(x)")
}

calculateRegraDeTres(a: 4, b: 6, c: 8)

func sumNumbersBetween(_ num1: Int, _ num2: Int) -> Int {
    var sum = 0
    for num in (num1 + 1)..<num2 {
        sum += num
    }
    return sum
}

let sumkk = sumNumbersBetween(2, 6)
print(sumkk)


func sumEvenNumbersBetween(_ num1: Int, _ num2: Int) -> Int {
    var sum = 0
    for num in (num1 + 1)..<num2 {
        if num % 2 == 0 {
            sum += num
        }
    }
    return sum
}

let sum = sumEvenNumbersBetween(2, 10)
print("A soma dos números pares entre os valores é: \(sum)")



func findMinMaxValues(_ array: [Int]) -> (Int, Int)? {
    guard let max = array.max(), let min = array.min() else {
        return nil
    }
    return (max, min)
}

let array = [5, 2, 8, 1, 9]
