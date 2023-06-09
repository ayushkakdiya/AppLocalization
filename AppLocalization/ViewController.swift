//
//  ViewController.swift
//  AppLocalization
//
//  Created by Ayush kakdiya on 19/04/23.
//

enum language: String {
    case fi
    case en
    case hi
    case it
    case ru
}


import UIKit
import FirebaseCore

class ViewController: UIViewController {

    @IBOutlet weak var selectedLanguageSegmant: UISegmentedControl!
    @IBOutlet weak var nameLable: UILabel!
    
    
//    var areLanguage: [language] = [.en, .fi, .hi, .it, .ru]
    var arrLanguage: [String] = ["fi", "en", "hi", "it", "ru"]
    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()

    }

    @IBAction func laguageSelactsagmantAction(_ sender: UISegmentedControl) {
        nameLable.text = "FullNameKey".localized(language: arrLanguage[sender.selectedSegmentIndex])
    }
    
}

