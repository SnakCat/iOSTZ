//
//  CustomCell.swift
//  iOSTZ
//
//  Created by Дмитрий Трушин on 05/03/2025.
//

import Foundation
import UIKit

final class CustomCell: UITableViewCell {
    
    private let containerView = UIView()
    private let titleLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let dateLabel = UILabel()
    private var checkboxButton = CheckboxButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubView()
        setupConstraints()
        setupUI()
        selectionStyle = .none
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubView() {
        contentView.addSubview(containerView)
        containerView.addSubViews(titleLabel, descriptionLabel, dateLabel, checkboxButton)
    }
    
    private func setupConstraints() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        checkboxButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
                
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            titleLabel.leadingAnchor.constraint(equalTo: checkboxButton.trailingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            
            checkboxButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            checkboxButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            checkboxButton.heightAnchor.constraint(equalToConstant: 24),
            checkboxButton.widthAnchor.constraint(equalToConstant: 24),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 6),
            descriptionLabel.leadingAnchor.constraint(equalTo: checkboxButton.trailingAnchor, constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            
            dateLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 6),
            dateLabel.leadingAnchor.constraint(equalTo: checkboxButton.trailingAnchor, constant: 8),
            dateLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -12)
        ])
    }
    
    private func setupUI() {
        contentView.backgroundColor = .black
        containerView.backgroundColor = .black
        
        titleLabel.textColor = .white
        
        descriptionLabel.numberOfLines = .zero
        descriptionLabel.textColor = .white
        
        dateLabel.text = "24/24/24"
        dateLabel.textColor = .gray
    }
    
    func configureCell(todo: TodoModel) {
        titleLabel.text = "id: \(todo.id), userId: \(todo.userId)"
        descriptionLabel.text = todo.todo
        checkboxButton.isSelected = todo.isCompleted
    }
}
