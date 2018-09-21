//
//  SecondViewController.swift
//  StyleMe
//
//  Created by John Washington on 5/23/18.
//  Copyright © 2018 Team StyleMe. All rights reserved.
//

import UIKit

class Picker: UIViewController, UITableViewDelegate {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var Male: UIButton!
    @IBOutlet weak var Female: UIButton!
    @IBOutlet weak var nonConforming: UIButton!
    var genderToSend: Gender = .male
    
    @IBAction func maleButton(_ sender: UIButton) {
        print("Male button was clicked")
        genderToSend = .male
        self.performSegue(withIdentifier: "toShirtScreen", sender: self)
        
    }
    
    @IBAction func clickFemale(_ sender: UIButton) {
        print("Female button was clicked")
        genderToSend = .female
        self.performSegue(withIdentifier: "toShirtScreen", sender: self)
        
    }
    
    @IBAction func nonConformingClick(_ sender: UIButton) {
        print("Gender non conforming button was clicked")
        genderToSend = .nonConforming
        self.performSegue(withIdentifier: "toShirtScreen", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let shirtScreen = segue.destination as? FourthViewController else {return}
        shirtScreen.gender = genderToSend
    }
    
    }

