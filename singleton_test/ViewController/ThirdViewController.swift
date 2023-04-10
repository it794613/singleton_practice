//
//  ThirdViewController.swift
//  singleton_test
//
//  Created by 최진용 on 2023/04/10.
//
import UIKit

class ThirdViewController: UIViewController {
    
    let someButton = UIButton()
    let labelFirst = UILabel()
    
    var number: Int = 0
    var data: DataProtocol!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        number = data.number
        makeUI()
        print(number)
    }
    //MARK: - ui
    func makeUI() {
        
        labelFirst.translatesAutoresizingMaskIntoConstraints = false
        labelFirst.text = "\(number) 입니다."
        view.addSubview(labelFirst)
        NSLayoutConstraint.activate([
            labelFirst.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelFirst.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    
    
}
