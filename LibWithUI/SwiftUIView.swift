//
//  SwiftUIView.swift
//  LibWithUI
//
//  Created by Luiz Rodrigo Martins Barbosa on 16.11.19.
//  Copyright © 2019 Luiz Rodrigo Martins Barbosa. All rights reserved.
//

import SwiftUI

public struct SwiftUIView: View {
    public init() { }
    
    public var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// This doesn't work
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
