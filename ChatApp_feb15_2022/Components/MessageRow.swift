//
//  MessageRow.swift
//  ChatApp_feb15_2022
//
//  Created by Mac on 15/02/22.
//

import SwiftUI

struct MessageRow: View {
    let message: Message
    @State var showDate = false
    
    var body: some View {
        VStack {
            HStack {
                if !message.isReceived {
                    Spacer()
                }
                
                VStack(alignment: message.isReceived ? .leading : .trailing) {
                    Text(message.text)
                        .padding()
                        .background(message.isReceived ? Color("Gray") : Color("Peach"))
                        .cornerRadius(20)
                        .onTapGesture {
                            showDate.toggle()
                        }
                    if showDate {
                        Text("\(message.timeStamp.formatted(.dateTime.hour().minute()))")
                            .font(.caption2)
                            .padding(.horizontal, 10)
                    }
                    
                }.padding(message.isReceived ? .trailing: .leading, 30)
                
                if message.isReceived {
                    Spacer()
                }
                
            }
        }.padding(.horizontal)
    }
}

struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(message: Message(text: "asdsad ddjhas fdfjhdjf dfjfgfhg ggfg ggg hgjhgj hgj jjhgjh jhgjhhg hgjhggjhg hg hjgj hgjh", timeStamp: Date(), isReceived: false))
    }
}
