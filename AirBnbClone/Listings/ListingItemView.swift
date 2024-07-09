//
//  ListingItemView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 03.07.24.
//

import SwiftUI

struct ListingItemView: View {
    var body: some View {
        
        VStack {
            TabView {
                ForEach(1 ... 3, id: \.self) { image in
                    Image("photo\(image)")
                        .resizable()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment : .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mile away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    HStack(spacing : 4) {
                        Text("$566")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                
                HStack(spacing : 4){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
