//
//  ProfileView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 08.07.24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            VStack(alignment : .leading, spacing: 32) {
                
                
                VStack(alignment : .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                }
                Button {
                    
                } label: {
                    Text("Log In")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                HStack {
                    Text("Don't have an account?")
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing: 24) {
                ProfileRowView(leftImg: "gear", title: "Settings")
                ProfileRowView(leftImg: "gear", title: "Accessibility")
                ProfileRowView(leftImg: "gear", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
