//
//  FamousPerson.swift
//  QuotesChallenge
//
//  Created by Laurence Stone on 5/1/23.
//

import Foundation

class FamousPerson: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var image: String
    var quotes: [String]
}
