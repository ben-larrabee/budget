//
//  BudgetViewController.swift
//  EFAB
//
//  Created by Ben Larrabee on 11/1/16.
//  Copyright © 2016 Ben Larrabee. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var timeControl: UISegmentedControl!
  @IBOutlet weak var backButton: UIButton!
  @IBOutlet weak var forwardButton: UIButton!
  
  let refreshControl = UIRefreshControl()
  var currentDate = Utils.adjustedTime()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    refreshControl.addTarget(self, action: #selector(BudgetViewController.loadCategories), for: .valueChanged)
    tableView.addSubview(refreshControl)
    
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    if !WebServices.shared.userAuthTokenExists() || WebServices.shared.userAuthTokenExpired() {
      
      performSegue(withIdentifier: "PresentLoginNoAnimation", sender: self)      
    }

  }
  
  func loadCategories() {
    self.refreshControl.endRefreshing()
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
  
  @IBAction func logoutTapped(_ sender: UIBarButtonItem) {
    UserStore.shared.logout {
      self.performSegue(withIdentifier: "PresentLogin", sender: self)
    }
  }
  
  @IBAction func backButtonTapped(_ sender: UIButton) {
  }
  
  @IBAction func forwardButtonTapped(_ sender: UIButton) {
  }
  
  @IBAction func timePeriodChanged(_ sender: UISegmentedControl) {
  }
  
  
}

extension BudgetViewController : UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell()
  }
}
