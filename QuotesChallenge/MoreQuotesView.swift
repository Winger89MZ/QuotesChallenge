//
//  MoreQuotesView.swift
//  QuotesChallenge
//
//  Created by Laurence Stone on 5/1/23.
//

import SwiftUI

struct MoreQuotesView: View {
    var fp: FamousPerson
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30) {
                Text(fp.name)
                    .font(.largeTitle.bold())
                ForEach(fp.quotes, id: \.self) { quote in
                    Text(quote)
                        .font(.title)
                }
            }.padding(.horizontal)
        }
    }
}

struct MoreQuotesView_Previews: PreviewProvider {
    static var previews: some View {
        let Quotes = FPModel()
        MoreQuotesView(fp: Quotes.famousPeople[0])
    }
}
