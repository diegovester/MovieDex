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
        lhs.name == rhs.name
    }
}


/// A test MenuItem for previews while composing views
let testMovieItem = MovieItem(id: 0, name: "*starting our path*")

/// used when there is no Movie Item
let noMovieItem = MovieItem(id: -1, name: "*N/A your path is in flux*")

/// A test MenuItem for previews while composing views
// let testMenuItem = MovieItem(id: 0, category: .italian, name: "Huli Chicken Pizza", description: "The classic pizza that started it all", crust: .neopolitan, price: 14.99, rating: 5)

/// used when there is no Movie Item
/// let noMenuItem = MovieItem(id: -1, category: .italian, name: "World Pizza with Aloha", description: "We're a small growing chain based in Honolulu, serivng pizzas from around the world and with Hawaiian influence.", crust: .neopolitan, price: 0, rating: 0)
