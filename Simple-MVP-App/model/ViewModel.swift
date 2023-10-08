//
//  ViewModel.swift
//  Simple-MVP-App
//
//  Created by Efe on 06.10.2023.
//

import Foundation

class ViewModel {
    private var count : Int?
    
    public func getCount() -> Int {
        return self.count!
    }
    
    public func setCount(_ count : Int) {
        self.count = count
    }
}
