//
//  ContentView.swift
//  pokemonSwiftUi
//
//  Created by marvin evins on 11/6/22.
//

import SwiftUI

struct CreaturesListView: View {
    
    var creatures = ["pikachu", "squirtle","charzard"]
    var body: some View {
        NavigationStack{
            List(){
                ForEach(creatures, id: \.self){creature in
                    Text(creature)
                        .font(.title2)
                    
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("Pokemon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CreaturesListView()
    }
}
