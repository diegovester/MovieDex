//
//  MovieItem.swift
//  MovieDex
//
//  Created by Diego Vester on 8/20/23.
//

import Foundation


/// Defines a menu item
struct MovieItem:Codable,Hashable,Identifiable{
    var id:Int
    var name:String
    var genre:String
    // TODO: rating
    // var rating:Int
    // TODO: Rose has seen it or not
    // var status:Int
    // TODO: Diego has seen it or not
    // var status:Int
    
    /// Custom hash method necessary for navigation paths to use `Hashable` protocol
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    /// Custom equals method necessary for navigation paths to use `Equatable` protocol
    static func ==(lhs:MovieItem, rhs:MovieItem)->Bool{
        lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.genre == rhs.genre
    }
}

/// The basic types of pizza crust used.
enum MovieGenre: String,Codable,CaseIterable {
    case drama = "Drama"
    case thriller = "Thriller"
    case comedy = "Comedy"
    case romance = "Romance"
}


/// A test MenuItem for previews while composing views
let testMovieItem = MovieItem(id: 0, name: "*starting our path*", genre: "Drama")

/// used when there is no Movie Item
let noMovieItem = MovieItem(id: -1, name: "*N/A*", genre: "Drama")
