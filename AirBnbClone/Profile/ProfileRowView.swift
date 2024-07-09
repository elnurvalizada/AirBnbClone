//
//  ProfileRowView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 08.07.24.
//

import SwiftUI

struct ProfileRowView: View {
    var leftImg : String
    var title : String
    var body: some View {
        VStack {
            HStack {
                Image(systemName: leftImg)
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                Image(systemName: "chevron.right")
                
            }
            Divider()
        }
    }
}

#Preview {
    ProfileRowView(leftImg: "gear", title: "Settings")
}
