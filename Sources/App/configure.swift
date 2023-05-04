import Vapor
import Fluent
import FluentPostgresDriver

// configures your application
public func configure(_ app: Application) async throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    let fileMiddleware = FileMiddleware(
        publicDirectory: app.directory.publicDirectory
    )
    app.middleware.use(fileMiddleware)
    
    app.databases.use(.postgres(hostname: "localhost", username: "postgres", password: "", database: "conciergedb"), as: .psql)

    app.migrations.add(CreateConcierge())
    
    // register routes
    try routes(app)
}
