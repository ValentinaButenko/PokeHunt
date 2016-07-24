//
//  SettingsTableVC.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/23/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import SnapKit

class SettingsTableVC: UITableViewController {

    var autorefreshSwitch: UISwitch!
    var displayPokeSwitch: UISwitch!
    var displayPokeStopSwitch: UISwitch!
    var displayJymsSwitch: UISwitch!
    var stepsArea: UITextField!

    let img = UIImage(named: R.image.bgSwitch.name)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }

    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect.zero)
        let headerText = UILabel()

        headerText.text = "Settings"
        headerText.font = UIFont(name: "OpenSans-Semibold", size: 14)

        headerText.textColor = UIColor(red: (124/255), green: (124/255), blue: (124/255), alpha: 1.0)
        headerView.backgroundColor = UIColor(red: (243/255), green: (243/255), blue: (243/255), alpha: 1.0)

        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.addSubview(headerText)

        headerText.snp_makeConstraints { (make) in
            make.top.equalTo(headerView).inset(8)
            make.leading.equalTo(headerView).inset(15)
        }
        return headerView
    }

    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 37
    }

   }
