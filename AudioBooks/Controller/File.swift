//
//  File.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 12/08/23.
//

import Foundation
import SwiftUI

func getTitle(tag: Int) -> String? {
    switch tag {
    case 1: return "My Bookmark"
    case 2: return "Audiobook"
    case 3: return "Statistic"
    default:
        return nil
    }
}

//func showPopUp(isTrues: Bool?) {
//    var isTrue: Bool?
//    
//    if isTrue == true {
//        StatusPopup(img: "checkmark.circle", txt: "Registrasi Berhasil", clr: .green)
//            .transition(.scale)
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    isTrue = nil
//                    destination = .success
//                }
//            }
//    } else if isTrue == false {
//        StatusPopup(img: "exclamationmark.circle", txt: "Registrasi Gagal", clr: .red)
//            .transition(.scale)
//            .onAppear {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//                    isTrue = nil
//                }
//            }
//    }
//}
