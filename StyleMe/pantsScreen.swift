//
//  pantsScreen.swift
//  StyleMe
//
//  Created by John Washington on 5/23/18.
//  Copyright © 2018 Team StyleMe. All rights reserved.
//

import UIKit

enum newGender {
    case male
    case female
    case nonConforming
}

class pantsScreen: UIViewController {

    @IBOutlet weak var pantLabel: UILabel!
    
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var viewThree: UIView!
    
    @IBOutlet weak var viewFour: UIView!
    
    
    
    var newImages: newGender = .male
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewThreeTap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
        
        let viewFourTap = UITapGestureRecognizer(target: self, action: #selector(self.handleNewTap))
        
        
        self.viewThree.addGestureRecognizer(viewThreeTap)
        self.viewFour.addGestureRecognizer(viewFourTap)
        
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
            switch newImages {
            case .male:
                imageOne.image = UIImage(named: "mensJeans")
                imageTwo.image = UIImage(named: "mensSlacks")
            case .female:
                imageOne.image = UIImage(named: "womensJeans")
                imageTwo.image = UIImage(named: "womensSlacks")
            case .nonConforming:
                imageOne.image = UIImage (named: "nonJeans")
                imageTwo.image = UIImage (named: "nonSlacks")
            }
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    



