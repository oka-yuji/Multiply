//
//  TimeLabelView.swift
//  Multiply_MVVM+Comcine+TestTraining
//
//  Created by 岡優志 on 2021/05/30.
//

import SwiftUI

struct TimeLabelView: View {
    @State var date = Date()
    let minutes = 60
    let hour = 60 * 60
    let day = 60 * 60 * 24
    let week = 60 * 60 * 24 * 7
    let month = 60 * 60 * 24 * 7 * 30
    let year = 60 * 60 * 24 * 7 * 30 * 365
    var body: some View {
        VStack {
            Text(date.addingTimeInterval(600), style: .time)
        }
    }
}

struct TimeLabelView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLabelView()
    }
}
