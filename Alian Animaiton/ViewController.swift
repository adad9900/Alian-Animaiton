//
//  ViewController.swift
//  Alian Animaiton
//
//  Created by D7703_16 on 2018. 4. 4..
//  Copyright © 2018년 D7703_16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var counter: UILabel!
    
    var index = 1
    var direction = 1  // 방향
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func update(_ sender: Any) {
        
        /*
        // 1...5 그다음 1....5 이렇게 진행하는 문제
         
         if index == 5 {
         index = 1
         } else {
         index = index + 1
         }
         myimageview.image = UIImage(named: "frame\(index).png")
         counter.text = String(index)
         */
        
        // 1...5 그다음 5....1 이렇게 진행하는 문제
        if index == 5 {
            direction = 0
        }
        else if index == 1{
            direction = 1
        }
        if direction == 1{
            index += 1;}
        else if direction == 0{
            index = index - 1
        }
        
        myimageview.image = UIImage(named: "frame\(index).png")
        counter.text = String(index)      
    }
}
