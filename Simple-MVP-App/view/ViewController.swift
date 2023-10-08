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
    private var presenter : ViewPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter = ViewPresenter()
        self.presenter!.setViewDelegate(delegate: self)
    }

    @IBAction func addNumber(_ sender: UIButton) {
        presenter!.changeNumberInLabel(label: numberLabel)
    }
}

extension ViewController : ViewPresenterDelegate {
    func newData(_ newData: String) {
        numberLabel.text = newData
    }
}

