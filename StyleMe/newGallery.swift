//
//  newGallery.swift
//  StyleMe
//
//  Created by John Washington on 5/24/18.
//  Copyright © 2018 Team StyleMe. All rights reserved.
//

import UIKit

class newGallery: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var newImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    imageView.image = newImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}
