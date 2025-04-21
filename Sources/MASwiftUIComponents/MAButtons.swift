//
//  MAButtons.swift
//  MASwiftUIComponents
//
//  Created by John Benson on 21/04/2025.
//

import SwiftUI

@available(iOS 15.0.0, *)
struct FilledCapsualButton: View {
    
    var action: () -> Void
    var text: Text
    var colour: Color
    
    
    var body: some View {
        Button(action: action, label: {
            text
        })
        .tint(.white)
        .frame(maxWidth: .infinity)
        .padding()
        .background(colour)
        .clipShape(.capsule)
    }
}

@available(iOS 15.0.0, *)
struct OutlineCapsualButton: View {
    
    var action: () -> Void
    var text: Text
    
    
    var body: some View {
        Button(action: action, label: {
            text
        })
        .tint(.black)
        .frame(maxWidth: .infinity)
        .padding()
        .background(.clear)
        .overlay(
            RoundedRectangle(cornerRadius: 100)
                .stroke(Color.gray, lineWidth: 2)
        )
        .clipShape(.capsule)
    }
}

@available(iOS 15.0.0, *)
struct GradientCapsualButton: View {
    
    var action: () -> Void
    var text: Text
    var colours: [Color]
   
    
    
    var body: some View {
        Button(action: action, label: {
            text
        })
        .tint(.white)
        .frame(maxWidth: .infinity)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: colours), startPoint: .leading, endPoint: .trailing))
        .clipShape(.capsule)
    }
}

@available(iOS 15.0.0, *)
#Preview {
    VStack{
        FilledCapsualButton(action: {}, text: /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/.fontWeight(.heavy), colour: .black)
        OutlineCapsualButton(action: {}, text: /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/.fontWeight(.light))
        GradientCapsualButton(action: {}, text: /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/.fontWeight(.light), colours: [.pink, .red])
    }
    .padding(20)
}
