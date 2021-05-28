//
//  ViewController.swift
//  coordinator-demo
//
//  Created by Jonathan Chua on 5/27/21.
//

import UIKit

class ViewController: UIViewController {

    weak var coordinator: MainCoordinator?
    let button1 = UILabel()
    let button2 = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        setupViews()
    }

    private func setupViews()
    {
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.isUserInteractionEnabled = true
        button1.text = "View One"
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(didTapButton1))
        button1.addGestureRecognizer(tap1)
        view.addSubview(button1)

        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.isUserInteractionEnabled = true
        button2.text = "View Two"
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(didTapButton2))
        button2.addGestureRecognizer(tap2)
        view.addSubview(button2)

        NSLayoutConstraint.activate(
        [
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),

            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 30)
        ])
    }

    @objc private func didTapButton1()
    {
        coordinator?.showViewOne()
    }

    @objc private func didTapButton2()
    {
        coordinator?.showViewTwo()
    }
}

