//
//  ContentView.swift
//  playground
//
//  Created by Wei Rong on 2024/10/8.
//

import SwiftUI

func myselect() -> (index: Int, value:String){
    let eat_list = ["🍏","🐹","bb","cc"]
    let val = eat_list.randomElement()!
    let idx = eat_list.firstIndex(of: val)
    return (idx!, val)
}

struct ContentView: View {
    @State private var sel = myselect()
    var body: some View {
        VStack {
            Spacer()
            Text("\(sel.1)")
                .font(.system(size: 100))
                .padding()
            //Spacer()
            Text("index: \(sel.0)")
                .font(.system(size: 20))
                .padding()
            Spacer()
            Button("change"){
                sel = myselect()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
            Spacer()
        }
        HStack {
            Spacer()
            Text("1")
                .padding()
            Spacer()
            Text("2")
                .padding()
            Spacer()
            Text("3")
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
