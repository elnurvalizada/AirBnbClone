//
//  SearchAndFilterBar.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 03.07.24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                Text("Where to?")
                    .fontWeight(.semibold)
                    .font(.footnote)
                Text("Anywhere - Any Week - Add guests")
                    .foregroundStyle(.gray)
                    .font(.caption2)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "gear")
                    .foregroundStyle(.black)
            })
        }
        .padding(.vertical, 10)
        .padding(.horizontal)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.4), radius: 2)
        }
    }
}

#Preview {
    SearchAndFilterBar()
}
