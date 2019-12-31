//
//  ViewController.swift
//  ViewControllerLifecycle
//
//  Created by Angela Yu on 28/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("VC1 viewDidLoad Called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("VC1 viewWillAppear Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("VC1 viewDidAppear Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("VC1 viewWillDisappear Called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("VC1 viewDidDisappear Called")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as! ViewController2
        
        // This will crash the app because the UILabel does not exist yet and is nil
        // vc2.label.text = "Hello from VC1"
        
        // This works because properties of VC2 have been declared
        vc2.labelText = "Hello from VC1"
        
        
    }
    

}

