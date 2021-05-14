//
//  ViewController.swift
//  ios_practice_gesture
//
//  Created by Sumit Desai on 13/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // creating variable for swipe gesture using UISwipeGestureRecognizer
        // then providing direction to gesture
        // then adding that gesture variable to required view (can be button, text, slider or any view)
        // whenever we use selector we need to provide @objc to method as we want that method to be accessed by objective C also
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        view.addGestureRecognizer(swipeDown)
    }

    @objc func swipe(gesture: UISwipeGestureRecognizer){
        switch gesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                print("Left swipe")
            case UISwipeGestureRecognizer.Direction.right:
                print("Right swipe")
            case UISwipeGestureRecognizer.Direction.up:
                print("Up swipe")
            case UISwipeGestureRecognizer.Direction.down:
                print("Down swipe")
            default:
                print("Default ")
        }
    }
    
    // when device is shaked then below will be executed
    // command + ctrl + z to shake simulator device
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if(event?.subtype == UIEvent.EventSubtype.motionShake){
            print("Device shaked")
        }
    }

}

