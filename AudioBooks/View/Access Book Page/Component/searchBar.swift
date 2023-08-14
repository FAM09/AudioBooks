//
//  searchBar.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct searchBar: View {
    let variable: Binding<String>
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 327, height: 36)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .cornerRadius(8)
            
            Image("Icon")
                .frame(width: 16, height: 16)
                .padding(.leading, 303)
                .padding(.trailing, 8)
                .padding(.vertical, 10)
            
            TextField("Search", text: variable)
                .font(Font.custom("Inter", size: 16))
                .foregroundColor(Color(red: 0.73, green: 0.73, blue: 0.73))
                .frame(width: 259, height: 16, alignment: .topLeading)
            
            Image("Mic")
                .frame(width: 16, height: 16)
                .padding(.leading, 8)
                .padding(.trailing, 303)
                .padding(.vertical, 10)
        }
        .frame(width: 327, height: 36)
        .cornerRadius(8)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
    }
}

struct searchBar_Previews: PreviewProvider {
    static var previews: some View {
        @State var srch: String = ""
        
        searchBar(variable: $srch)
    }
}
