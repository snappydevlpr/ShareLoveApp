//
//  ShareView.swift
//  ShareLoveApp
//
//  Created by Austin Suarez on 2/8/22.
//

import SwiftUI

struct ShareView: View {
    
    //allows button size to change based on screen
    @State private var buttonWidth: Double = UIScreen.main.bounds.width - 80;
    
    @AppStorage("share") var isShareLoveViewActive: Bool = true;

    //this property will represent the offset value in horizontal direction
    @State private var  buttonOffset: CGFloat = 0;
    @State private var isAnimating: Bool = false;
    
    // Mark: - body
    var body: some View {
        ZStack{
            Color("Color_blue")
            .ignoresSafeArea(.all,edges: .all)
            VStack(spacing: 20){
                //Mark: - header message
                Spacer()
                VStack{
                    Text("Share.")
                        .font(.system(size: 60))
                        .foregroundColor(Color.white)
                        .fontWeight(.heavy)
                    Text("Sharing love is sometimes more than just things. Sometimes the best way is to just let someone know you care.")
                        .foregroundColor(Color.white)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,10)
                }
                .padding()
                .opacity(isAnimating ? 1:0)
                .offset(x: 0, y: isAnimating ? 0 :-40)
                .animation(.easeOut(duration:1), value: isAnimating)
                //end of header message
                
                Spacer()
                //image
                ZStack{
                    
                    CirclesDecal(shapeColor: .white, ShapeOpacity: 0.2)
                    //image show stopper
                    Image("Hands-Show")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1:0)
                        .animation(.linear(duration:1), value: isAnimating)
                }
                Spacer()
                
                //Mark: - FOOTER
                ZStack{
                    Text("Share the Love")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .offset(x: 20)
                    
                    Capsule()
                        .fill(Color.white.opacity(0.20))
                        
                    Capsule()
                        .fill(Color.white.opacity(0.20))
                        .padding(8)
                    
                    HStack{
                        Capsule()
                            .fill(Color("lightred"))
                            .frame(width: buttonOffset + 80)
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
                            .offset(x:buttonOffset)
                            // allows us to use the gesture for drag
                            .gesture(
                                DragGesture()
                                    .onChanged{gesture in
                                        
                                        if gesture.translation.width > 0 && buttonOffset <= (buttonWidth - 80){
                                            buttonOffset = gesture.translation.width
                                        }
                                        
                                        
                                    }
                                    // allows button to snap back
                                    .onEnded{ _ in
                                        
                                        withAnimation(Animation.easeOut(duration: 0.4))
                                        {
                                            if buttonOffset > buttonWidth/2{
                                                buttonOffset = buttonWidth - 90
                                                isShareLoveViewActive = false
                                            }
                                            else{
                                                buttonOffset = 0
                                            }
                                        }
                                        
                                        
                                        
                                    }
                            )// drag gesture
                            Spacer()
                        }//end of HSTACK
                }
                .frame(width: buttonWidth, height: 80, alignment: .center)
                .padding()
                .opacity(isAnimating ? 1:0)
                .offset(x:0, y: isAnimating ? 0:40)
                .animation(.easeOut(duration:1),value: isAnimating)
                //: FOOTER
            }
                    
        }
        //begins animation when ui appears
        .onAppear(perform: {
            isAnimating = true
        })
}
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
