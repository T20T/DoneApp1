//
//  ContentView.swift
//  DoneApp
//
//  Created by Taghrid Alkwayleet on 14/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var currentDate = Date()

    var body: some View {
        
        VStack {
                    Text("\(currentDate, formatter: dateFormatter)")
                        .font(.title)
                    HStack {
                        Button("<") {
                            currentDate = Calendar.current.date(byAdding: .day, value: -1, to: currentDate) ?? Date()
                        }
                        Button(">") {
                            currentDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate) ?? Date()
                        }
                    }
                }
                .onAppear {
                    let today = Calendar.current.startOfDay(for: Date())
                    let yesterday = Calendar.current.date(byAdding: .day, value: -1, to: today) ?? Date()
                    currentDate = today
                }
            }
            
            private var dateFormatter: DateFormatter {
                let formatter = DateFormatter()
                formatter.dateFormat = "MMM d, yyyy"
                return formatter
            }
        }

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
