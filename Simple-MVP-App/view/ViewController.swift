//
//  ViewController.swift
//  Simple-MVP-App
//
//  Created by Efe on 06.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var numberLabel: UILabel!
    @IBOutlet private weak var button: UIButton!
    private let presenter : ViewPresenter!
    
    init(with presenter : ViewPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        button.addTarget(self.button, action: #selector(addNumber(_:)), for: .allTouchEvents)
        // Do any additional setup after loading the view.
    }

    @IBAction func addNumber(_ sender: UIButton) {
        if(sender.isTouchInside) {
            numberLabel.text = String.init(describing: unwrappedInt())
        }
    }
    
//    private func resetLabel() {
//        if(button.isHovered) {
//            numberLabel.text = "0"
//        }
//    }
    
    private func unwrappedInt() -> Int {
        guard var intValue = Int(numberLabel.text!) else {return 0}
        intValue+=1
        return intValue
    }
}

