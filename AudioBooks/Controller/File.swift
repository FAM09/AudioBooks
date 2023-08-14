//
//  File.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 12/08/23.
//

import Foundation
import SwiftUI

func getIcon(OnTap: String, defaultIcon: String) -> String {
    if OnTap == defaultIcon {
        return defaultIcon + " active"
    } else {
        return defaultIcon
    }
}

func getColorIcon(img: String) -> Color {
    if img.contains("active") {
        return Color(red: 0.42, green: 0.3, blue: 1)
    } else {
        return Color(red: 0.11, green: 0.11, blue: 0.11)
    }
}

func setAccessView(OnTap: String) {
    if OnTap == "statistic" {
        accessView = .statistic
        print(accessView)
    } else if OnTap == "bookmark" {
        accessView = .bookmark
        print(accessView)
    } else if OnTap == "audiobook" {
        accessView =  .audiobook
        print(accessView)
    } else {
        accessView = .home
        print(accessView)
    }
}

func showAccessView(variable: Binding<String>) -> any View {
    switch accessView {
    case .home:
        return HomeView()
    case .bookmark:
        return BookmarkView()
    case .audiobook:
        return AudioBook()
    case .statistic:
        return StatisticView()
    }
}
