//
//  SessionController.swift
//  AppWorkout
//
//  Created by Иван Курганский on 25/08/2024.
//

import UIKit

class SessionController: BaseController {
    
    private let timerView: WABaseInfoView = {
        let view = WABaseInfoView(with: "Test", buttonTitle: "Test Button".uppercased())
        
        return view
    }()
}
    
extension SessionController {
        override func setupViews() {
            super.setupViews()
            
            view.setupView(timerView)
        }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.NavBar.session
        
                addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
                addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
    }
}
