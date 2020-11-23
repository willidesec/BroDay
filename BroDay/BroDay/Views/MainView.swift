//
//  MainView.swift
//  BroDay
//
//  Created by William DESECOT on 23/11/2020.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    let name: String
}

struct MainView: View {
    let users = [User(id: 1, name: "Clément"), User(id: 2, name: "Vahé"), User(id: 3, name: "William")]
    var body: some View {
        VStack(alignment: .center) {
            Text("Who are you ?")
                .font(.title)
            List(users) { item in
                Text(item.name)
            }
            Button(action: {}, label: {
                Text("Choose")
            })
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
