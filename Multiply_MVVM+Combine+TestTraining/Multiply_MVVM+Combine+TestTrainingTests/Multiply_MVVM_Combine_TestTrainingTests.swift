//
//  Multiply_MVVM_Combine_TestTrainingTests.swift
//  Multiply_MVVM+Combine+TestTrainingTests
//
//  Created by 岡優志 on 2021/05/30.
//

import XCTest
@testable import Multiply_MVVM_Combine_TestTraining

class MultiplyMVVMCombineTestTrainingTests: XCTestCase {
    var viewModel = CalculateViewModel(calculate: CalculateModel())
    func testMultiply() {
        viewModel.fetchValue1 = "10"
        viewModel.fetchValue2 = "3"
        viewModel.multiply()
        XCTAssertEqual(viewModel.multiplyValue, "30")
    }
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
