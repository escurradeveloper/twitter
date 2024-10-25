//
//  ContentView.swift
//  Clase25TwitterApp
//
//  Created by Escurra Colquis on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var twitterViewModel: TwitterViewModel = TwitterViewModel()
    
    var body: some View {
        VStack {
            NavigationStack {
                List() {
                    ForEach(twitterViewModel.arrayTwitter) {
                        item in
                        TweetView(tweet: item)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Twitter")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundColor(.blue)
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.blue)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
