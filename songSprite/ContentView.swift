//
//  ContentView.swift
//  Sprite
//
//  Created by Yohan Wijaya on 08/11/23.
//

import SwiftUI
import SpriteKit


struct ContentView: View {
    @State private var timeRemaining: Double = 10.0
    @State private var touch: Bool = false
    @State private var touch2: Bool = false
    @State private var isAnimating = false
    @State private var note1Alpha: Double = 1.0
    @State var noteArray: [SKSpriteNode] = []
    @State var imageNodes: [SKSpriteNode] = []
    
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        scene.scaleMode = .fill
        return scene
    }
    
    var body: some View {
        ZStack{
            VStack{
                SpriteView(scene: scene)
                    .edgesIgnoringSafeArea(.all)
                
               
            }
            
        }
    }
}


#Preview {
    ContentView()
}
