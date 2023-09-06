//
//  main.swift
//  TPSICASCAS1022
//
//  Created by Tarles Barbosa on 14/06/2023.
//

import Foundation

//MAIOR MENOR
/*func maiorMenor(num1: Int, num2:Int){
    let maior = max(num1, num2)
    let menor = min(num1, num2)

    print("Maior \(maior)")
    print("Menor \(menor)")
}

maiorMenor(num1: 15, num2: 20)

//SOMAR
func somar(num1: Int, num2:Int){
    let soma = num1 + num2
    
    if soma % 2 != 0{
        print("A soma e impar")
    }else{
        print("A soma e par")
    }
}

somar(num1: 15, num2: 26)

//POTENCIA
func potencia(num1: Int, num2:Int){
    let potencia = pow(Double(num1), Double(num2))
    print("Potencia \(potencia)")
}

potencia(num1: 20, num2: 42)


let a = 1, b = -4, c = 3

let delta = Double(b * b - 4 * a * c)

if delta < 0{
    print("A equacao nao possui solucaoes")
}else if delta == 0{
    let x = -Double(b) / (2 * Double(a))
    print("A equacao possui uma unica solucao: x = \(x)")
}else{
    let x1 = (-Double(b) + sqrt(delta)) / (2 * Double(a))
    let x2 = (-Double(b) - sqrt(delta)) / (2 * Double(a))
    print("A equacao possui as solucoes: x1 = \(x1), x2 = \(x2)")
}

let d = 4, e = 10, f = 6

let resultado = (c * b) / a
print("Resultado da regra de tres simples: \(resultado)")

let g = 10, h = 25

let soma2 = g + h

print("Soma: \(soma2)")
*/


class Aluno{
    var nome: String
    var idade:Int
    
    init (nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
}

let aluno1 = Aluno(nome: "Daniel", idade: 20)
let aluno2 = Aluno(nome: "Anton", idade: 21)
let aluno3 = Aluno(nome: "Guilherme", idade: 22)


class Escola{
    var nome: String
    var morada: String
    var numeroAlunos: Int
    var listaAlunos: [Aluno]
    
    init(nome: String, morada: String){
        self.nome = nome
        self.morada = morada
        self.numeroAlunos = 0
        self.listaAlunos = []
    }
    
    func adicionarAluno(aluno: Aluno){
        listaAlunos.append(aluno)
        numeroAlunos += 1
    }
    
    func removerAluno(aluno: Aluno){
        listaAlunos.remove(at: )
        numeroAlunos -= 1
    }
    
}

let minhaEscola = Escola(nome: "Escola da Marmelada", morada: "Rua do Cabo")


