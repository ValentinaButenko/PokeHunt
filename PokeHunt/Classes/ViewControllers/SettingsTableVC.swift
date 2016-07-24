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

    @IBOutlet weak var autorefreshCell: UITableViewCell!
    @IBOutlet weak var displayPokemonsCell: UITableViewCell!
    @IBOutlet weak var displayPokestopCell: UITableViewCell!
    @IBOutlet weak var displayJymsCell: UITableViewCell!

    var autorefreshSwitch: UISwitch!
    var displayPokeSwitch: UISwitch!
    var displayPokeStopSwitch: UISwitch!
    var displayJymsSwitch: UISwitch!
    var stepsArea: UITextField!

    let imgOn = UIImage(named: R.image.bgSwitch.name)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
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
        headerText.font = UIFont(name: "OpenSans-Regular", size: 10)

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
        return 36
    }

    func setup(){
        self.setupAutorefreshCell()
        self.setupDisplayPokemonsCell()
        self.setupDisplayPokestopCell()
        self.setupDisplayJymsCell()
    }

    func setupAutorefreshCell(){
        let autorefreshSwitch = UISwitch()

        autorefreshSwitch.sizeToFit()
        autorefreshSwitch.onTintColor = UIColor(patternImage: imgOn!)
        autorefreshSwitch.backgroundColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        autorefreshSwitch.tintColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        autorefreshSwitch.layer.cornerRadius = 18.0
        autorefreshSwitch.transform = CGAffineTransformMakeScale(1.27, 1.27)
        autorefreshSwitch.setOn(true, animated: false)

        let topSeparator = UIView(frame: CGRect(x: 0, y: 0, width: autorefreshCell.frame.size.width, height: 1))
        topSeparator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        let separator = UIView(frame: CGRect(x: 0, y: autorefreshCell.frame.size.height - 1, width: autorefreshCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)

        autorefreshCell.addSubview(autorefreshSwitch)
        autorefreshCell.addSubview(topSeparator)
        autorefreshCell.addSubview(separator)

        autorefreshSwitch.snp_makeConstraints { (make) in
            make.top.equalTo(autorefreshCell).inset(15)
            make.trailing.equalTo(autorefreshCell).inset(28)
        }
        self.autorefreshSwitch = autorefreshSwitch
    }

    func setupDisplayPokemonsCell(){
        let displayPokeSwitch = UISwitch()

        displayPokeSwitch.sizeToFit()
        displayPokeSwitch.onTintColor = UIColor(patternImage: imgOn!)
        displayPokeSwitch.backgroundColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        displayPokeSwitch.tintColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        displayPokeSwitch.layer.cornerRadius = 18.0
        displayPokeSwitch.transform = CGAffineTransformMakeScale(1.27, 1.27)
        displayPokeSwitch.setOn(false, animated: false)

        let separator = UIView(frame: CGRect(x: 0, y: displayPokemonsCell.frame.size.height - 1, width: displayPokemonsCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)

        displayPokemonsCell.addSubview(displayPokeSwitch)
        displayPokemonsCell.addSubview(separator)

        displayPokeSwitch.snp_makeConstraints { (make) in
            make.top.equalTo(displayPokemonsCell).inset(15)
            make.trailing.equalTo(displayPokemonsCell).inset(28)
        }
        self.displayPokeSwitch = displayPokeSwitch
    }

    func setupDisplayPokestopCell(){
        let displayPokestopSwitch = UISwitch()

        displayPokestopSwitch.sizeToFit()
        displayPokestopSwitch.onTintColor = UIColor(patternImage: imgOn!)
        displayPokestopSwitch.backgroundColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        displayPokestopSwitch.tintColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        displayPokestopSwitch.layer.cornerRadius = 18.0
        displayPokestopSwitch.transform = CGAffineTransformMakeScale(1.27, 1.27)
        displayPokestopSwitch.setOn(true, animated: false)

        let separator = UIView(frame: CGRect(x: 0, y: displayPokestopCell.frame.size.height - 1, width: displayPokestopCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)

        displayPokestopCell.addSubview(displayPokestopSwitch)
        displayPokestopCell.addSubview(separator)

        displayPokestopSwitch.snp_makeConstraints { (make) in
            make.top.equalTo(displayPokestopCell).inset(15)
            make.trailing.equalTo(displayPokestopCell).inset(28)
        }
        self.displayPokeStopSwitch = displayPokestopSwitch
    }

    func setupDisplayJymsCell(){
        let displayJymsSwitch = UISwitch()

        displayJymsSwitch.sizeToFit()
        displayJymsSwitch.onTintColor = UIColor(patternImage: imgOn!)
        displayJymsSwitch.backgroundColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        displayJymsSwitch.tintColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        displayJymsSwitch.layer.cornerRadius = 18.0
        displayJymsSwitch.transform = CGAffineTransformMakeScale(1.27, 1.27)
        displayJymsSwitch.setOn(true, animated: false)

        displayJymsCell.addSubview(displayJymsSwitch)

        displayJymsSwitch.snp_makeConstraints { (make) in
            make.top.equalTo(displayJymsCell).inset(15)
            make.trailing.equalTo(displayJymsCell).inset(28)
        }
        self.displayJymsSwitch = displayJymsSwitch
    }
   }

