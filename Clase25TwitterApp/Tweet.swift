//
//  Tweet.swift
//  Clase25TwitterApp
//
//  Created by Escurra Colquis on 25/10/24.
//

import Foundation

struct Tweet: Identifiable {
    let id = UUID()
    let authorName: String
    let authorUsername: String
    let timestampText: String
    let text: String
    let numberOfReplies: Int
    let numberOfRetweets: Int
    let numberOfLikes: Int
}
