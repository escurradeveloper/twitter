//
//  TwitterViewModel.swift
//  Clase25TwitterApp
//
//  Created by Escurra Colquis on 25/10/24.
//

import Foundation

class TwitterViewModel: ObservableObject {
    @Published var arrayTwitter: [Tweet] = []
    
    init() {
        getData()
    }
    
    private func getData() {
        let itemTweet = Tweet(authorName: "Escurra", authorUsername: "@escurra", timestampText: "4h", text: "me gusta ser IOS Dev", numberOfReplies: 7, numberOfRetweets: 40, numberOfLikes: 30)
        
        let itemTweetTwo = Tweet(authorName: "Pepito Gonzales", authorUsername: "@pepi", timestampText: "45h", text: "Todos deben de aprender a programar", numberOfReplies: 25, numberOfRetweets: 654, numberOfLikes: 456)
        
        let itemTweetThird = Tweet(authorName: "Luchito Ramirez", authorUsername: "@luchi", timestampText: "2h", text: "Hay que seguir estudiando programando en IOS con SwiftUI.", numberOfReplies: 7, numberOfRetweets: 368, numberOfLikes: 283)
        
        let itemTweetFour = Tweet(authorName: "Maricielo Loayza", authorUsername: "@mari", timestampText: "9h", text: "Hay que seguir estudiando programando en IOS con SwiftUI", numberOfReplies: 5, numberOfRetweets: 32, numberOfLikes: 24)
        
        let itemTweetFive = Tweet(authorName: "Zlatan Lopez", authorUsername: "@sanble", timestampText: "2h", text: "Hoy jugamos con swift. Hoy jugamos con swift. Hoy jugamos con swift", numberOfReplies: 4, numberOfRetweets: 21, numberOfLikes: 102)
        
        arrayTwitter.append(itemTweet)
        arrayTwitter.append(itemTweetTwo)
        arrayTwitter.append(itemTweetThird)
        arrayTwitter.append(itemTweetFour)
        arrayTwitter.append(itemTweetFive)
    }
}
