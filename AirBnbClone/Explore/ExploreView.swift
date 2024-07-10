//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 03.07.24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var isShowDestinationView = false
    var body: some View {
        
        
        
        
        
        if isShowDestinationView {
            DestinationSearchView(show: $isShowDestinationView)
        } else {
            NavigationStack {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                isShowDestinationView.toggle()
                            }
                        }
                        .padding()
                    LazyVStack(spacing : 32) {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                            }
                            
                        }
                        .padding()
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden(true)
                }
            }
        }
        
    }
}

#Preview {
    ExploreView()
}
