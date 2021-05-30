//
//  CalculateModel.swift
//  Multiply_MVVM+Comcine+TestTraining
//
//  Created by 岡優志 on 2021/05/30.
//

import Foundation

class CalculateModel{
    private var num1:Int = 0
    private var num2:Int = 0
    ///num1とnum2をかけている
    func calculate(num1:Int,num2:Int) -> Int {
        let multiplication = num1 * num2
        return multiplication
    }
}
