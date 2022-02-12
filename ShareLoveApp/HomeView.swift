//
//  HomeView.swift
//  ShareLoveApp
//
//  Created by Austin Suarez on 2/8/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20){
            //header
            
            Spacer()
            ZStack{
                CirclesDecal(shapeColor: .gray, ShapeOpacity: 0.1)
                Image("meditation")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
            }
            
            //center
                Text("Wishing you peace and calmness as you make your day today and work toward your goals")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()

            //footer
                NavigationLink(destination: ContentView()){
                        Text("Restart")
                            .fontWeight(.bold)
                            .font(.system(.title3,design: .rounded))
                }
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
