//
//  DetailView.swift
//  Namespace
//
//  Created by Дмитрий Спичаков on 30.08.2023.
//

import SwiftUI

struct DetailView: View {
    
    @Namespace var namespace
    
    @Binding var showDetail: Bool

    var body: some View {
        VStack {
            Text("Detail View")
                .font(.headline)
                .padding()

            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .matchedGeometryEffect(id: "heart", in: namespace)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
        .onTapGesture {
            withAnimation {
                showDetail = false
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showDetail: .constant(true))
    }
}
