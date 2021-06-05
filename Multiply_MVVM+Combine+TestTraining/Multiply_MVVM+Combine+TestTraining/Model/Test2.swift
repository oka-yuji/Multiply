//
//  Test2.swift
//  Multiply_MVVM+Combine+TestTraining
//
//  Created by 岡優志 on 2021/06/05.
//

import SwiftUI
import Combine

struct Test2: View {
    @State var text = "test"
     var stringPublisher = PassthroughSubject<String?, Never>()
     var cancellables = [AnyCancellable]()
    func setupStringSubscriber(){
      stringPublisher
        .sink(receiveCompletion: { print ("completion: \($0)") },
              receiveValue: { print ("value: \($0 ?? "")") })
    }
   var body: some View {
        VStack {
            Button(action: {
                func pressHelloButton() {
                  stringPublisher.send("hello,")
                }
                text = "\(pressHelloButton())"
            }, label: {
                Text("Button1")
            })
            Button(action: {
                func pressWorldButton() {
                  stringPublisher.send("world!")
                    print(pressWorldButton())
                    text = "\(pressWorldButton())"
                }
            }, label: {
                Text("Button2")
            })
        Text(text)
        }
    }
}

struct Test2_Previews: PreviewProvider {
    static var previews: some View {
        Test2()
    }
}
