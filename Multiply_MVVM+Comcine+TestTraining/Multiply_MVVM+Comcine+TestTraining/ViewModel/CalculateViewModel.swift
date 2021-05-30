//
//  CalculateViewModel.swift
//  Multiply_MVVM+Comcine+TestTraining
//
//  Created by 岡優志 on 2021/05/30.
//

import SwiftUI
class CalculateViewModel: ObservableObject {
    private let calculateModel = CalculateModel()
    @Published var fetchValue1 = ""
    @Published var fetchValue2 = ""
    @Published var multiplyValue = ""
   
    func multiply() {
        let num1 = Int(fetchValue1) ?? 0
        let num2 = Int(fetchValue2) ?? 0
        let result:Int = calculateModel.calculate(num1: num1, num2: num2)
        multiplyValue = String(result)
    }
    
    let calNum1 = 0
    let calNum2 = 0
    func calTest() -> Int {
        return self.calculateModel.calculate(num1: calNum1, num2: calNum2)
    }
}
