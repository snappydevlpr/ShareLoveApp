//
//  ContentView.swift
//  ShareLoveApp
//
//  Created by Austin Suarez on 2/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("ColorBlue")
            .ignoresSafeArea(.all,edges: .all)
            VStack(spacing: 20){
                //header
                Spacer()
                VStack{
                    Text("Share.")
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Text("Sharing love is sometimes more than just things. Sometimes the best way is to just let someone know you care.")
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .padding()
                Spacer()
                //image
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(Color.white.opacity(0.2),lineWidth:40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(Color.white.opacity(0.2),lineWidth:80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }
                    Image("Hands-Show")
                        .resizable()
                        .scaledToFit()
                }
                Spacer()
                //footer
                ZStack{
                    Text("Share the Love")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                    Capsule()
                        .fill(Color.white.opacity(0.20))
                        
                    Capsule()
                        .fill(Color.white.opacity(0.20))
                        .padding(8)
                    
                    HStack{
                        Capsule()
                            .fill(Color("lightred"))
                            .frame(width: 80)
                        Spacer()
                    }
                    HStack{
                        ZStack{
                            Circle()
                                .fill(Color("lightred"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size:24,weight: .bold))
                        }
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        Spacer()
                    }
                    
                    
                }
                .frame(height: 80, alignment: .center)
                .padding()
                
            }
                    
        }
        .background(Color.blue)
        

    }
      
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
