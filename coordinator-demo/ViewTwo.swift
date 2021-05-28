//
//  ViewTwo.swift
//  coordinator-demo
//
//  Created by Jonathan Chua on 5/27/21.
//

import Foundation
import UIKit

class ViewTwo: UIViewController
{
    weak var coordinator: MainCoordinator?

    override func viewDidLoad()
    {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
}
