//
//  ContentView.swift
//  HW
//
//  Created by Иса on 10.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var start: Bool = false
    
    var body: some View {
        
        VStack {
            TriangleView(width: 200, height: 200, animation: .spring(response: 5), start: $start)
            
            Spacer()
            
            Button {
                start.toggle()
                print(start)
            } label: {
                Text("Press")
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .background(Color.blue.cornerRadius(10))
                    )
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
