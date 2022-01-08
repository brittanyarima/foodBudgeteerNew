//
//  RestaurantView.swift
//  Budgeteer-Food
//
//  Created by Brittany Rima on 1/6/22.
//

import SwiftUI

struct RestaurantView: View {
    //MARK: - PROPERTIES
    let parks: Parks
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            ColorManager.background
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical) {
                ForEach(parks.restaurants) { restaurant in
                    NavigationLink(destination: MenuListView(restaurant: restaurant, park: parks)) {
                        ListItemView(icon: restaurant.type, title: restaurant.name, subtitle: restaurant.type, price: nil)
                        
                    }
                    
                    
                }
                .navigationTitle(parks.name)
                
            }
        }
    }
}

//MARK: - PREVIEW
struct RestaurantView_Previews: PreviewProvider {
    static let parks: [Parks] = Bundle.main.decode("disneyWorldParks.json")
    
    static var previews: some View {
        RestaurantView(parks: parks[0])
            .environmentObject(Plan())
            
    }
}
