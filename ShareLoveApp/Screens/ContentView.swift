//
//  ContentView.swift
//  ShareLoveApp
//
//  Created by Austin Suarez on 2/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("share") var isShareLoveViewActive: Bool = true
    var body: some View {
        ZStack{
            if isShareLoveViewActive{
                ShareView()
            }
            else{
                HomeView()
            }
            
        }
        
    }
      
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
