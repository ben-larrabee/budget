//
//  AddCategoryVC.swift
//  EFAB
//
//  Created by Ben Larrabee on 11/2/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import UIKit

class AddCategoryVC: UIViewController {
  @IBOutlet weak var nameField: UITextField!
  @IBOutlet weak var amountField: UITextField!

  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

  // MARK: - IBActions
  @IBAction func saveTapped(_ sender: UIBarButtonItem) {
    
  }
  
}
