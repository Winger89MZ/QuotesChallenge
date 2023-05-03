//
//  FPModel.swift
//  QuotesChallenge
//
//  Created by Laurence Stone on 5/1/23.
//

import Foundation

class FPModel: ObservableObject {
    var famousPeople = [FamousPerson]()
    
    init () {
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do {
                    let quotesData = try decoder.decode([FamousPerson].self, from: data)
                    for fp in quotesData {
                        fp.id = UUID()
                    }
                    self.famousPeople = quotesData
                } catch {
                    print(error)
                }
            } catch {
                print(error)
            }
        }
    }
}
