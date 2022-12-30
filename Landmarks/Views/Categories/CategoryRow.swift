//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Reinhard Merfeld on 30.12.22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15){
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }

                        
                    }
                }
            }
            .frame(height: 185)
            
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var category = "Mountains"
    static var landmarks = ModelData().categories[category]
    
    static var previews: some View {
        CategoryRow(categoryName: category, items: landmarks!)
    }
}
