//
//  UIStackViewController.swift
//  UIStackView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class UIStackViewController: UIViewController {

    @IBOutlet weak var editBtn: UIBarButtonItem!
    @IBOutlet weak var bottomView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnEditClick(_ sender: UIBarButtonItem) {
        editBtn.title = "Done"
        editBtn.action = #selector(btnDoneClick)
        bottomView.isHidden = true
    }
    @objc
    func btnDoneClick(){
        editBtn.title = "Edit"
        bottomView.isHidden = false
        editBtn.action = #selector(btnEditClick(_:))
    }


}
extension UIStackViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
}
