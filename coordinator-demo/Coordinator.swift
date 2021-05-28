//
//  Coordinator.swift
//  coordinator-demo
//
//  Created by Jonathan Chua on 5/27/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
