//
//  ViewController.swift
//  ios-localize-me
//
//  Created by Xiao Lu on 1/16/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var localeLabel: UILabel!
    @IBOutlet var flagImageView: UIImageView!
    @IBOutlet var labels: [UILabel]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locale = NSLocale.currentLocale()
        let currentLangID = (NSLocale.preferredLanguages() as [String])[0]
        let displayLang = locale.displayNameForKey(NSLocaleLanguageCode, value: currentLangID)
        let capitalized = displayLang?.capitalizedStringWithLocale(locale)
        localeLabel.text = capitalized
        
        labels[0].text = NSLocalizedString("LABEL_ONE", comment: "The numeber 1")
        labels[1].text = NSLocalizedString("LABEL_TWO", comment: "The numeber 2")
        labels[2].text = NSLocalizedString("LABEL_THREE", comment: "The numeber 3")
        labels[3].text = NSLocalizedString("LABEL_FOUR", comment: "The numeber 4")
        labels[4].text = NSLocalizedString("LABEL_FIVE", comment: "The numeber 5")
        
        let flagFile = NSLocalizedString("FLAG_FILE", comment: "Name of the flag")
        flagImageView.image = UIImage(named: flagFile)
    }

}

