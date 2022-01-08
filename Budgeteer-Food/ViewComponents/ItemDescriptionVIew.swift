//
//  ItemDescriptionVIew.swift
//  Budgeteer-Food
//
//  Created by Brittany Rima on 1/7/22.
//

import SwiftUI

struct ItemDescriptionVIew: View {
    let headline: String
    let text: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(headline)
                .font(.headline)
                .foregroundColor(ColorManager.purple)
            Divider()
            Text(text)
                .font(.subheadline)
                .foregroundColor(ColorManager.gradientLight)
                .multilineTextAlignment(.leading)
        }
        .frame(width: 300)
    }
}

struct ItemDescriptionVIew_Previews: PreviewProvider {
    static var previews: some View {
        ItemDescriptionVIew(headline: "Description", text: "Yummy yummy hamburger. This is a description of what you could be eating in the parks. So so so yummy.")
    }
}
