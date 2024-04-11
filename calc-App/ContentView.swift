//
//  ContentView.swift
//  calc-App
//
//  Created by Fredson Silva on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        "7", "8", "9", "/",
        "4", "5", "6", "x",
        "1", "2", "3", "-",
        "0", "=", "C", "+"
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 4), spacing: 20) {
                ForEach(buttons, id: \.self) { button in
                    Button(action: {
                        // Ação do botão aqui
                    }) {
                        Text(button)
                            .frame(width: button == "0" ? 80 : 40, height: 40)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
            }
            .padding()
        }
    }
}



#Preview {
    ContentView()
}
