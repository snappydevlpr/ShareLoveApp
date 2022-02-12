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
