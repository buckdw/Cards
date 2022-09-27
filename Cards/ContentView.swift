//
//  ContentView.swift
//  Cards
//
//  Created by Gino Sponton on 18/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    @State var playerCard:String = "card3"
    @State var cpuCard:String = "card4"
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                HStack {
                    Image("logo")
                }
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                HStack {
                    
                    Button(action: {
                        
                        let randomPlayerCard:Int = Int.random(in: 2...14)
                        let randomCpuCard:Int = Int.random(in: 2...14)
                        
                        playerCard = "card" + String(randomPlayerCard)
                        cpuCard = "card" + String(randomCpuCard)
                        
                        if randomPlayerCard > randomCpuCard {
                            playerScore +=  1
                        } else if randomPlayerCard < randomCpuCard {
                            cpuScore += 1
                        } else {
                            playerScore += 1
                            cpuScore += 1
                        }
                        
                    }, label: {
                        Image("dealbutton")
                    })
                }
                Spacer()
                HStack {
                    
                    VStack {
                        Text("Player")
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                        Text("Pat is gek")
                        Text(String(playerScore))
                            .font(.title)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                    }
                    
                    VStack {
                        Text("CPU")
                            .font(.largeTitle)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                        Text(String(cpuScore))
                            .font(.title)
                            .fontWeight(.light)
                            .foregroundColor(Color.white)
                            .frame(width: 200.0, height: 50.0)
                    }
                        
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
