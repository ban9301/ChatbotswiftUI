//
//  ContentView.swift
//  ChatBot
//
//  Created by Ban on 9/5/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var messageText = ""
    @State var messages: [String] = ["究竟你揾我做咗事？ \n 1a.你近日還好嗎？ \n 1b.我想關心你！ \n 1c.你係咪麥老師？ \n 1d.你可以話比我知密碼？"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Mary MacDonald")
                    .font(.largeTitle)
                    .bold()
                
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 20))
                    .foregroundColor(Color.blue)
            }
            
            ScrollView {
                ForEach(messages, id: \.self) { message in
                    // If the message contains [USER], that means it's us
                    if message.contains("[USER]") {
                        let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                        
                        // User message styles
                        HStack {
                            Spacer()
                            Text(newMessage)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color.blue.opacity(0.8))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                        }
                    } else {
                        
                        // Bot message styles
                        HStack {
                            Text(message)
                                .padding()
                                .background(Color.gray.opacity(0.15))
                                .cornerRadius(10)
                                .padding(.horizontal, 16)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                    }
                    
                }.rotationEffect(.degrees(180))
            }
            .rotationEffect(.degrees(180))
            .background(Color.gray.opacity(0.1))
            
            
            // Contains the Message bar
            HStack {
                TextField("訊息", text: $messageText)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .onSubmit {
                        sendMessage(message: messageText)
                    }
                
                Button {
                    sendMessage(message: messageText)
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .font(.system(size: 26))
                .padding(.horizontal, 10)
            }
            .padding()
        }
    }
    
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    messages.append(getBotResponse(message: message))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

