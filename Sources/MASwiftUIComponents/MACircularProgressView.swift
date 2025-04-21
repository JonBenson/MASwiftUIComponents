//
//  Untitled.swift
//  MASwiftUIComponents
//
//  Created by John Benson on 21/04/2025.
//

import SwiftUI

@available(iOS 13.0, *)
public struct CircularProgressView: View {
    var progress: CGFloat
    var lineWidth: CGFloat
    var trackColor: Color
    var progressColor: Color
    
    public var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 1)
                .stroke(trackColor, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(progressColor, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
            
            Text("75%").font(.largeTitle).fontWeight(.heavy).bold()
        }
        .frame(width: 200, height: 200)
        
    }
}



