//
//  Space.swift
//  Astronomy
//
//  Created by Elvis Cuevas on 9/30/21.
//

import Foundation

class Space: Identifiable, Codable {
    var id:UUID?
    var name:String
    var image:String
    var image3d:String
    var description:String
    var facts:[String]
}
