import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello", ":something") { req async -> String in
        let something = req.parameters.get("something")!
        return "Hello, \(something)!"
    }
}
