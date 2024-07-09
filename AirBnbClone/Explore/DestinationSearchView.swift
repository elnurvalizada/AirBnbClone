//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by Elnur Valizada on 08.07.24.
//

import SwiftUI


enum DestinationSelection {
    case location
    case date
    case guest
}

struct DestinationSearchView: View {
    @Binding var show : Bool
    @State var searchText = ""
    @State private var selectedOption : DestinationSelection = .location
    @State var startDate = Date()
    @State var endDate = Date()
    @State private var numGuests = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    show.toggle()
                } label: {
                    Label("back", systemImage: "xmark.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if !searchText.isEmpty {
                    Button {
                        searchText = ""
                    } label: {
                        Label("Clear", systemImage: "clear")
                            .labelStyle(.titleOnly)
                            .foregroundStyle(.black)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                }
            }
            .padding()
            
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search Destinations", text: $searchText)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedSearchView(title: "Where", description: "Add Location")
                }
                
            }
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation {
                    selectedOption = .location
                }
            }
            
            
            VStack(alignment : .leading) {
                if selectedOption == .date {
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                } else {
                    CollapsedSearchView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .date ? 180 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation {
                    selectedOption = .date
                }
            }
            
            
            VStack(alignment: .leading) {
                if selectedOption == .guest {
                    Text("How is coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper {
                        Text("\(numGuests) Adults")
                    } onIncrement: {
                        numGuests += 1
                        
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                } else {
                    CollapsedSearchView(title: "Who", description: "Add Guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guest ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation {
                    selectedOption = .guest
                }
            }
            Spacer()
        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(true))
}

struct CollapsedSearchView: View {
    let title : String
    let description : String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
    }
}
