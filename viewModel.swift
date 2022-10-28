//
//  viewModel.swift
//  EnglishWordBook
//
//  Created by 尾崎拓 on 2022/09/15.
//

import Foundation
import Combine
import SwiftUI

class ViewModel : ObservableObject {
    var cancellable: AnyCancellable?
    @Published var randomWord = ""
    @Published var isRight = false
    @Published var isClicked = false
    @Published var isStart = false
    @Published var wordList = [WordObject(meaning: "単語", english: "word"),
                               WordObject(meaning: "学校", english: "school"),
                               WordObject(meaning: "幸運", english: "lucky"),
                               WordObject(meaning: "自信", english: "confidence"),
                               WordObject(meaning: "明日", english: "tomorrow"),
                               WordObject(meaning: "構造", english: "structure"),
                               WordObject(meaning: "葡萄", english: "grape"),
    ]
     
    let subject = PassthroughSubject<WordObject, Never>() // ①
     
    init(){
        cancellable = subject.sink { num in // ②
            self.isClicked = true
            
            if num.meaning == self.randomWord {
                print("正解")
                self.isRight = true
            } else {
                print("不正解")
                self.isRight = false
            }
        }
    }

    func showRandomWord() {
        
        wordList.forEach { WordObject in
            WordObject.initClic()
        }
        
        let randomElement = wordList.randomElement()
        randomWord = randomElement!.meaning
        
        self.isClicked = false
        self.isStart = true

    }
    func addSubject(word: WordObject) {
        subject.send(word)
    }
}
