//
//  ListLineView.swift
//  demo
//
//  Created by Gonçalo Feliciano on 29/06/2023.
//

import SwiftUI

struct ListLineView: View {
    var book: Book
    
    var body: some View {
        HStack{
            Image(uiImage: book.bookImg)
                .resizable()
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                .scaledToFill()
            Text(book.nome)
            
        }
    }
}

struct ListLineView_Previews: PreviewProvider {
    static var previews: some View {
        ListLineView(book: Book(nome: "Book1"))
    }
}
