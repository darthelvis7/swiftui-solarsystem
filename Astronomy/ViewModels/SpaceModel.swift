//
//  SpaceModel.swift
//  Astronomy
//
//  Created by Elvis Cuevas on 9/30/21.
//

import Foundation

class SpaceModel: ObservableObject {
    @Published var space = [Space]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = pathString {
            let url = URL(fileURLWithPath: path)
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do {
                let spaceData = try decoder.decode([Space].self, from: data)
                    for s in spaceData {
                        s.id = UUID()
                    }
                    self.space = spaceData
                }
                catch {
                    print(error)
                }
            }
            catch {
                print(error)
            }
        }
    }
}
        
    

