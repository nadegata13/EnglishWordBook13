//
//  RightOrWrongView.swift
//  EnglishWordBook
//
//  Created by 尾崎拓 on 2022/10/28.
//

import SwiftUI

struct RightOrWrongView: View {
    @ObservedObject var  viewModel : ViewModel
    var body: some View {
        
        VStack{
            if viewModel.isClicked {
                if viewModel.isRight {
                    Text("正解")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                      
                } else {
                    Text("不正解")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        
                }
                
            }
        }.frame(height: 50)

    }
}

