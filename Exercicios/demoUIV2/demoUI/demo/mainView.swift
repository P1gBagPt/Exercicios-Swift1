//
//  mainView.swift
//  demo
//
//  Created by Gonçalo Feliciano on 30/06/2023.
//

import SwiftUI

struct MainView: View {
    @StateObject var ContentView = ContentViewViewModel()
    
    
    var body: some View {
    
            TabView {
                
                ContentView()
                    .tabItem {
                        Label("Add book", systemImage: "plus.circle")
                    }
                
                
                ListBookView()
                    .tabItem {
                        Label("List book", systemImage: "list.bullet.circle")
                    }
                
                
                
            }
            .environmentObject(ContentView)
        
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
