//
//  ViewPresenter.swift
//  Simple-MVP-App
//
//  Created by Efe on 07.10.2023.
//

import Foundation
import UIKit

protocol ViewPresenterDelegate : AnyObject {
    func newData(_ newData: String)
}

class ViewPresenter {
    private weak var delegate : ViewPresenterDelegate?
    private let modelService = LabelModelService()
    private var count : Int?
    
    init() {
        modelService.setDelegate(delegate: self)
    }
    
    public func setViewDelegate(delegate : ViewPresenterDelegate) {
        self.delegate = delegate
    }
    
    public func changeNumberInLabel(label : UILabel) {
        modelService.changeData(label: label)
        delegate?.newData(String(count!))
    }
}

extension ViewPresenter : LabelModelDelegate {
    func changeData(data: Int) {
        self.count = data
    }
}
