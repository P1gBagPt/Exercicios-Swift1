//
//  ListBookView.swift
//  demo
//
//  Created by Gonçalo Feliciano on 30/06/2023.
//

import SwiftUI

struct ListBookView: View {
    @EnvironmentObject var  ContentView:ContentViewViewModel
    
    var body: some View {
        NavigationStack{
            
            List(){
                ForEach(ContentView.listaBooks) { book in
                    NavigationLink {
                        
                       BookInfoView(book: book)
                        
                    } label: {
                        ListLineView(book: book)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Book List")
            .environmentObject(ContentViewVM)
        }
    }
}

struct ListBookView_Previews: PreviewProvider {
    static var previews: some View {
        ListBookView()
    }
}
