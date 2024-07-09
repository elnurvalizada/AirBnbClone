//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 03.07.24.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView {
            ZStack(alignment : .topLeading) {
                
                TabView {
                    ForEach(1 ... 3, id: \.self) { image in
                        Image("photo\(image)")
                            .resizable()
                        
                    }
                }
                
                Button {
                    dismiss()
                } label: {
                    Label("Close", systemImage: "chevron.left")
                        .labelStyle(.iconOnly)
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        )
                        .padding(32)
                }
            }
            .frame(height: 320)
            .tabViewStyle(.page)
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                    Text("-")
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                    Spacer()
                }
                .foregroundStyle(.black)
                Text("Miami, Florida")
                
            }
            .font(.caption)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            Divider()
            
            HStack {
                VStack(alignment : .leading){
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    HStack(spacing : 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                Circle()
                    .frame(height: 64)
                    .frame(width: 64)
            }
            .padding()
            
            Divider()
            
            VStack(alignment : .leading,spacing : 16) {
                
                ForEach(0 ... 1, id: \.self) { feature in
                    HStack(spacing : 12) {
                        Image(systemName: "door.left.hand.open")
                        VStack(alignment : .leading) {
                            Text("Self check-in")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Check yourself in with the keypad.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                    
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment : .leading) {
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing : 16) {
                        ForEach(1 ... 4, id: \.self) { room in
                            VStack {
                                Image(systemName: "bed.double.fill")
                                Text("Bedroom \(room)")
                                
                            }
                            .frame(width : 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing : 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(0 ... 5, id: \.self) {amenity in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Where you'll be")
                    .font(.headline)
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            .padding()
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 12-15")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Label("Reserve", systemImage: "lifepreserver")
                            .labelStyle(.titleOnly)
                            .foregroundStyle(.white)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                
            }
            .padding(.horizontal, 32)
            .background(.white)
        }
        
    }
}

#Preview {
    ListingDetailView()
}
