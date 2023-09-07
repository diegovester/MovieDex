//
//  MovieModel.swift
//  MovieDex
//
//  Created by Diego Vester on 8/20/23.
//


import Foundation

/// An example of a static model that trickles down data through a view hierarchy, but does not change.
class MovieModel{
    
    struct Movie:Codable{
        var movie:[MovieItem]
    }
    
    var movie:[MovieItem] = []
    
    init(){
        if let movieJSON = decodeJSON(data: data){
            movie = movieJSON.movie
        }
    }
    
    func decodeJSON(data:Data!)-> Movie! {
        var movie:Movie! = nil
        let decoder = JSONDecoder()
        do{
            try movie = decoder.decode(Movie.self, from: data)
        } catch let error as NSError{
        print("Error reading JSON file: \(error.localizedDescription)")
        }
        return movie
    }
}

/// Basic JSON data ready to use in the MenuModel. Usually this would come in an external file, but for instructional purposes I put it here.
let data = """
    {
        "movie":
        [
         {
           "id": 1,
           "name": "What Dreams May Come ",
           "genre": "Drama"
         },
         {
           "id": 2,
           "name": "Sense 8 ",
           "genre": "Drama"
         },
         {
           "id": 3,
           "name": "The OA ",
           "genre": "Drama"
         },
         {
           "id": 4,
           "name": "Happy Feet ",
           "genre": "Drama"
         },
         {
           "id": 5,
           "name": "Hook ",
           "genre": "Drama"
         },
         {
           "id": 6,
           "name": "Flubber ",
           "genre": "Drama"
         },
         {
           "id": 7,
           "name": "Dead Poet’s Society ",
           "genre": "Drama"
         },
         {
           "id": 8,
           "name": "Avatar the Last Airbender ",
           "genre": "Drama"
         },
         {
           "id": 9,
           "name": "Doctor Who ",
           "genre": "Drama"
         },
         {
           "id": 10,
           "name": "Star Trek ",
           "genre": "Drama"
         },
         {
           "id": 11,
           "name": "Veggie tales ",
           "genre": "Drama"
         },
         {
           "id": 12,
           "name": "Fringe ",
           "genre": "Drama"
         },
         {
           "id": 13,
           "name": "Requiem for a Dream ",
           "genre": "Drama"
         },
         {
           "id": 14,
           "name": "Mr. Nobody ",
           "genre": "Drama"
         },
         {
           "id": 15,
           "name": "Mr. Robot ",
           "genre": "Drama"
         },
         {
           "id": 16,
           "name": "IT Crowd ",
           "genre": "Drama"
         },
         {
           "id": 17,
           "name": "Horns ",
           "genre": "Drama"
         },
         {
           "id": 18,
           "name": "Final Fantasy 7  ",
           "genre": "Drama"
         },
         {
           "id": 19,
           "name": "Hamilton ",
           "genre": "Drama"
         },
         {
           "id": 20,
           "name": "Inception ",
           "genre": "Drama"
         },
         {
           "id": 21,
           "name": "Chappy  ",
           "genre": "Drama"
         },
         {
           "id": 22,
           "name": "Eternal Sunshine  ",
           "genre": "Drama"
         },
         {
           "id": 23,
           "name": "A Clockwork Orange ",
           "genre": "Drama"
         },
         {
           "id": 24,
           "name": "Lucy  ",
           "genre": "Drama"
         },
         {
           "id": 25,
           "name": "Ex Machina ",
           "genre": "Drama"
         },
         {
           "id": 26,
           "name": "Black Mirror ",
           "genre": "Drama"
         },
         {
           "id": 27,
           "name": ".hack ",
           "genre": "Drama"
         },
         {
           "id": 28,
           "name": "Parasyte  ",
           "genre": "Drama"
         },
         {
           "id": 29,
           "name": "Over the Garden wall ",
           "genre": "Drama"
         },
         {
           "id": 30,
           "name": "Grimgar  ",
           "genre": "Drama"
         },
         {
           "id": 31,
           "name": "The Promised Neverland ",
           "genre": "Drama"
         },
         {
           "id": 32,
           "name": "Source Code ",
           "genre": "Drama"
         },
         {
           "id": 33,
           "name": "Law Abiding Citizen ",
           "genre": "Drama"
         },
         {
           "id": 34,
           "name": "Idiocracy ",
           "genre": "Drama"
         },
         {
           "id": 35,
           "name": "Twister  ",
           "genre": "Drama"
         },
         {
           "id": 36,
           "name": "Chronicle ",
           "genre": "Drama"
         },
         {
           "id": 37,
           "name": "Alita Battle Angel ",
           "genre": "Drama"
         },
         {
           "id": 38,
           "name": "Blade ",
           "genre": "Drama"
         },
         {
           "id": 39,
           "name": "The Matrix trilogy ",
           "genre": "Drama"
         },
         {
           "id": 40,
           "name": "Andor  ",
           "genre": "Drama"
         },
         {
           "id": 41,
           "name": "Click ",
           "genre": "Drama"
         },
         {
           "id": 42,
           "name": "The Intouchables ",
           "genre": "Drama"
         },
         {
           "id": 43,
           "name": "Shameless ",
           "genre": "Drama"
         },
         {
           "id": 44,
           "name": "Atlanta ",
           "genre": "Drama"
         },
         {
           "id": 45,
           "name": "Paulie ",
           "genre": "Drama"
         },
         {
           "id": 46,
           "name": "Fly Away Home ",
           "genre": "Drama"
         },
         {
           "id": 47,
           "name": "Marvelous Mrs. Maisel ",
           "genre": "Drama"
         },
         {
           "id": 48,
           "name": "Daria ",
           "genre": "Drama"
         },
         {
           "id": 49,
           "name": "The End of the Fucking World ",
           "genre": "Drama"
         },
         {
           "id": 50,
           "name": "Wayne ",
           "genre": "Drama"
         },
         {
           "id": 51,
           "name": "Extraordinary Attorney Woo ",
           "genre": "Drama"
         },
         {
           "id": 52,
           "name": "Lady Bird ",
           "genre": "Drama"
         },
         {
           "id": 53,
           "name": "FLIPPED ",
           "genre": "Drama"
         },
         {
           "id": 54,
           "name": "Moonlight ",
           "genre": "Drama"
         },
         {
           "id": 55,
           "name": "Waking life ",
           "genre": "Drama"
         },
         {
           "id": 56,
           "name": "Extremely Loud & Incredibly Close ",
           "genre": "Drama"
         },
         {
           "id": 57,
           "name": "Mushoku Tensei: Jobless Reincarnation ",
           "genre": "Drama"
         },
         {
           "id": 58,
           "name": "Full Metal Alchemist ",
           "genre": "Drama"
         },
         {
           "id": 59,
           "name": "Black Clover ",
           "genre": "Drama"
         },
         {
           "id": 60,
           "name": "The Intouchables ",
           "genre": "Drama"
         },
         {
           "id": 61,
           "name": "Goosebumps ",
           "genre": "Drama"
         },
         {
           "id": 62,
           "name": "Catch Me If You Can ",
           "genre": "Drama"
         },
         {
           "id": 63,
           "name": "Now You See Me ",
           "genre": "Drama"
         },
         {
           "id": 64,
           "name": "Whiplash ",
           "genre": "Drama"
         },
         {
           "id": 65,
           "name": "Maniac ",
           "genre": "Drama"
         },
         {
           "id": 66,
           "name": "Fern Gully ",
           "genre": "Drama"
         },
         {
           "id": 67,
           "name": "Brother Bear ",
           "genre": "Drama"
         },
         {
           "id": 68,
           "name": "Aristocats ",
           "genre": "Drama"
         },
         {
           "id": 69,
           "name": "Surfs Up ",
           "genre": "Drama"
         },
         {
           "id": 70,
           "name": "James and the Giant Peach ",
           "genre": "Drama"
         },
         {
           "id": 71,
           "name": "Ratatouille ",
           "genre": "Drama"
         },
         {
           "id": 72,
           "name": "Over the Hedge ",
           "genre": "Drama"
         },
         {
           "id": 73,
           "name": "Chicken Run ",
           "genre": "Drama"
         },
         {
           "id": 74,
           "name": "All Dogs Go To Heaven ",
           "genre": "Drama"
         },
         {
           "id": 75,
           "name": "Anastasia ",
           "genre": "Drama"
         },
         {
           "id": 76,
           "name": "Atlantis ",
           "genre": "Drama"
         },
         {
           "id": 77,
           "name": "Spirited Away ",
           "genre": "Drama"
         },
         {
           "id": 78,
           "name": "Charlotte’s Web ",
           "genre": "Drama"
         },
         {
           "id": 79,
           "name": "Deca Dence ",
           "genre": "Drama"
         },
         {
           "id": 80,
           "name": "Milo and Otis ",
           "genre": "Drama"
         },
         {
           "id": 81,
           "name": "Cats and Dogs ",
           "genre": "Drama"
         },
         {
           "id": 82,
           "name": "Finding Nemo ",
           "genre": "Drama"
         },
         {
           "id": 83,
           "name": "The Rescuers ",
           "genre": "Drama"
         },
         {
           "id": 84,
           "name": "The Dark Crystal ",
           "genre": "Drama"
         },
         {
           "id": 85,
           "name": "A Goofy Movie ",
           "genre": "Drama"
         },
         {
           "id": 86,
           "name": "Pagemaster ",
           "genre": "Drama"
         },
         {
           "id": 87,
           "name": "The Neverending Story ",
           "genre": "Drama"
         },
         {
           "id": 88,
           "name": "The Iron Giant ",
           "genre": "Drama"
         },
         {
           "id": 89,
           "name": "The brave little toaster ",
           "genre": "Drama"
         },
         {
           "id": 90,
           "name": "Saiki K ",
           "genre": "Drama"
         },
         {
           "id": 91,
           "name": "Yugioh ",
           "genre": "Drama"
         },
         {
           "id": 92,
           "name": "The Goonies ",
           "genre": "Drama"
         },
         {
           "id": 93,
           "name": "B&w movies worth watching ",
           "genre": "Drama"
         },
         {
           "id": 94,
           "name": "Twelve angry men (1957)  ",
           "genre": "Drama"
         },
         {
           "id": 95,
           "name": "Harvey (1958)  ",
           "genre": "Drama"
         },
         {
           "id": 96,
           "name": "Young Frankenstein  ",
           "genre": "Drama"
         },
         {
           "id": 97,
           "name": "Dr.strangeglove  ",
           "genre": "Drama"
         },
         {
           "id": 98,
           "name": "Grapes of wrath  ",
           "genre": "Drama"
         },
         {
           "id": 99,
           "name": "Seven samurai (54)  Invasion of the Body Snatchers ",
           "genre": "Drama"
         },
         {
           "id": 100,
           "name": "Everything Everywhere All at Once ",
           "genre": "Drama"
         },
         {
           "id": 101,
           "name": "Eternal sunshine  ",
           "genre": "Drama"
         },
         {
           "id": 102,
           "name": "Perks of being a wallflower  ",
           "genre": "Drama"
         },
         {
           "id": 103,
           "name": "Solanin (you can find it on YouTube) JP movie ",
           "genre": "Drama"
         },
         {
           "id": 104,
           "name": "Howl's moving castle ",
           "genre": "Drama"
         },
         {
           "id": 105,
           "name": "Princess mononoke ",
           "genre": "Drama"
         },
         {
           "id": 106,
           "name": "Spirited away ",
           "genre": "Drama"
         },
         {
           "id": 107,
           "name": "Beetlejuice ",
           "genre": "Drama"
         },
         {
           "id": 108,
           "name": "Nightmare before Christmas ",
           "genre": "Drama"
         },
         {
           "id": 109,
           "name": "They Live ",
           "genre": "Drama"
         },
         {
           "id": 110,
           "name": "They Live ",
           "genre": "Drama"
         },
         {
           "id": 111,
           "name": "BARBARIAN ",
           "genre": "Drama"
         },
         {
           "id": 112,
           "name": "Coraline ",
           "genre": "Drama"
         },
         {
           "id": 113,
           "name": "Hannibal ",
           "genre": "Drama"
         },
         {
           "id": 114,
           "name": "Silence of the Lambs ",
           "genre": "Drama"
         },
         {
           "id": 115,
           "name": "The Conjuring ",
           "genre": "Drama"
         },
         {
           "id": 116,
           "name": "Insidious ",
           "genre": "Drama"
         },
         {
           "id": 117,
           "name": "Sinister ",
           "genre": "Drama"
         },
         {
           "id": 118,
           "name": "The Legion ",
           "genre": "Drama"
         },
         {
           "id": 119,
           "name": "The Magicians ",
           "genre": "Drama"
         },
         {
           "id": 120,
           "name": "Candyman ",
           "genre": "Drama"
         },
         {
           "id": 121,
           "name": "Hemlock Grove ",
           "genre": "Drama"
         },
         {
           "id": 122,
           "name": "Elf ",
           "genre": "Drama"
         },
         {
           "id": 123,
           "name": "Home Alone ",
           "genre": "Drama"
         },
         {
           "id": 124,
           "name": "Santa Claus ",
           "genre": "Drama"
         },
         {
           "id": 125,
           "name": "The Nightmare before Christmas ",
           "genre": "Drama"
         },
         {
           "id": 126,
           "name": "Frosty the Snowman ",
           "genre": "Drama"
         },
         {
           "id": 127,
           "name": "While You Were Sleeping",
           "genre": "Drama"
         },
         {
           "id": 128,
           "name": "About Time ",
           "genre": "Drama"
         },
         {
           "id": 129,
           "name": "The Notebook",
           "genre": "Drama"
         }
        ]
    }
    """.data(using: .utf8)

