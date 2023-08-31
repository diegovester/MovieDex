//
//  MovieRowView.swift
//  MovieDex
//
//  Created by Diego Vester on 8/30/23.
//

import SwiftUI

struct MovieRowView: View {
    var movie:[MovieItem]
    var movieIndex:Int
    var body: some View {
        HStack
        {
            Image("DVD")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                
            
            Text(movie[movieIndex].name)
        }
        
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var previews: some View {
        MovieRowView(movie:MovieModel().movie, movieIndex: 3)
    }
}
