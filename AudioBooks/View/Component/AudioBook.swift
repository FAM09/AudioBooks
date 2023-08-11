//
//  AudioBook.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 11/08/23.
//

import SwiftUI

struct AudioBook: View {
    var body: some View {
        Text("Listen now")
          .font(
            Font.custom("Inter", size: 32)
              .weight(.semibold)
          )
          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
          .padding(.leading, 23)
          .padding(.trailing, 184)
        
        ScrollView {
            CardInformation()
                .padding(.bottom, 16)
            
            VStack(alignment: .center, spacing: 18) {
                HStack(alignment: .center, spacing: 0) {
                    Text("Audiobook")
                      .font(Font.custom("Inter", size: 18))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
                }
                .padding(.horizontal, 0)
                .padding(.vertical, 15)
                .frame(width: 375, height: 48, alignment: .center)
                .background(.white)
                
                VStack {
                    ForEach(Items) {_ in
                        CardSmall()
                    }
                }
                
            }
            .padding(.horizontal, 0)
            .padding(.top, 0)
            .padding(.bottom, 93)
            .frame(width: 375, alignment: .top)
            .background(.white)
            .cornerRadius(40)
            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.3), radius: 4, x: 0, y: 0)
        }
    }
}

struct AudioBook_Previews: PreviewProvider {
    static var previews: some View {
        AudioBook()
    }
}
