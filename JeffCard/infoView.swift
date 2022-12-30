//
//  infoView.swift
//  JeffCard
//
//  Created by Jeff Deng on 12/30/22.
//

import SwiftUI

struct infoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    
                    Text(text)
                        .font(.system(size: 20))
                        .foregroundColor(Color("info color"))
                }
            )
            .padding(.all)
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
