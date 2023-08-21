//
//  ContentView.swift
//  MovieDex
//
//  Created by Diego Vester on 8/17/23.
//

import SwiftUI

//


struct ContentView: View {
    var movie:[MovieItem]
    
    @State var movieTitle: String = "What movie should we watch tonight?"
    @State var randomInt:Int = 0
    var body: some View {
        VStack {
           Text(movieTitle)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .padding(30)

            Button(action: {
                randomInt = Int.random(in: 1...129)
                movieTitle = movie[randomInt].name
            }) {
                Text("Click Here")
            }
                .padding(30)
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movie:MovieModel().movie)
    }
}
