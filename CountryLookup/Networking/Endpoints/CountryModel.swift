//
//  CountryModel.swift
//  CountryLookup
//
//  Created by Amr El Shazly on 13/11/2025.
//

import Foundation

struct Country: Codable {
    let name: CountryName
    let currencies: [String: CountryCurrency]
    let capital: [String]
    
    init(
        name: CountryName,
        currencies: [String : CountryCurrency],
        capital: [String]
    ) {
        self.name = name
        self.currencies = currencies
        self.capital = capital
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(CountryName.self, forKey: .name) ?? CountryName(common: "NA", official: "NA")
        self.currencies = try container.decodeIfPresent([String : CountryCurrency].self, forKey: .currencies) ?? ["NA": CountryCurrency(name: "NA", symbol: "NA")]
        self.capital = try container.decodeIfPresent([String].self, forKey: .capital) ?? ["NA"]
    }
}

struct CountryName: Codable {
    let common: String
    let official: String
    
    init(common: String, official: String) {
        self.common = common
        self.official = official
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.common = try container.decodeIfPresent(String.self, forKey: .common) ?? "NA"
        self.official = try container.decodeIfPresent(String.self, forKey: .official) ?? "NA"
    }
}

struct CountryCurrency: Codable {
    let name: String
    let symbol: String
    
    init(name: String, symbol: String) {
        self.name = name
        self.symbol = symbol
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? "NA"
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol) ?? "NA"
    }
}

