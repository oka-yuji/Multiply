//
//  CalculateView.swift
//  Multiply_MVVM+Comcine+TestTraining
//
//  Created by 岡優志 on 2021/05/30.
//

import SwiftUI

struct CalculateView: View {
    @ObservedObject private var calculateViewModel = CalculateViewModel()
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            // タイトル、説明文
            Text("整数を入力するとn倍になって値を返すよ！")
            // 整数を入力するTextField
            VStack(alignment: .leading, spacing: 0.0) {
                Text("下記に整数を入力して下さい")
                TextField("inputNum", text: $calculateViewModel.fetchValue1)
                    .modifier(TextFieldModifire())
            }
            // 倍率を入力するTextField
            VStack(alignment: .leading, spacing: 0.0) {
                Text("倍率を整数で入力して下さい")
                TextField("inputNum", text: $calculateViewModel.fetchValue2)
                    .modifier(TextFieldModifire())
            }
            // ボタンを押すと計算してTextへ出力する
            VStack(alignment: .leading, spacing: 0.0) {
                Button(action: {
                    calculateViewModel.multiply()
                }, label: {
                    Text("計算スタート")
                        .padding(.vertical)
                })
                Text("合計 ＝"+"\(calculateViewModel.multiplyValue)"+"です。")
            }
        }
        .padding()
    }
}

struct Home2_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}

// TextFieldに対してのmodifire
