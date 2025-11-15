//
//  CountryDetailsView.swift
//  CountryLookup
//
//  Created by Amr El Shazly on 14/11/2025.
//

import SwiftUI

struct CountryDetailsView: View {
    let country: Country
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CountryDetailsView(
        country: Country(
            name: CountryName(common: "Egypt", official: "Egypt"),
            currencies: ["EGP" : CountryCurrency(
                name: "Egyptian Pound",
                symbol: "$"
            )],
            capital: ["Cairo"],
            flag: "🏳️",
            flags: CountryFlags(svg: nil)
        )
    )
}
