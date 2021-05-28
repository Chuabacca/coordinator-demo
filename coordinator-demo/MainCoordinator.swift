//
//  MainCoordinator.swift
//  coordinator-demo
//
//  Created by Jonathan Chua on 5/27/21.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator
{
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController

    init(navigationController: UINavigationController)
    {
        self.navigationController = navigationController
    }

    func start()
    {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }

    func showViewOne()
    {
        let vc = ViewOne()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }

    func showViewTwo()
    {
        let vc = ViewTwo()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
