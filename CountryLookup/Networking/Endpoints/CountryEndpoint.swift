//
//  CountryEndpoint.swift
//  CountryLookup
//
//  Created by Amr El Shazly on 13/11/2025.
//

import Foundation

enum CountryEndpoint: APIEndpoint {
    case country(name: String)
    
    var baseURL: URL {
        guard let url = URL(string: "https://restcountries.com/v3.1/") else {
            fatalError("Invalid base URL string.")
        }
        return url
    }
    
    var path: String {
        switch self {
        case .country(let name):
            return "name/\(name)"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .country:
            return .get
        }
    }
    
    var headers: [String : String]? {
        nil
    }
    
    var body: Data? {
        nil
    }
}
