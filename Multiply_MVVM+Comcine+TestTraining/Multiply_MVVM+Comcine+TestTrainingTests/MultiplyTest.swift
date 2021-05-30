//
//  MultiplyTest.swift
//  Multiply_MVVM+Comcine+TestTrainingTests
//
//  Created by 岡優志 on 2021/05/30.
//

import XCTest
@testable import Multiply_MVVM_Comcine_TestTraining

class MultiplyTest: XCTestCase {
    var calculateViewModel = CalculateViewModel()
    func testMultiply() {
        calculateViewModel.fetchValue1 = "10"
        calculateViewModel.fetchValue2 = "5"
        calculateViewModel.multiply()
        XCTAssertTrue(calculateViewModel.multiplyValue == "50")
    }
}
