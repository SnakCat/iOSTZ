//
//  CheckBoxButton.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 05/03/2025.
//

import Foundation
import UIKit

class CheckboxButton: UIButton {
    
    private var isChecked = false {
        didSet {
            updateAppearance()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    private func setupButton() {
        layer.cornerRadius = 12
        layer.borderWidth = 2
        layer.borderColor = UIColor.lightGray.cgColor
        backgroundColor = .clear
        setTitle("", for: .normal)
        addTarget(self, action: #selector(toggleCheckbox), for: .touchUpInside)
        updateAppearance()
    }
    
    @objc private func toggleCheckbox() {
        isChecked.toggle()
    }
    
    private func updateAppearance() {
        if isChecked {
            layer.borderColor = UIColor.systemYellow.cgColor
            let checkmark = UIImage(systemName: "checkmark")?.withTintColor(.systemYellow, renderingMode: .alwaysOriginal)
            setImage(checkmark, for: .normal)
        } else {
            layer.borderColor = UIColor.lightGray.cgColor
            setImage(nil, for: .normal)
        }
    }
}
