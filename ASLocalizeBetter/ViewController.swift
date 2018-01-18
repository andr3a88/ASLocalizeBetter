//
//  ViewController.swift
//  ASLocalizeBetter
//
//  Created by Andrea on 17/01/2018.
//  Copyright © 2018 Andrea Stevanato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets

    @IBOutlet weak var genericLabel: UILabel! {
        didSet {
            genericLabel.text = GenericKey.header_title.localized
        }
    }
    
    @IBOutlet weak var section1Label: UILabel! {
        didSet {
            section1Label.text = Section1Key.title.localized
        }
    }

    @IBOutlet weak var section2Label: UILabel! {
        didSet {
            section2Label.text = Section2Key.title.localized
        }
    }

    @IBOutlet weak var section3Label: UILabel! {
        didSet {
            section3Label.text = Section3Key.title.localized
        }
    }

    @IBOutlet weak var missingDescriptionLabel: UILabel! {
        didSet {
            missingDescriptionLabel.text = Section3Key.description.localized
        }
    }

    @IBOutlet weak var bottomLabel: UILabel! {
        didSet {
            bottomLabel.text = Section3Key.missing_key.localized
        }
    }

    // MARK: Methods

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

