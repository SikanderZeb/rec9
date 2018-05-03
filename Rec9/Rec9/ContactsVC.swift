//
//  ContactsVC.swift
//  Rec9
//
//  Created by Sikander Zeb on 5/3/18.
//  Copyright © 2018 Sikander. All rights reserved.
//

import UIKit

class ContactsVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension ContactsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15//(Utilities.shared.productsArray?.count)!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PostCell
        //cell.delegate = self
        //let the cell know its indexPath
        cell.indexPath = indexPath
        //cell.configCell(with: Utilities.shared.productsArray![indexPath.row], shouldPlay: false)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
