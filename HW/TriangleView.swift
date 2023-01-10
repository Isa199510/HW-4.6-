//
//  TriangleView.swift
//  HW
//
//  Created by Иса on 10.01.2023.
//

import SwiftUI

struct TriangleView: View {
    
    let width: CGFloat
    let height: CGFloat
    
    let animation: Animation
    @Binding var start: Bool
    
    var body: some View {
        
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let height = geometry.size.height
            let middle = width / 2
            let nearLine = min(width, height) * 0.1
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: width - nearLine, y: height - nearLine))
                path.addLine(to: CGPoint(x: nearLine, y: height - nearLine))
                path.closeSubpath()
                
            }
        }
        .frame(width: width, height: height)
        .offset(y: start ? UIScreen.main.bounds.height - 300 : 0)
        .animation(animation, value: start)
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView(width: 300, height: 300, animation: .easeIn, start: .constant(true))
    }
}
