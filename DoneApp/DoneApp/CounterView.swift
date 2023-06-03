//
//  CounterView.swift
//  DoneApp
//
//  Created by Taghrid Alkwayleet on 14/11/1444 AH.
//

import SwiftUI

struct CounterView: View {
    
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack {
            Text("Counter: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
        }
    }
    //    @State var selectedDate: Date = Date()
    //    @State private var counters: [String: Int] = [:]
    //    @State private var isTodaySelected: Bool = true
    //
    //    var body: some View {
    //        VStack {
    //            VStack{
    //                Text("PUSH - UPS")
    //                    .font(.largeTitle)
    //                    .bold()
    //                    .padding()
    //                if isTodaySelected {
    //                    Text("Today")
    //                        .font(.title)
    //                        .foregroundColor(.white)
    //                        .bold()
    //                        .padding(.bottom)
    //                } else {
    //                    Text("Yesterday")
    //                        .font(.title)
    //                        .foregroundColor(.white)
    //                        .bold()
    //                        .padding(.bottom)
    //                }
    //                HStack {
    //                    Button(action: {
    //                        counters[selectedDate.weekdayName()] = (counters[selectedDate.weekdayName()] ?? 0) - 1
    //                    }) {
    //                        Image(systemName: "minus.circle.fill")
    //                            .opacity(0.5)
    //                    }
    //                    Text("\(counters[selectedDate.weekdayName()] ?? 0)")
    //                        .font(.system(size: 60))
    //                        .bold()
    //                    Button(action: {
    //                        counters[selectedDate.weekdayName()] = (counters[selectedDate.weekdayName()] ?? 0) + 1
    //                    }) {
    //                        Image(systemName: "plus.circle.fill")
    //                            .opacity(0.5)
    //                    }
    //                }
    //                .foregroundColor(.white)
    //                .font(.largeTitle)
    //            }
    //            .frame(maxWidth:.infinity, maxHeight:.infinity)
    //            .background( Color("Fgreen"))
    //            .padding(.bottom,-20)
    //
    //            VStack( spacing: 5) {
    //                HStack {
    //                    Button(action: {
    //                        isTodaySelected = true
    //                        selectedDate = Date()
    //                    }) {
    //                        Image(systemName: "chevron.left")
    //                            .foregroundColor(isTodaySelected ? .gray : .accentColor)
    //                            .opacity(isTodaySelected ? 0.5 : 1)
    //                    }
    //                    Text(selectedDate.formatted(date: .abbreviated, time: .omitted))
    //                        .font(.system(size: 28))
    //                        .bold()
    //                        .foregroundColor(Color.black)
    //                        .padding()
    //                        .animation(.spring(), value: selectedDate)
    //                        .frame(width: 500)
    //                    Button(action: {
    //                        isTodaySelected = false
    //                        let calendar = Calendar.current
    //                        let previousDay = calendar.date(byAdding: .day, value: -1, to: selectedDate) ?? Date()
    //                        selectedDate = previousDay
    //                    }) {
    //                        Image(systemName: "chevron.right")
    //                            .foregroundColor(!isTodaySelected ? .gray : .accentColor)
    //                            .opacity(!isTodaySelected ? 0.5 : 1)
    //                    }
    //                }
    //                Divider().frame(height: 1)
    //                if isTodaySelected {
    //                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: [.date])
    //                        .padding(.horizontal)
    //                        .datePickerStyle(.graphical)
    //                } else {
    //                    let calendar = Calendar.current
    //                    let previousDay = calendar.date(byAdding: .day, value: -1, to: selectedDate) ?? Date()
    //                    DatePicker("Select Date", selection: $selectedDate, in: ...previousDay, displayedComponents: [.date])
    //                        .padding(.horizontal)
    //                        .datePickerStyle(.graphical)
    //                }
    //                Divider()
    //            }
    //
    //            .padding(.bottom,-70)
    //            .padding()
    //
    //
    //            .onAppear {
    //                if let storedCounters = UserDefaults.standard.dictionary(forKey: "counters") as? [String: Int] {
    //                    counters = storedCounters
    //                }
    //            }
    //            .onDisappear {
    //                UserDefaults.standard.set(counters, forKey: "counters")
    //            }
    //        }
    //
    //    }
    //
    //    func getHeight() -> CGFloat {
    //         return max(200, DatePickerHeightKey.defaultValue)
    //      }
    //    struct DatePickerHeightKey: PreferenceKey {
    //            static var defaultValue: CGFloat = 0
    //
    //            static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
    //                value = max(value, nextValue())
    //            }
    //        }
    //}
    //
    //
}
    struct CounterView_Previews: PreviewProvider {
        static var previews: some View {
            CounterView()
        }
    }


