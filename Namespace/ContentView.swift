//
//  ContentView.swift
//  Namespace
//
//  Created by Дмитрий Спичаков on 30.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetail: Bool = false
    
    @Namespace private var namespace

    var body: some View {
        VStack {
            if showDetail {
                DetailView(
                    namespace: _namespace,
                    showDetail: $showDetail)
            } else {
                Button("Show Detail") {
                    withAnimation {
                        showDetail.toggle()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
