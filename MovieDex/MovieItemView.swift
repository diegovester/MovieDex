//
//  MovieRowView.swift
//  MovieDex
//
//  Created by Diego Vester on 8/30/23.
//

import SwiftUI



struct MovieItemView: View {
    @Binding var item:MovieItem
    var body: some View {
        
        HStack
        {
            //Image("1")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100)
            if let image = UIImage(named: "\(item.id)"){
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .padding([.top,.bottom],5)
                    .cornerRadius(15)
                    
            } else {
                Image("DVD")
                    .resizable()
                    .scaledToFit()
            }
            
            //Text(selectedMovie.name)
            Text(item.name)
                .font(.title).bold()
        }
        .padding()
        .background(.ultraThickMaterial, in: Rectangle())
        .cornerRadius(50)
    }
}

struct MovieItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieItemView(item: .constant(testMovieItem))
    }
}
