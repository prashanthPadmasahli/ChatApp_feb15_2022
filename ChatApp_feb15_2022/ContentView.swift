//
//  ContentView.swift
//  ChatApp_feb15_2022
//
//  Created by Mac on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    @State var arr: [Message] = msgArr
    
    var body: some View {
        VStack {
            TitleRow()
            ScrollViewReader { value in
                ScrollView {
                    VStack {
                        ForEach(arr) { msg in
                            MessageRow(message: msg)
                                .id(msg.id)
                        }
                    }
                }
                .onAppear {
                    value.scrollTo(arr.last?.id)
                }
                .onChange(of: arr.count) { _ in
                    value.scrollTo(arr.last?.id)
                }
            }
            CustomTextField { newMsg in
                arr.append(newMsg)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

