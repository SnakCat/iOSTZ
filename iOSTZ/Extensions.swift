//
//  Extensions.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 05/03/2025.
//

import UIKit

extension UIView {
    func addSubViews(_ view: UIView...) {
        view.forEach(addSubview)
    }
}

