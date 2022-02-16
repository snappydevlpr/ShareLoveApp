//
//  HomeView.swift
//  ShareLoveApp
//
//  Created by Austin Suarez on 2/8/22.
//

import SwiftUI


struct HomeView: View {
    @AppStorage("share") var isShareLoveViewActive: Bool = false;
    @State private var isAnimating: Bool = false;

    var body: some View {
        VStack(spacing: 20){
            //Mark: - HEADER
            
            Spacer()
            ZStack{
                CirclesDecal(shapeColor: .gray, ShapeOpacity: 0.1)
                Image("meditation")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ?15:-15)
                    .animation(
                        Animation
                            .easeInOut(duration:4)
                            .repeatForever(),
                            value:isAnimating
                        )
            }
            
            //center
                Text("Wishing you peace and calmness as you make your day today and work toward your goals")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            
            Button(action: {
                withAnimation{
                  //  ShareLoveApp.actionSheet()
                    isShareLoveViewActive = true
                    
                }
                
            }){
                Text("Share.")
            }
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
            
        }
        // allows animation to start 0.5 seconds after appearing on the screen
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute:{
                isAnimating = true
            })
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
