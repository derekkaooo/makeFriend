//
//  ViewController.swift
//  makeFriend
//
//  Created by Derek on 2018/7/20.
//  Copyright © 2018年 Derek. All rights reserved.
//

import UIKit
import GameKit


class ViewController: UIViewController {

    
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var sucess: UILabel!
    
    @IBOutlet weak var fail: UILabel!
    
    @IBAction func refresh(_ sender: UIButton) {
        let answer = GKRandomSource.sharedRandom().nextInt(upperBound: 3) + 1
        myImage.image = UIImage(named: "\(answer)")
        sucess.isHidden = true
        fail.isHidden = true
        ladyName()
    }
    
    @IBAction func okButton(_ sender: UIButton) {
        sucess.isHidden = false
        
    }
    
    @IBAction func noButton(_ sender: UIButton) {
        fail.isHidden = false
    }
    
    func ladyName(){
        if myImage.image == UIImage(named: "1"){
            myName.text = "Lisa"
        }else if myImage.image == UIImage(named: "2"){
            myName.text = "Ruby"
        }else{
            myName.text = "Selina"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }


}

