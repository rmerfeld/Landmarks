//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Reinhard Merfeld on 30.12.22.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var data: ModelData
    
    var body: some View {
        NavigationView {
            List {
                data.featured[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(data.categories.keys.sorted(), id: \.self) {
                    categ in
                    CategoryRow(categoryName: categ, items: data.categories[categ]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
