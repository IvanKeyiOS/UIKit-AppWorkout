//
//  SessionController.swift
//  AppWorkout
//
//  Created by Иван Курганский on 25/08/2024.
//

import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = Resources.Strings.NavBar.session
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.session
        
                addNavBarButton(at: .left, with: Resources.Strings.Session.navBarLeft)
                addNavBarButton(at: .right, with: Resources.Strings.Session.navBarRight)
}
    override func navBarLeftButtonHandler() {
        print("Session NavBar left button tapped")
    }
}
