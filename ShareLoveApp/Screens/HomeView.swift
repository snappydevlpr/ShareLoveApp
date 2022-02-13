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
                ShareLoveApp.actionSheet()
            }){
                Text("Restart")
            }
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .buttonStyle(.borderedProminent)
            
        }
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
