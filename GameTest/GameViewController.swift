//
//  GameViewController.swift
//  GameTest
//
//  Created by Mulang Su on 9/25/16.
//  Copyright © 2016 Mulang Su. All rights reserved.
//

import UIKit
import AVFoundation
import SpriteKit
import GameplayKit
import AYGestureHelpView

class GameViewController: UIViewController {
    var currentScene: SKScene!
    let audioPlayer = try! AVAudioPlayer(contentsOf: Bundle.main.url(forResource: "Fearless First", withExtension: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                currentScene = scene
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            audioPlayer.prepareToPlay()
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
        }
    }
    
    func test1() {
        let helpView = AYGestureHelpView()
        helpView.swipe(withLabelText: "Swipe!", label: CGPoint(x: view.center.x, y: view.center.y + 70), touchStart: CGPoint(x: view.center.x - 100, y: view.center.y), touchEnd: CGPoint(x: view.center.x + 100, y: view.center.y), dismissHandler: nil, hideOnDismiss: true)
        self.view.addSubview(helpView)
    }
    
    func test2() {
        let helpView = AYGestureHelpView()
        helpView.doubleTap(withLabelText: "Double tap", label: CGPoint(x: self.view.center.x, y: self.view.center.y + 70), touch: self.view.center, dismissHandler: {
        helpView.tap(withLabelText: "Tap!", label: CGPoint(x: self.view.center.x, y: self.view.center.y + 70), touch: self.view.center, dismissHandler: nil, hideOnDismiss: true)
        }, hideOnDismiss: false)
        self.view.addSubview(helpView)
    }
    
    func test3() {
        let helpView = AYGestureHelpView()
        helpView.longPress(withLabelText: "Long Press", label: CGPoint(x: self.view.center.x, y: self.view.center.y + 70), touch: self.view.center, dismissHandler: nil, hideOnDismiss: true)
        self.view.addSubview(helpView)
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
