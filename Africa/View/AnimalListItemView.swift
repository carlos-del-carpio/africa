//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Carlos Del Carpio on 5/4/21.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Lion")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text("The world's most social felines, lions roam the savannas and grasslands of the African continent, hunting cooperatively and raising cubs in prides.")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                    
            }//:VSTACK
        }//:HSTACK
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
