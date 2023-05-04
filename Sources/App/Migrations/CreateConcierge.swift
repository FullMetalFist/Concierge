//
//  CreateConcierge.swift
//  
//
//  Created by Michael Vilabrera on 5/3/23.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateConcierge: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("concierge")
            .id()
            .field("name", .string)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("concierge").delete()
    }
}
