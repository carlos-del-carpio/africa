//
//  ContentView.swift
//  Africa
//
//  Created by Carlos Del Carpio on 5/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let animals: [Animal] = Bundle.main.decode("animals.json")
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(
                        destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }//:NAVIGATION_LINK
                }//:LOOP
            }//:LIST
            .navigationBarTitle("Africa", displayMode: .large)
        }//:NAVIGATION_VIEW
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
