//
//  SwiftUIView.swift
//  LibWithUI
//
//  Created by Luiz Rodrigo Martins Barbosa on 16.11.19.
//  Copyright © 2019 Luiz Rodrigo Martins Barbosa. All rights reserved.
//

import RxSwift
import SwiftUI

var disposeBag = DisposeBag()

public struct SwiftUIView: View {
    @State private var number: Int = 0

    public init() { }
    
    public var body: some View {
        Text("Hello, World! \(number)")
            .onAppear {
                Observable<Int>.merge([
                    .just(1),
                    .create { subscriber in
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            subscriber.onNext(42)
                        }

                        return Disposables.create()
                    }
                ]).subscribe(onNext: { number in
                    self.number = number
                }).disposed(by: disposeBag)
            }
    }
}

// This doesn't work
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
