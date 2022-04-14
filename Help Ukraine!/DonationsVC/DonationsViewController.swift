//
//  DonationsViewController.swift
//  Help Ukraine!
//
//  Created by Erik Jimenez on 3/24/22.
//

import UIKit

class DonationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var donationsLabel: UILabel!
    
}

extension DonationsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "donationTableCell", for: indexPath) as? DonationsTableViewCell else {return UITableViewCell()}
        
//        cell.donations = donations
        
        return cell
    }
    
    
    
}
