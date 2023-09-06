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
    {"movie":[
     {
       "id": 1,
       "name": "What Dreams May Come"
     },
     {
       "id": 2,
       "name": "Sense 8"
     },
     {
       "id": 3,
       "name": "The OA"
     },
     {
       "id": 4,
       "name": "Happy Feet"
     },
     {
       "id": 5,
       "name": "Hook"
     },
     {
       "id": 6,
       "name": "Flubber"
     },
     {
       "id": 7,
       "name": "Dead Poet’s Society"
     },
     {
       "id": 8,
       "name": "Avatar the Last Airbender"
     },
     {
       "id": 9,
       "name": "Doctor Who"
     },
     {
       "id": 10,
       "name": "Star Trek"
     },
     {
       "id": 11,
       "name": "Veggie tales"
     },
     {
       "id": 12,
       "name": "Fringe "
     },
     {
       "id": 13,
       "name": "Requiem for a Dream "
     },
     {
       "id": 14,
       "name": "Mr. Nobody "
     },
     {
       "id": 15,
       "name": "Mr. Robot "
     },
     {
       "id": 16,
       "name": "IT Crowd "
     },
     {
       "id": 17,
       "name": "Horns "
     },
     {
       "id": 18,
       "name": "Final Fantasy 7  "
     },
     {
       "id": 19,
       "name": "Hamilton "
     },
     {
       "id": 20,
       "name": "Inception "
     },
     {
       "id": 21,
       "name": "Chappy  "
     },
     {
       "id": 22,
       "name": "Eternal Sunshine  "
     },
     {
       "id": 23,
       "name": "A Clockwork Orange "
     },
     {
       "id": 24,
       "name": "Lucy  "
     },
     {
       "id": 25,
       "name": "Ex Machina "
     },
     {
       "id": 26,
       "name": "Black Mirror "
     },
     {
       "id": 27,
       "name": ".hack "
     },
     {
       "id": 28,
       "name": "Parasyte  "
     },
     {
       "id": 29,
       "name": "Over the Garden wall "
     },
     {
       "id": 30,
       "name": "Grimgar  "
     },
     {
       "id": 31,
       "name": "The Promised Neverland "
     },
     {
       "id": 32,
       "name": "Source Code "
     },
     {
       "id": 33,
       "name": "Law Abiding Citizen "
     },
     {
       "id": 34,
       "name": "Idiocracy "
     },
     {
       "id": 35,
       "name": "Twister  "
     },
     {
       "id": 36,
       "name": "Chronicle "
     },
     {
       "id": 37,
       "name": "Alita Battle Angel "
     },
     {
       "id": 38,
       "name": "Blade "
     },
     {
       "id": 39,
       "name": "The Matrix trilogy "
     },
     {
       "id": 40,
       "name": "Andor  "
     },
     {
       "id": 41,
       "name": "Click "
     },
     {
       "id": 42,
       "name": "The Intouchables "
     },
     {
       "id": 43,
       "name": "Shameless "
     },
     {
       "id": 44,
       "name": "Atlanta "
     },
     {
       "id": 45,
       "name": "Paulie "
     },
     {
       "id": 46,
       "name": "Fly Away Home "
     },
     {
       "id": 47,
       "name": "Marvelous Mrs. Maisel "
     },
     {
       "id": 48,
       "name": "Daria "
     },
     {
       "id": 49,
       "name": "The End of the Fucking World "
     },
     {
       "id": 50,
       "name": "Wayne "
     },
     {
       "id": 51,
       "name": "Extraordinary Attorney Woo "
     },
     {
       "id": 52,
       "name": "Lady Bird "
     },
     {
       "id": 53,
       "name": "FLIPPED "
     },
     {
       "id": 54,
       "name": "Moonlight "
     },
     {
       "id": 55,
       "name": "Waking life "
     },
     {
       "id": 56,
       "name": "Extremely Loud & Incredibly Close "
     },
     {
       "id": 57,
       "name": "Mushoku Tensei: Jobless Reincarnation "
     },
     {
       "id": 58,
       "name": "Full Metal Alchemist "
     },
     {
       "id": 59,
       "name": "Black Clover "
     },
     {
       "id": 60,
       "name": "The Intouchables "
     },
     {
       "id": 61,
       "name": "Goosebumps "
     },
     {
       "id": 62,
       "name": "Catch Me If You Can "
     },
     {
       "id": 63,
       "name": "Now You See Me "
     },
     {
       "id": 64,
       "name": "Whiplash "
     },
     {
       "id": 65,
       "name": "Maniac "
     },
     {
       "id": 66,
       "name": "Fern Gully "
     },
     {
       "id": 67,
       "name": "Brother Bear "
     },
     {
       "id": 68,
       "name": "Aristocats "
     },
     {
       "id": 69,
       "name": "Surfs Up "
     },
     {
       "id": 70,
       "name": "James and the Giant Peach "
     },
     {
       "id": 71,
       "name": "Ratatouille "
     },
     {
       "id": 72,
       "name": "Over the Hedge "
     },
     {
       "id": 73,
       "name": "Chicken Run "
     },
     {
       "id": 74,
       "name": "All Dogs Go To Heaven "
     },
     {
       "id": 75,
       "name": "Anastasia "
     },
     {
       "id": 76,
       "name": "Atlantis "
     },
     {
       "id": 77,
       "name": "Spirited Away "
     },
     {
       "id": 78,
       "name": "Charlotte’s Web "
     },
     {
       "id": 79,
       "name": "Deca Dence "
     },
     {
       "id": 80,
       "name": "Milo and Otis "
     },
     {
       "id": 81,
       "name": "Cats and Dogs "
     },
     {
       "id": 82,
       "name": "Finding Nemo "
     },
     {
       "id": 83,
       "name": "The Rescuers "
     },
     {
       "id": 84,
       "name": "The Dark Crystal "
     },
     {
       "id": 85,
       "name": "A Goofy Movie "
     },
     {
       "id": 86,
       "name": "Pagemaster "
     },
     {
       "id": 87,
       "name": "The Neverending Story "
     },
     {
       "id": 88,
       "name": "The Iron Giant "
     },
     {
       "id": 89,
       "name": "The brave little toaster "
     },
     {
       "id": 90,
       "name": "Saiki K "
     },
     {
       "id": 91,
       "name": "Yugioh "
     },
     {
       "id": 92,
       "name": "The Goonies "
     },
     {
       "id": 93,
       "name": "B&w movies worth watching "
     },
     {
       "id": 94,
       "name": "Twelve angry men (1957)  "
     },
     {
       "id": 95,
       "name": "Harvey (1958)  "
     },
     {
       "id": 96,
       "name": "Young Frankenstein  "
     },
     {
       "id": 97,
       "name": "Dr.strangeglove  "
     },
     {
       "id": 98,
       "name": "Grapes of wrath  "
     },
     {
       "id": 99,
       "name": "Seven samurai (54)  Invasion of the Body Snatchers "
     },
     {
       "id": 100,
       "name": "Everything Everywhere All at Once "
     },
     {
       "id": 101,
       "name": "Eternal sunshine  "
     },
     {
       "id": 102,
       "name": "Perks of being a wallflower  "
     },
     {
       "id": 103,
       "name": "Solanin (you can find it on YouTube) JP movie "
     },
     {
       "id": 104,
       "name": "Howl's moving castle "
     },
     {
       "id": 105,
       "name": "Princess mononoke "
     },
     {
       "id": 106,
       "name": "Spirited away "
     },
     {
       "id": 107,
       "name": "Beetlejuice "
     },
     {
       "id": 108,
       "name": "Nightmare before Christmas "
     },
     {
       "id": 109,
       "name": "They Live "
     },
     {
       "id": 110,
       "name": "They Live "
     },
     {
       "id": 111,
       "name": "BARBARIAN "
     },
     {
       "id": 112,
       "name": "Coraline "
     },
     {
       "id": 113,
       "name": "Hannibal "
     },
     {
       "id": 114,
       "name": "Silence of the Lambs "
     },
     {
       "id": 115,
       "name": "The Conjuring "
     },
     {
       "id": 116,
       "name": "Insidious "
     },
     {
       "id": 117,
       "name": "Sinister "
     },
     {
       "id": 118,
       "name": "The Legion "
     },
     {
       "id": 119,
       "name": "The Magicians "
     },
     {
       "id": 120,
       "name": "Candyman "
     },
     {
       "id": 121,
       "name": "Hemlock Grove "
     },
     {
       "id": 122,
       "name": "Elf "
     },
     {
       "id": 123,
       "name": "Home Alone "
     },
     {
       "id": 124,
       "name": "Santa Claus "
     },
     {
       "id": 125,
       "name": "The Nightmare before Christmas "
     },
     {
       "id": 126,
       "name": "Frosty the Snowman "
     },
     {
       "id": 127,
       "name": "While You Were Sleeping"
     },
     {
       "id": 128,
       "name": "About Time "
     },
     {
       "id": 129,
       "name": "The Notebook"
     }
    ]
    }
    """.data(using: .utf8)

