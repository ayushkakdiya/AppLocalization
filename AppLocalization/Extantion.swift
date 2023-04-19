//
//  Extantion.swift
//  AppLocalization
//
//  Created by Ayush kakdiya on 19/04/23.
//

import Foundation


extension String {
    func localized(language: String) -> String {
        let path = Bundle.main.path(forResource: language, ofType: "lproj") {
            let bundle = Bundle(path: path!)!
            return NSLocalizedString(self, bundle: bundle , comment: "")
        }
        return ""
    }
}

