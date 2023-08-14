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
