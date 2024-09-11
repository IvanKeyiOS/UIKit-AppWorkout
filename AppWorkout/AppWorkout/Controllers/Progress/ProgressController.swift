//
//  ProgressController.swift
//  AppWorkout
//
//  Created by Иван Курганский on 25/08/2024.
//

import UIKit

class ProgressController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = Resources.Strings.NavBar.progress
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.title(for: .progress)
       
        addNavBarButton(at: .left, with: Resources.Strings.Progress.navBarLeft)
        addNavBarButton(at: .right, with: Resources.Strings.Progress.navBarRight)
    }
}
