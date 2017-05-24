//
//  ViewController.swift
//  TestViewController
//
//  Created by Giridhar Bhujanga on 23/05/17.
//  Copyright © 2017 Giridhar Bhujanga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "go", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! SecondViewController
        destVC.nameToDisplay = nameField.text!
    }


}

