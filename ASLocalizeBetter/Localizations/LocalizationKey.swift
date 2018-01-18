//
//  LocalizationKey.swift
//  ASLocalizeBetter
//
//  Created by Andrea on 17/01/2018.
//  Copyright © 2018 Andrea Stevanato. All rights reserved.
//

import Foundation

// Table name refers to the strings filename
// How to use: somewhere on the code GenericKey.app_name.localized

enum GenericKey: String, Localizable {

    case header_title

    var tableName: String {
        return "Generic"
    }
}

enum Section1Key: String, Localizable {

    case title

    var tableName: String {
        return "Section1"
    }
}

enum Section2Key: String, Localizable {

    case title

    var tableName: String {
        return "Section2"
    }
}

enum Section3Key: String, Localizable {

    case title
    case description
    case missing_key

    var tableName: String {
        return "Section3"
    }
}
