//
//  CustomTextField.swift
//  ChatApp_feb15_2022
//
//  Created by Mac on 16/02/22.
//

import SwiftUI

struct CustomTextField: View {
    @State var textInput = ""
    var  onComletion: (Message) -> Void
    
    var body: some View {
        HStack {
            TextField("Enter your message here", text: $textInput, prompt: nil).padding()
            
            Button {
                print("\(textInput)")
                passMessage()
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Peach"))
                    .cornerRadius(50)
                    .padding(.trailing, 10)
            }
        }
        .background(Color("Gray"))
        .cornerRadius(20)
        .padding(.horizontal, 10)
    }
    
    func passMessage(){
        let msg = Message(text: textInput, timeStamp: Date(), isReceived: false)
        onComletion(msg)
        textInput = ""
    }
}

//struct CustomTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTextField()
//    }
//}
