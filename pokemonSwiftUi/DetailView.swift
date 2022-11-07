//
//  DetailView.swift
//  pokemonSwiftUi
//
//  Created by marvin evins on 11/7/22.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Poke Name")
                .font(Font.custom("Avenir Next Condensed", size: 60 ))
                .bold()
                .minimumScaleFactor(0.5)
                .lineLimit(1)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
                .padding(.bottom)
            
            HStack{
                Image(systemName: "figure.run.circle")
                    .resizable()
                    .scaledToFit()
                    .backgroundStyle(.white)
                    .frame(maxHeight:96)
                    .cornerRadius(16)
                    .shadow(radius: 8, x:5, y:5)
                    .overlay{
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(.gray.opacity(0.5))
                    }
            }
            
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
