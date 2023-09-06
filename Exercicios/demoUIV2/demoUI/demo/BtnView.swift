//
//  BtnView.swift
//  demo
//
//  Created by Gonçalo Feliciano on 29/06/2023.
//

import SwiftUI

struct BtnView: View {
    var btnTxt:String
    var btnColor:Color
    
    var body: some View {
        Text(btnTxt)
            .frame(width: 130, height: 60)
            .background(btnColor)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .fontWeight(.bold)
            .shadow(color: .black, radius: 15, x: 10, y: 10)
    }
}

struct BtnView_Previews: PreviewProvider {
    static var previews: some View {
        BtnView(btnTxt: "add Book", btnColor: Color.blue)
    }
}
