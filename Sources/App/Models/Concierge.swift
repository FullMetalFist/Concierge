//
//  Concierge.swift
//  
//
//  Created by Michael Vilabrera on 5/3/23.
//

import Foundation
import Fluent
import Vapor

final class Concierge: Model, Content {
    
    static let schema: String = "concierge"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "name")
    var name: String
    
    init() {}
    
    init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
