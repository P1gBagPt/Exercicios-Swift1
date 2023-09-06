//
//  ContentViewViewModel.swift
//  demo
//
//  Created by Gonçalo Feliciano on 30/06/2023.
//

import Foundation


class ContentViewViewModel:ObservableObject{
    
    @Published var tfNome = ""
    @Published var listaBooks:[Book] = []
    
    
    func addBook(){
        if !tfNome.isEmpty{
           self.listaBooks.append(Book(nome: tfNome))
            
            tfNome = ""
        }
        
    }
 
    
    func deleteBook(byBook b:Book? = nil){
        
        if let b{
            self.listaBooks.removeAll { book in
                book.nome == b.nome
            }
        }else {
            
            if !tfNome.isEmpty{
                self.listaBooks.removeAll { book in
                    book.nome == self.tfNome
                }
            }
        }
    }
    



    
    func select(book:Book){
        self.tfNome = book.nome
        
    }
}
