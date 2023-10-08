//
//  LabelModelService.swift
//  Simple-MVP-App
//
//  Created by Efe on 08.10.2023.
//

import Foundation
import UIKit

protocol LabelModelDelegate : AnyObject {
    func changeData(data : Int)
}

class LabelModelService {
    private weak var delegate : LabelModelDelegate?
    private var model = ViewModel()
    
    public func setDelegate(delegate : LabelModelDelegate) {
        self.delegate = delegate
    }
    
    public func changeData(label : UILabel) {
        let count = unwrappedInt(label.text)
        model.setCount(count)
        delegate?.changeData(data: model.getCount())
    }
    
    private func unwrappedInt(_ string : String?) -> Int {
        guard var intValue = Int(string!) else {return 0}
        intValue+=1
        return intValue
    }
}
