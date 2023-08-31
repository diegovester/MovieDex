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
    var moviePrompt: String = "What movie should we watch tonight?"
    @State var movieTitle: String = "N/A"
    @State var randomInt:Int = 0
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
            
            VStack {
                HStack
                {
                    Image("DVD")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        
                    
                    Text(movie[randomInt].name)
                        .font(.title).bold()
                }
                VStack
                {
                    VStack
                    {
                        HStack
                        {
                            Spacer()
                            Text("Platform")
                                .font(.title2).bold()
                            Spacer()
                            Text("Available")
                                .font(.title2).bold()
                            Spacer()
                        }
                        HStack
                        {
                            Spacer()
                            Text("Netflix")
                            Spacer()
                            Text("Unavailable")
                            Spacer()
                        }
                        HStack
                        {
                            Spacer()
                            Text("Hulu")
                            Spacer()
                            Text("Unavailable")
                            Spacer()
                        }
                        HStack
                        {
                            Spacer()
                            Text("Disney+")
                            Spacer()
                            Text("Unavailable")
                            Spacer()
                        }
                        HStack
                        {
                            Spacer()
                            Text("Prime Video")
                            Spacer()
                            Text("Unavailable")
                            Spacer()
                        }
                    }
                    .padding()
                    VStack
                    {
                        HStack
                        {
                            Spacer()
                            Text("Rose")
                                .font(.title2).bold()
                            Spacer()
                            Spacer()
                            Text("Diego")
                                .font(.title2).bold()
                            Spacer()
                        }
                        HStack
                        {
                            Text("Watched: Yes")
                            Spacer()
                            Text("Watched: No")
                        }
                            
                        HStack
                        {
                            Text("Liked: Yes")
                            Spacer()
                            Text("Liked: No")
                        }
                            
                        HStack
                        {
                            Text("Liked: Yes")
                            Spacer()
                            Text("Liked: No")
                        }
                    }
                    .padding()
                }
            }
            .padding()
            .background(.ultraThickMaterial, in: Rectangle())
            .cornerRadius(50)
            .padding()
            Spacer()

            Button
            {
                randomInt = Int.random(in: 1...128)
                movieTitle = movie[randomInt].name
            }
            label:
            {
                Text("Roll the dice").bold()
            }
            
                .padding(30)
                .background(.blue, in: Capsule())
                .foregroundStyle(.white)
                
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movie:MovieModel().movie)
    }
}
