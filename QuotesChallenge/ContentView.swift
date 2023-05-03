//
//  ContentView.swift
//  QuotesChallenge
//
//  Created by Laurence Stone on 5/1/23.
//

import SwiftUI

struct ContentView: View {
    var quotes = FPModel()
    
    var body: some View {
        NavigationStack {
            List(quotes.famousPeople) { fp in
                NavigationLink(
                    destination: MoreQuotesView(fp: fp),
                    label: {
                        ZStack{
                            Image(fp.image)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(5)
                            Text(fp.quotes[0])
                                .font(.title2)
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.gray.opacity(0.5))
                                .cornerRadius(10)
                            
                        }
                    })
            }.navigationBarTitle("Who Said That?")
                    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
