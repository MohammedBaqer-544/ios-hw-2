//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        
        membersNamesArray.append( member ) 
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(memberNameArray: membersNamesArray)

        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        var functionCall = secretNameEmoji(memberNameArray: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    
    func secretNameLetter(memberNameArray :[String]) -> String {
        var firstLetterArray: [String] = []
        for memberName in membersNamesArray {
            firstLetterArray.append(String (memberName.prefix(1)))
        }
        print(firstLetterArray.joined())
        membersNamesArray.removeAll()
        return firstLetterArray.joined()
    }
   
    
    // MARK: -   النهاية
    
    
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    
    func secretNameEmoji(memberNameArray :[String]) -> String {
        let emojiDictionaryEnglish =
            [ "A": "⌚️",
              "B": "🩸",
              "C": "🔮",
              "D": "🎨",
              "E": "🧿",
              "F": "🍓",
              "G": "👞",
              "H": "🍘",
              "I": "🚬",
              "J": "🌱",
              "K": "⌨️",
              "L": "💻",
              "M": "🔬",
              "N": "👒",
              "O": "🚪",
              "P": "🖨",
              "Q": "🐃",
              "R": "♻︎",
              "S": "🧽",
              "T": "🔭",
              "U": "🧙🏻",
              "V": "🎻",
              "W": "☀️",
              "X": "✈️",
              "Y": "📰",
              "Z": "🇰🇼",
              "a": "⌚️",
              "b": "🩸",
              "c": "🔮",
              "d": "🎨",
              "e": "🧿",
              "f": "🍓",
              "g": "👞",
              "h": "🍘",
              "i": "🚬",
              "j": "🌱",
              "k": "⌨️",
              "l": "💻",
              "m": "🔬",
              "n": "👒",
              "o": "🚪",
              "p": "🖨",
              "q": "🐃",
              "r": "♻︎",
              "s": "🧽",
              "t": "🔭",
              "u": "🧙🏻",
              "v": "🎻",
              "w": "☀️",
              "x": "✈️",
              "y": "📰",
              "z": "🇰🇼",
              "":    "",
              " ":  " ",
              "  ": "  " ]
        
        
        var emojiLetterArray:[String] = []
        var firstLetterArray:[String] = []
        for memberEmoji in membersNamesArray {
            firstLetterArray.append(String (memberEmoji.prefix(1)))
            var emoji = emojiDictionaryEnglish[String (memberEmoji.prefix(1))]
            emojiLetterArray.append(emoji!)
            print(emojiLetterArray.joined())
        }
        
        return emojiLetterArray.joined()
       
    // MARK: -   النهاية
    
    
    
}
}
