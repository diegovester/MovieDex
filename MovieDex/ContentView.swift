//
//  ContentView.swift
//  MovieDex
//
//  Created by Diego Vester on 8/17/23.
//

import SwiftUI



struct ContentView: View {
    var movie:[MovieItem]
    var moviePrompt: String = "What movie should we watch tonight?"
    @State private var randomInt:Int = 0
    @State private var selectedItem:MovieItem = noMovieItem
    @State private var movieGenre:MovieGenre = .drama
    var body: some View {
        VStack {
            Text(moviePrompt)
                
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .padding(30)
                .background(.thickMaterial, in: Rectangle())
                .cornerRadius(50)
            Spacer()
            VStack
            {
                Text("Filter")
                    .font(.title)
                
                Picker(selection: $movieGenre) {
                    ForEach(MovieGenre.allCases,id:\.self){ genre in
                        Text(genre.rawValue).tag(genre)
                    }
                } label: {
                    Text("Movie Genre")
                }
                .pickerStyle(MenuPickerStyle())
                
            }
                .padding(30)
                .background(
                .ultraThickMaterial, in: Rectangle())
                .cornerRadius(50)
            Spacer()
            MovieItemView(item:$selectedItem)
            Spacer()
            Button
            {
                randomInt = Int.random(in: 0..<10)
                selectedItem = movie[randomInt]
            }label: {
                Text("🎲 Roll")
            }
                .padding(20)
                .background(.blue, in:Capsule())
                .foregroundColor(.white)
                .font(.title).bold()
                
                
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movie:MovieModel().movie)
    }
}
