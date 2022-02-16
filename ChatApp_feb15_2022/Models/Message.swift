//
//  Message.swift
//  ChatApp_feb15_2022
//
//  Created by Mac on 15/02/22.
//

import Foundation

struct Message: Identifiable, Codable {
    let id: String = UUID().uuidString
    let text: String
    let timeStamp: Date
    let isReceived: Bool
}

let msg1 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh", timeStamp: Date(), isReceived: true)
let msg2 = Message(text: "jhsgjda djagdjds fhjsjhfd", timeStamp: Date(), isReceived: false)
let msg3 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf", timeStamp: Date(), isReceived: false)
let msg4 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh sdfsd fsdfsdf", timeStamp: Date(), isReceived: true)
let msg5 = Message(text: "jhsgjda ", timeStamp: Date(), isReceived: true)
let msg6 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh ds dwd dwdw weff frefer fefrefr fref eferfefr", timeStamp: Date(), isReceived: false)
let msg7 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh ds dwd dwdw weff frefer fefrefr fref eferfefr", timeStamp: Date(), isReceived: true)
let msg8 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh ds dwd dwdw weff frefer fefrefr ", timeStamp: Date(), isReceived: false)
let msg9 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh", timeStamp: Date(), isReceived: true)
let msg10 = Message(text: "jhsgjda djagdjds fhjsjhfd", timeStamp: Date(), isReceived: false)
let msg11 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf", timeStamp: Date(), isReceived: false)
let msg12 = Message(text: "jhsgjda djagdjds fhjsjhfd sjhf dsjf jsdfjsdf j fsdjfh sdfsd fsdfsdf", timeStamp: Date(), isReceived: true)
let msg13 = Message(text: "jhsgjda ", timeStamp: Date(), isReceived: true)


let msgArr = [msg1, msg2, msg3, msg4, msg5, msg6, msg7, msg8, msg9, msg10, msg11, msg12, msg13]

