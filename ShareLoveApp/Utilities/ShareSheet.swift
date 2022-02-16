//
//  ShareSheet.swift
//  ShareLoveApp
//
//  Created by Austin Suarez on 2/13/22.
//

import Foundation
import UIKit

func actionSheet(){
    guard let data = URL(string: "amsuarez.com") else {return }
    let av = UIActivityViewController(activityItems:[data], applicationActivities: nil)
    UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    //UIWindowScene.window.first?.rootViewController?.present(av,animated: true)
}
