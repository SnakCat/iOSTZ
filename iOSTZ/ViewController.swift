//
//  ViewController.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 03/03/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        NetworkManager.instance.getTodos { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
        // Do any additional setup after loading the view.
    }


}

