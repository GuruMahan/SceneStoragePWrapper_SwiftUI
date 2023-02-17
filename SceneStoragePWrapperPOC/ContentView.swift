//
//  ContentView.swift
//  SceneStoragePWrapperPOC
//
//  Created by Guru Mahan on 17/02/23.
//

import SwiftUI

struct ContentView: View {
    @SceneStorage("Textvalue") var text = ""
    @State var textfielf = ""
    
    var body: some View {
        NavigationView {
            VStack{
                TextEditor(text:$text)
                    .frame(maxWidth
                           :.infinity,maxHeight: 300)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
                Spacer()
                TextField("SceneStorageText", text: $text)
                    .frame(width: 300,height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
                TextField("TextField", text: $textfielf)
                    .frame(width: 300,height: 40)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray,lineWidth: 1))
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
