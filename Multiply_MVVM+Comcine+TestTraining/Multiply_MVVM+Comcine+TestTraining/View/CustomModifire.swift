//
//  CustomModifire.swift
//  Multiply_MVVM+Comcine+TestTraining
//
//  Created by 岡優志 on 2021/05/30.
//

import SwiftUI

struct TextFieldModifire: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
    }
}
