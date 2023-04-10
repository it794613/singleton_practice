//
//  ViewController.swift
//  singleton_test
//
//  Created by 최진용 on 2023/04/10.
//

import UIKit

class MainViewController: UIViewController {

    
    let mainButton = UIButton()
    let mainLabel = UILabel()
    
    var number: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        number = Datas.shared.number
        makeUI()
        mainButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        print(number)
        
    }
    
    //MARK: - ui
    func makeUI() {
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainButton)
        mainButton.backgroundColor = .blue
        mainButton.setTitle("go next", for: .normal)
        NSLayoutConstraint.activate([
            mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        mainLabel.text = "\(number) 입니다."
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.topAnchor.constraint(equalTo: mainButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func buttonPressed() {
        
        guard let pushView = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        Datas.shared.number = 2
        pushView.data = Datas.shared
        pushView.modalTransitionStyle = .coverVertical
        pushView.modalPresentationStyle = .fullScreen
        self.present(pushView, animated: true, completion: nil)
        
        
    }
    

}

