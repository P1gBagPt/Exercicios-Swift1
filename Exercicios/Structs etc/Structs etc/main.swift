//
//  main.swift
//  Structs etc
//
//  Created by Tarles Barbosa on 23/06/2023.
//

import Foundation

class Person{
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int){
        self.nome = nome
        self.idade = idade
    }
}

let person = Person(nome: "Daniel", idade: 20)
print("Nome: \(person.nome), Idade: \(person.idade)")




