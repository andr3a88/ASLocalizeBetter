//
//  LocalizableProtocol.swift
//  ASLocalizeBetter
//
//  Created by Andrea on 17/01/2018.
//  Copyright © 2018 Andrea Stevanato. All rights reserved.
//

import Foundation

protocol Localizable {
    var tableName: String { get }
    var localized: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var localized: String {
        return rawValue.localized(tableName: tableName)
    }
}

extension String {

    /// Returns the localized string
    ///
    /// - Parameters:
    ///   - bundle: The bundle containing the strings file
    ///   - tableName: The table name (default localizable)
    /// - Returns: The string localized
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
