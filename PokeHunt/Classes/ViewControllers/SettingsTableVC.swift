//
//  SettingsTableVC.swift
//  PokeHunt
//
//  Created by Valentina Butenko on 7/23/16.
//  Copyright © 2016 Fantastik Solution. All rights reserved.
//

import UIKit
import SnapKit
import FirebaseAnalytics
import iRate

class SettingsTableVC: UITableViewController, UITextFieldDelegate{

    @IBOutlet weak var autorefreshCell: UITableViewCell!
    @IBOutlet weak var displayPokemonsCell: UITableViewCell!
    @IBOutlet weak var displayPokestopCell: UITableViewCell!
    @IBOutlet weak var displayJymsCell: UITableViewCell!
    @IBOutlet weak var stepsAreaCell: UITableViewCell!
    @IBOutlet weak var rateUsCell: UITableViewCell!
    @IBOutlet weak var logOutCell: UITableViewCell!
    @IBOutlet weak var aboutUsCell: UITableViewCell!
    @IBOutlet weak var privacyPolicyCell: UITableViewCell!

    var autorefreshSwitch: UISwitch!
    var displayPokeSwitch: UISwitch!
    var displayPokeStopSwitch: UISwitch!
    var displayJymsSwitch: UISwitch!
    @IBOutlet weak var stepsArea: UITextField!

    let imgOn = UIImage(named: R.image.bgSwitch.name)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()

        tableView.delegate = self
        tableView.dataSource = self

        let tap = UITapGestureRecognizer(target: self, action: #selector(SettingsTableVC.dismissKeyboard))

        view.addGestureRecognizer(tap)
        tap.cancelsTouchesInView = false
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
        headerText.font = UIFont(name: "OpenSans", size: 15)

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

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        let cell = self.tableView.cellForRowAtIndexPath(indexPath)

        guard let identifier = cell?.reuseIdentifier else{
            return print(NSError.description())
        }

        switch (identifier) {
        case "aboutUs":
            print("aboutUs tapped")
            let vc = AboutUsVC()
            self.navigationController?.pushViewController(vc, animated: true)
        case "privacyPolicy":
            let vc = PrivacyPolicyVC()
            self.navigationController?.pushViewController(vc, animated: true)
        case "rateUs":
            iRate.sharedInstance().openRatingsPageInAppStore()
        case "logOut":
            print("logOut tapped")
        default:
            print("Nothing Happens")
        }
    }

    func setup(){
        self.setupNavigationController()
        self.setupAutorefreshCell()
        self.setupDisplayPokemonsCell()
        self.setupDisplayPokestopCell()
        self.setupDisplayJymsCell()
        self.setupStepsAreaCell()
        self.setupPrivacyPolicyCell()
        self.setupAboutUsCell()
        self.setupRateUsCell()
        self.setupLogOutCell()
        self.addDoneButtonOnKeyboard()
    }

    func setupNavigationController(){
        guard let nc = self.navigationController else{
            return
        }

        let titleView = UIImageView(image: R.image.pokehunt()?.imageWithRenderingMode(.AlwaysOriginal))

        nc.navigationBar.barTintColor = UIColor(white: (255/255), alpha: 1.0)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: R.image.back()?.imageWithRenderingMode(.AlwaysOriginal),
                                                                style: .Plain,
                                                                target: self,
                                                                action: #selector(SettingsTableVC.leftBarButtonAction(_:)))
        self.navigationItem.titleView = titleView
    }

    func setupAutorefreshCell(){
        let autorefreshSwitch = UISwitch()

        autorefreshSwitch.sizeToFit()
        autorefreshSwitch.onTintColor = UIColor(patternImage: imgOn!)
        autorefreshSwitch.backgroundColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        autorefreshSwitch.tintColor = UIColor(red: (167/255), green: (167/255), blue: (167/255), alpha: 1.0)
        autorefreshSwitch.layer.cornerRadius = 18.0
        autorefreshSwitch.transform = CGAffineTransformMakeScale(1.27, 1.27)

        if Settings.instance.aurorefresh == true {
             autorefreshSwitch.setOn(true, animated: false)
        }
        else{
            autorefreshSwitch.setOn(false, animated: false)
        }


        autorefreshSwitch.addTarget(self, action: #selector(SettingsTableVC.refreshSwitchChangeState(_:)), forControlEvents: .ValueChanged)

        let topSeparator = UIView(frame: CGRect(x: 0, y: 0, width: autorefreshCell.frame.size.width, height: 1))
        topSeparator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        let separator = UIView(frame: CGRect(x: 0, y: autorefreshCell.frame.size.height - 1, width: autorefreshCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        autorefreshCell.selectionStyle = .None

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

        if Settings.instance.showPokemons == true {
            displayPokeSwitch.setOn(true, animated: false)
        }
        else{
            displayPokeSwitch.setOn(false, animated: false)
        }


        displayPokeSwitch.addTarget(self, action: #selector(SettingsTableVC.showPokeSwitchChangeState(_:)), forControlEvents: .ValueChanged)

        let separator = UIView(frame: CGRect(x: 0, y: displayPokemonsCell.frame.size.height - 1, width: displayPokemonsCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        displayPokemonsCell.selectionStyle = .None

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

        if Settings.instance.showPokestop == true {
            displayPokestopSwitch.setOn(true, animated: false)
        }
        else{
            displayPokestopSwitch.setOn(false, animated: false)
        }

        displayPokestopSwitch.addTarget(self, action: #selector(SettingsTableVC.showPokestopSwitchChangeState(_:)), forControlEvents: .ValueChanged)

        let separator = UIView(frame: CGRect(x: 0, y: displayPokestopCell.frame.size.height - 1, width: displayPokestopCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        displayPokestopCell.selectionStyle = .None

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

        if Settings.instance.showJym == true {
            displayJymsSwitch.setOn(true, animated: false)
        }
        else{
            displayJymsSwitch.setOn(false, animated: false)
        }

        displayJymsSwitch.addTarget(self, action: #selector(SettingsTableVC.showJymsSwitchChangeState(_:)), forControlEvents: .ValueChanged)

        let separator = UIView(frame: CGRect(x: 0, y: displayJymsCell.frame.size.height - 1, width: displayJymsCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        displayJymsCell.selectionStyle = .None

        displayJymsCell.addSubview(displayJymsSwitch)
        displayJymsCell.addSubview(separator)

        displayJymsSwitch.snp_makeConstraints { (make) in
            make.top.equalTo(displayJymsCell).inset(15)
            make.trailing.equalTo(displayJymsCell).inset(28)
        }
        self.displayJymsSwitch = displayJymsSwitch
    }

    func setupStepsAreaCell(){
        let separator = UIView(frame: CGRect(x: 0, y: stepsAreaCell.frame.size.height - 1, width: stepsAreaCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)

        self.stepsArea.text = String(Settings.instance.stepsArea)
        stepsAreaCell.selectionStyle = .None
        
        stepsAreaCell.addSubview(separator)
    }

    func setupPrivacyPolicyCell(){
        let separator = UIView(frame: CGRect(x: 0, y: privacyPolicyCell.frame.size.height - 1, width: privacyPolicyCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        privacyPolicyCell.addSubview(separator)
        
        privacyPolicyCell.accessoryType = .DetailDisclosureButton
        privacyPolicyCell.accessoryView = UIImageView(image: UIImage(named: R.image.disclosure.name))
        privacyPolicyCell.selectionStyle = .None
    }

    func setupAboutUsCell(){
        let separator = UIView(frame: CGRect(x: 0, y: aboutUsCell.frame.size.height - 1, width: aboutUsCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        aboutUsCell.addSubview(separator)

        aboutUsCell.accessoryType = .DetailDisclosureButton
        aboutUsCell.accessoryView = UIImageView(image: UIImage(named: R.image.disclosure.name))
        aboutUsCell.selectionStyle = .None
    }

    func setupRateUsCell(){
        let separator = UIView(frame: CGRect(x: 0, y: rateUsCell.frame.size.height - 1, width: rateUsCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        rateUsCell.addSubview(separator)
        rateUsCell.selectionStyle = .None
    }

    func setupLogOutCell(){
        let separator = UIView(frame: CGRect(x: 0, y: logOutCell.frame.size.height - 1, width: logOutCell.frame.size.width, height: 1))
        separator.backgroundColor = UIColor(red: (170/255), green: (170/255), blue: (170/255), alpha: 0.8)
        logOutCell.addSubview(separator)
        rateUsCell.selectionStyle = .None
    }

    func refreshSwitchChangeState(sender: UISwitch){
        FIRAnalytics.logEventWithName("Change_refresh_state", parameters: nil)
        if sender.on{
            Settings.instance.aurorefresh = true
        }
        else{
            Settings.instance.aurorefresh = false
        }
    }

    func showPokeSwitchChangeState(sender: UISwitch){
        FIRAnalytics.logEventWithName("Change_show_pokeshow_state", parameters: nil)
        if sender.on{
            Settings.instance.showPokemons = true
        }
        else{
            Settings.instance.showPokemons = false
        }
    }

    func showPokestopSwitchChangeState(sender: UISwitch){
        FIRAnalytics.logEventWithName("Change_show_pokestop_state", parameters: nil)
        if sender.on{
            Settings.instance.showPokestop = true
        }
        else{
            Settings.instance.showPokestop = false
        }
    }

    func showJymsSwitchChangeState(sender: UISwitch){
        FIRAnalytics.logEventWithName("Change_show_jym_state", parameters: nil)
        if sender.on{
            Settings.instance.showJym = true
        }
        else{
            Settings.instance.showJym = false
        }
    }

    func addDoneButtonOnKeyboard()
    {
        let doneToolbar = UIToolbar(frame: CGRectMake(0, 0, 320, 50))
        doneToolbar.barStyle = UIBarStyle.BlackOpaque

        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Done, target: self, action: #selector(SettingsTableVC.doneButtonAction(_:)))
        done.tintColor = UIColor.whiteColor()

        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()

        self.stepsArea.inputAccessoryView = doneToolbar
        self.stepsArea.inputAccessoryView = doneToolbar
    }

    func doneButtonAction(sender: UIBarButtonItem){
        print("user tapped done")
        self.dismissKeyboard()
    }

    func leftBarButtonAction(sender: UIBarButtonItem){
         self.navigationController?.popViewControllerAnimated(true)
    }

    func dismissKeyboard() {
        view.endEditing(true)

        guard let finalArea =  self.stepsArea.text else{
            return
        }

        guard let finalIntArea = Int(finalArea) else{
            return self.stepsArea.text = String(Settings.instance.stepsArea)
        }

        if Int(Settings.instance.stepsArea) != finalIntArea{
            let statsParams = ["New_Steps_Area" : finalIntArea]
            FIRAnalytics.logEventWithName("Steps_area_chaged", parameters: statsParams)
            Settings.instance.stepsArea = finalIntArea
            print("User did change text field")
        }
        else{
            print("User did not chenge text field")
        }
    }
}

