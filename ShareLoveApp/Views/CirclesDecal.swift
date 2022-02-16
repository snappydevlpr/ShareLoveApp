//
//  CirclesDecal.swift
//  ShareLoveApp
//  creates a reusable decal for the circle background
//  Created by Austin Suarez on 2/12/22.
//

import SwiftUI

struct CirclesDecal: View {
    // property
    // a property wrapper type that can reach and write a value managed by swift
    
    @State var shapeColor: Color
    @State var ShapeOpacity:Double
    @State var isAnimating: Bool = false
    var body: some View {
        //circle background graphic
        ZStack{
            Circle()
                .stroke(shapeColor.opacity(ShapeOpacity),lineWidth:40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(ShapeOpacity),lineWidth:80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimating ?0:10)
        .opacity(isAnimating ?1:0)
        .scaleEffect(isAnimating ?1:0.5)
        .animation(.easeOut(duration:1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct CirclesDecal_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color("Color_blue")
                .ignoresSafeArea(.all, edges: .all)
            CirclesDecal(shapeColor: .white, ShapeOpacity: 0.2)
        }
    }
}
