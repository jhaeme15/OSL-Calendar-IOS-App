//
//  ThemeManager.swift
//  OSL-Calendar-IOS-App
//
//  Created by Kyle Workman on 3/26/19.
//  Copyright © 2019 Kyle Workman. All rights reserved.
//
//  Enum: https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html

import Foundation
import UIKit

enum ThemeName {
    case white
    case dark
    case seaBlue
    case twilightPurple
}

class Theme {
    static let sharedInstance = Theme()
    var theme: ThemeName = ThemeName.white
    var backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
    var darkerBackground = UIColor.init(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
    var textColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
    var isDark = false
    var checkboxColor = UIColor.blue
    var checkboxBackground = UIColor.white
    var buttonColor = UIColor.gray
}

class ThemeManager {
    
    func whiteTheme() {
        Theme.sharedInstance.theme = ThemeName.white
        Theme.sharedInstance.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        Theme.sharedInstance.darkerBackground = UIColor.init(red: 211/255, green: 211/255, blue: 211/255, alpha: 1)
        Theme.sharedInstance.textColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
        Theme.sharedInstance.isDark = false
        Theme.sharedInstance.checkboxColor = UIColor.blue
        Theme.sharedInstance.checkboxBackground = UIColor.white
        Theme.sharedInstance.buttonColor = UIColor.init(red: 101/255, green: 142/255, blue: 183/255, alpha: 1)
        saveTheme(theme: "white")
    }
    
    func darkTheme() {
        Theme.sharedInstance.theme = ThemeName.dark
        Theme.sharedInstance.backgroundColor = UIColor.init(red: 48/255, green: 48/255, blue: 48/255, alpha: 1)
        Theme.sharedInstance.darkerBackground = UIColor.init(red: 33/255, green: 33/255, blue: 33/255, alpha: 1)
        Theme.sharedInstance.textColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        Theme.sharedInstance.isDark = true
        Theme.sharedInstance.checkboxColor = UIColor.black
        Theme.sharedInstance.checkboxBackground = UIColor.white
        Theme.sharedInstance.buttonColor = .lightGray
        saveTheme(theme: "dark")
    }
    
    func seaBlueTheme() {
        Theme.sharedInstance.theme = ThemeName.seaBlue
        Theme.sharedInstance.backgroundColor = UIColor.init(red: 0/255, green: 105/255, blue: 148/255, alpha: 1)
        Theme.sharedInstance.darkerBackground = UIColor.init(red: 0/255, green: 89/255, blue: 126/255, alpha: 1)
        Theme.sharedInstance.textColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        Theme.sharedInstance.isDark = true
        Theme.sharedInstance.checkboxColor = UIColor.init(red: 0/255, green: 105/255, blue: 148/255, alpha: 1)
        Theme.sharedInstance.checkboxBackground = UIColor.white
        Theme.sharedInstance.buttonColor = UIColor.init(red: 0/255, green: 161/255, blue: 228/255, alpha: 1)
        saveTheme(theme: "blue")
    }
    
    func twilightPurpleTheme() {
        Theme.sharedInstance.theme = ThemeName.twilightPurple
        Theme.sharedInstance.backgroundColor = UIColor.init(red: 101/255, green: 101/255, blue: 142/255, alpha: 1)
        Theme.sharedInstance.darkerBackground = UIColor.init(red: 80/255, green: 80/255, blue: 100/255, alpha: 1)
        Theme.sharedInstance.textColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        Theme.sharedInstance.isDark = true
        Theme.sharedInstance.checkboxColor = UIColor.init(red: 101/255, green: 101/255, blue: 142/255, alpha: 1)
        Theme.sharedInstance.checkboxBackground = UIColor.white
        Theme.sharedInstance.buttonColor = UIColor.init(red: 154/255, green: 129/255, blue: 171/255, alpha: 1)
        saveTheme(theme: "purple")
    }
    
    func saveTheme(theme: String) {
        let preferences = UserDefaults.standard
        var builder = ""
        builder.append(theme)
        preferences.set(builder, forKey: "theme")
        preferences.synchronize()
    }
    
    func setInitialTheme(theme: String) {
        if (theme == "white") {
            whiteTheme()
        } else if (theme == "dark") {
            darkTheme()
        } else if (theme == "blue") {
            seaBlueTheme()
        } else if (theme == "purple"){
            twilightPurpleTheme()
        }
    }
    
}
