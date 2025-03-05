//
//  NetworkManager.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 05/03/2025.
//

import Alamofire

final class NetworkManager {
    static let instance = NetworkManager()
    private init() { }
    
    enum Constants {
        static let baseURL = "https://dummyjson.com"
    }
    
    enum EndPoint {
        static let todos = "/todos"
    }
    
    func getTodos(completion: @escaping(Result<[TodoModel], RequestError>) -> ()) {
        AF.request(Constants.baseURL + EndPoint.todos).responseJSON { todosResponse in
            switch todosResponse.result {
            case .success(let todos):
                print(todos)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
