//
//  OverviewNavBar.swift
//  AppWorkout
//
//  Created by Иван Курганский on 28/08/2024.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = Resources.Strings.NavBar.overview
        label.textColor = Resources.Colors.titleGray
        label.font = Resources.Fonts.helveticaRegular(with: 22)
        return label
    }()
    
    private let allWorkoutsButton: WAButton = {
        let button = WAButton(with: .secondary)
        button.setTitle(Resources.Strings.Overview.allWorkouts, for: .normal)
        return button
    }()
    
    private let addButton: UIButton = {
        let button = UIButton()
        button.setImage(Resources.Images.Common.add, for: .normal)
        return button
    }()
    
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
        
    }
    
    func addAdditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}
extension OverviewNavBar {
    
    override func setupViews() {
        super.setupViews()
    
        setupView(titleLabel)
        setupView(allWorkoutsButton)
        setupView(addButton)
        setupView(weekView)
    }
    
    
        override func constraintViews() {
            super.constraintViews()
    
            NSLayoutConstraint.activate([
                addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
                addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
                addButton.heightAnchor.constraint(equalToConstant: 28),
                addButton.widthAnchor.constraint(equalToConstant: 28),
    
                allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
                allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
                allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
    
                titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
                titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
                titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
    
                weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
                weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
                weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
                weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
                weekView.heightAnchor.constraint(equalToConstant: 47)
            ])
        }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white

        titleLabel.textColor = Resources.Colors.titleGray
        titleLabel.font = Resources.Fonts.helveticaRegular(with: 22)
        
        allWorkoutsButton.setTitle(Resources.Strings.Overview.allWorkouts, for: .focused)
        
        addButton.setImage(Resources.Images.Common.add, for: .normal)
    }
}
