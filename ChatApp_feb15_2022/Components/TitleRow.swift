//
//  TitleRow.swift
//  ChatApp_feb15_2022
//
//  Created by Mac on 15/02/22.
//

import SwiftUI

struct TitleRow: View {
    let imgUrl = URL(string: "https://images.unsplash.com/photo-1627087820883-7a102b79179a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydGFpdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60")
    let name = "Prashanth Padmashali"
    
    var body: some View {
        HStack {
            AsyncImage(url: imgUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height:50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
                    .frame(width: 50, height:50)
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2).bold()
                
                Text("Online").font(.caption).foregroundColor(.green)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            //.background(Color.blue)
            
            //Spacer()
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
            

        }.padding()
        .background(Color("Peach"))
    }
}


struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
    }
}
