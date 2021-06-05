//
//  test.swift
//  Multiply_MVVM+Combine+TestTraining
//
//  Created by 岡優志 on 2021/06/05.
//

import SwiftUI
import Combine

struct Test: View {
    @State var text = ""
    @State var new: [Any] = []
    var body: some View {
        VStack {
            Button(action: {
                let sosu = [2, 3, 5, 7, 11]
                let sosuPublisher = sosu.publisher
                    .append([17, 19])
                    .prepend([0, 1])
                    .sink(receiveCompletion: { print($0) },
                          receiveValue: {print($0); new.append($0) })
                text = "\(sosuPublisher)"
                print(new)
            }, label: {
                Text("IntsButton")
            })
            Text(text)
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
