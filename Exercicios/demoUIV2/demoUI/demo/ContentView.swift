//
//  ContentView.swift
//  demo
//
//  Created by Gonçalo Feliciano on 29/06/2023.
//

import SwiftUI

struct Book:Identifiable{
    var id = UUID()
    var nome:String
    
    var bookImg:UIImage{
        UIImage(named: self.nome) ?? UIImage(named: "noImg")!
    }
}


struct ContentView: View {
   
    @EnvironmentObject var  ContentViewVM:ContentViewViewModel
    
    var body: some View {
        NavigationStack{
            VStack{
       
                Image(ContentViewVM.tfNome)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 300)
                
                Text(ContentViewVM.tfNome)
                
                TextField("Digite o nome: ", text: self.$ContentViewVM.tfNome)
                    .frame(width: 200)
                    .textFieldStyle(.roundedBorder)
                
                    .padding(.bottom, 30)
                VStack{
                    HStack{
                        Button {
                            ContentViewVM.addBook()
                        } label: {
                            BtnView(btnTxt: "add Book", btnColor: .blue)
                            
                        }
                        .padding(.trailing, 20)
                     
                    } // HStack
                    .padding(.bottom, 10)
                    
                }//VStack nav
                .padding(.bottom, 20)
            }// main VStack
            .navigationTitle("Add Books")
        }//NavigationStack
        .environmentObject(ContentViewVM)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
