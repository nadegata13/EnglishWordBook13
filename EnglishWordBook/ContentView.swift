//
//  ContentView.swift
//  EnglishWordBook
//
//  Created by 尾崎拓 on 2022/09/15.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel:ViewModel = ViewModel()


    var body: some View {
        
        VStack{
            Button {
                viewModel.showRandomWord()
            } label: {
                Text("スタート")
            }
            .padding(.top)
            Spacer()

            Text(viewModel.randomWord)
                .font(.largeTitle)
                .frame(height: 50)
            
           
           RightOrWrongView(viewModel: viewModel)
            
            Spacer()
//          
            SelectListView(viewModel: viewModel)
            .frame(height: 300.0)
            

        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
