//
//  bookInfoView.swift
//  demo
//
//  Created by Gonçalo Feliciano on 30/06/2023.
//

import SwiftUI

struct BookInfoView: View {
    //  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) var presentationMode: DismissAction

    @Environment(\.isPresented) var isPresented2: Bool
    
    
    @EnvironmentObject var ContentViewVM:ContentViewViewModel
    
    var book:Book
    var body: some View {
        VStack{
            Image(uiImage: book.bookImg)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 400)
            
            Button {
                ContentViewVM.deleteBook(byBook: book)
                print(isPresented2)
                //presentationMode.value.dismiss()
                presentationMode.callAsFunction()
            } label: {
                BtnView(btnTxt: "Delete book", btnColor: .red)
            }

        
        }
        .navigationTitle(book.nome)
        .environmentObject(ContentViewVM)
    }
}

struct bookInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BookInfoView(book: Book(nome: "Book1"))
    }
}
