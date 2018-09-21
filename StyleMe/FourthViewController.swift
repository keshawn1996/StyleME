//
//  FourthViewController.swift
//  StyleMe
//
//  Created by John Washington on 5/23/18.
//  Copyright © 2018 Team StyleMe. All rights reserved.
//

import UIKit

enum Gender {
    case male
    case female
    case nonConforming
}

class FourthViewController: UIViewController {

    @IBOutlet weak var styleLabel: UITextField!
    
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var viewTwo: UIView!
    var gender: Gender = .male
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewOneTap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        
        let viewTwoTap = UITapGestureRecognizer(target: self, action: #selector(self.handleNewTap))
        // Do any additional setup after loading the view.
        self.viewOne.addGestureRecognizer(viewOneTap)
        self.viewTwo.addGestureRecognizer(viewTwoTap)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        switch gender {
        case .male:
            //here you will set image one and two
            imageOne.image = UIImage(named: "mensCasual")
            imageTwo.image = UIImage(named: "mensBP")
        case .female:
            imageOne.image = UIImage(named: "womensCasual")
            imageTwo.image = UIImage(named: "womensBP")
        case .nonConforming:
            imageOne.image = UIImage (named: "nonCasual")
            imageTwo.image = UIImage (named: "nonBP")
        }
    }
    @objc func handleTap()
    {
        imageOne.layer.borderColor = UIColor.blue.cgColor
        imageOne.layer.borderWidth = 5
    }
    @objc func handleNewTap()
    {
        imageTwo.layer.borderColor = UIColor.brown.cgColor
        imageTwo.layer.borderWidth = 5
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } 

}
