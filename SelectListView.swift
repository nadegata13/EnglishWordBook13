//
//  SelectListView.swift
//  EnglishWordBook
//
//  Created by 尾崎拓 on 2022/10/28.
//

import SwiftUI

struct SelectListView: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {

        List{
            ForEach(0 ..< viewModel.wordList.count) { index in
                HStack {
                    Image(systemName: viewModel.wordList[index].isClicked ? "checkmark.circle.fill" : "circle")
                    Text(viewModel.wordList[index].english)
                }
                    .onTapGesture {
                        viewModel.wordList[index].click()
                        if !viewModel.isClicked && viewModel.isStart {
                            viewModel.addSubject(word: viewModel.wordList[index])
                        }
                    }
                
            }
        }.foregroundColor(Color.green)
        
    }
}

