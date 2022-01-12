//
//  ContentView.swift
//  LyricsApp
//
//  Created by User19 on 2022/1/5.
//

import SwiftUI

struct PracticeView: View {
    @State private var isMan: Bool?
    @State private var scale: CGFloat = 1
    var body: some View {
        VStack {
            Text("是不是男人 還是娘們 看這次了")
            Image(systemName: "house")
            .resizable()
            .scaledToFit()
            .scaleEffect(scale)
            .onLongPressGesture(minimumDuration: 3) {
                scale *= 2
            }
            .onTapGesture(count:2) {
                isMan = Bool.random()
            }
            
        isMan.map {
            Text($0 ? "100% 的男人!" : "為你開記者會承認 我不是男人")
                .padding()
                .background(Color.blue)
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    isMan = nil
                    }
                }
                .transition(.scale(scale: 2))
            }
        }
        .animation(.easeInOut, value: isMan)
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
            PracticeView()
    }
}
