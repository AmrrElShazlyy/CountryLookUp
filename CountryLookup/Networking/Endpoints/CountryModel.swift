//
//  CountryModel.swift
//  CountryLookup
//
//  Created by Amr El Shazly on 13/11/2025.
//

import Foundation

struct Country: Codable {
    let name: CountryName?
    let currencies: [String: CountryCurrency]?
    let capital: [String]?
}

struct CountryName: Codable {
    let common: String
    let official: String
}

struct CountryCurrency: Codable {
    let name: String?
    let symbol: String?
}

