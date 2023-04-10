//
//  SecondViewController.swift
//  singleton_test
//
//  Created by 최진용 on 2023/04/10.
//

import UIKit

class SecondViewController: UIViewController {
    
    let goButton = UIButton()
    let middleLabel = UILabel()
    
    var number: Int = 0
    var data: DataProtocol!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        number = data.number
        makeUI()
        goButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        print(number)
        
    }
    
    //MARK: - ui
    func makeUI() {
        goButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(goButton)
        goButton.backgroundColor = .blue
        goButton.setTitle("go next", for: .normal)
        NSLayoutConstraint.activate([
            goButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        middleLabel.translatesAutoresizingMaskIntoConstraints = false
        middleLabel.text = "\(number) 입니다."
        view.addSubview(middleLabel)
        NSLayoutConstraint.activate([
            middleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            middleLabel.topAnchor.constraint(equalTo: goButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func buttonPressed() {
        guard let pushView = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else { return }
        data.number = 3
        pushView.data = data
        pushView.modalTransitionStyle = .coverVertical
        pushView.modalPresentationStyle = .fullScreen
        self.present(pushView, animated: true, completion: nil)
        
    }
    
    
}
