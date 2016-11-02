//
//  ExpenseVC.swift
//  EFAB
//
//  Created by Ben Larrabee on 11/2/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import UIKit

class ExpenseVC: UIViewController {
  @IBOutlet weak var amountLabel: UITextField!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var noteLabel: UITextField!
  @IBOutlet weak var datePicker: UIDatePicker!
  
  

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
  // MARK: - IBAction
  @IBAction func dateChanged(_ sender: UIDatePicker) {
  }
  @IBAction func saveTapped(_ sender: UIBarButtonItem) {
  }
}
