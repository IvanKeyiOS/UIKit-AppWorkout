//
//  TimerView.swift
//  AppWorkout
//
//  Created by Иван Курганский on 11/09/2024.
//

import UIKit

final class TimerView: WABaseInfoView {
    
    private let progressView: ProgressView = {
        let view = ProgressView()
        
        return view
    }()
    
}

extension TimerView {
    override func setupViews() {
        super.setupViews()
        
        setupView(progressView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            progressView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            progressView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            progressView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            progressView.heightAnchor.constraint(equalTo: progressView.widthAnchor)
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        progressView.backgroundColor = .red
    }
}
