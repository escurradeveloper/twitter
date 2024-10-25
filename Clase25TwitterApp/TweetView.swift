//
//  TweetView.swift
//  Clase25TwitterApp
//
//  Created by Escurra Colquis on 25/10/24.
//

import SwiftUI

struct TweetView: View {
    let tweet: Tweet
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 60))
                .padding(.top)
                .padding(.trailing, 2)
                .foregroundColor(.blue)
            VStack(alignment: .leading) {
                HStack {
                    Text(tweet.authorName)
                        .bold()
                        .lineLimit(1)
                    Text("@\(tweet.authorUsername) - \(tweet.timestampText)")
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }
                .padding(.top)
                Text(tweet.text)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                TweetActionsView(tweet: tweet)
                    .foregroundColor(.gray)
                    .padding([.bottom, .top], 5)
                    .padding(.trailing, 15)
            }
        }
    }
}

struct TweetActionsView: View {
    let tweet: Tweet
    
    var body: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "message")
            }
            Text(tweet.numberOfRetweets > 0 ? "\(tweet.numberOfReplies)" : "")
            Spacer()
            Button(action: {}) {
                Image(systemName: "arrow.2.squarepath")
            }
            Text(tweet.numberOfRetweets > 0 ? "\(tweet.numberOfRetweets)" : "")
            Spacer()
            Button(action: {}) {
                Image(systemName: "heart")
            }
            Text(tweet.numberOfLikes > 0 ? "\(tweet.numberOfLikes)" : "")
            Spacer()
        }
    }
}

#Preview {
    TweetView(tweet: Tweet(authorName: "Autor", authorUsername: "Usuario", timestampText: "3h", text: "Descripción del post", numberOfReplies: 12, numberOfRetweets: 14, numberOfLikes: 15))
}
