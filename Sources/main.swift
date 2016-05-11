//
//  main.swift
//  SwiftServerDemo
//
//  Created by Victor Zhu on 5/10/16.
//  Copyright © 2016 Interactivelabs. All rights reserved.
//

import Foundation
import Vapor

print("SwiftServerDemo -- starting")

Route.get("hello") { _ in
	return ["Hello" : "World"]
}

Route.get("hello/:name") { request in
	let name = request.parameters["name"] ?? "World"
	return ["Hello" : name]
}

let server = Server()
server.run(port: 8080)