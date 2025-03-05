//
//  TodoModel.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 05/03/2025.
//

import Foundation


struct TodoModel: Codable {
    let id: Int
    let todo: String
    let isCompleted: Bool
    let userId: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case todo
        case isCompleted = "completed"
        case userId
    }
}

struct TodoResponse: Codable {
    let todos: [TodoModel]
}
