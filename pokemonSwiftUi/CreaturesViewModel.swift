//
//  CreaturesViewModel.swift
//  pokemonSwiftUi
//
//  Created by marvin evins on 11/6/22.
//

import Foundation

//https://pokeapi.co/api/v2/pokemon/


class CreaturesViewModel: ObservableObject{
    
    private struct Returned : Codable{
        var count:Int
        var next: String
    }
    var urlString = "https://pokeapi.co/api/v2/pokemon/"
    func getData() async {
        
        guard let url = URL(string: urlString) else{
            print("error: could not create a url from \(urlString) ")
            return
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: url)
            
            guard let returned = try? JSONDecoder().decode(Returned.self, from: data) else{
                return
            }
        }catch{
            print("Error: could notget data from \(urlString)")
        }
    }
    
}
