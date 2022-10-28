//
//  File.swift
//  EnglishWordBook
//
//  Created by 尾崎拓 on 2022/09/15.
//

import Foundation
struct WordList {
    let wordList : [(english: String, japanese: String)] = [("word", "単語"),
                     ("banana", "バナナ"),
                    ("apple", "りんご"),
                    ("greeting", "挨拶"),
                    ("momory", "思い出")
    ]
}


class WordObject{
    
    init(meaning: String, english: String){
        self.english = english
        self.meaning = meaning
    }

    let meaning: String
    let english : String
    var isClicked = false
    
     func click() {
        isClicked = true
    }
    func initClic() {
        isClicked = false
    }
}
