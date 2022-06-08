//
//  BotResponse.swift
//  ChatBot
//
//  Created by Ban on 9/5/2022.
//

import Foundation
func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("你近日還好嗎？") ||    tempMessage.contains("你可以話比我知密碼?") || tempMessage.contains("1a") || tempMessage.contains("1d")
    {
        return "不好！！！"
    }
    else if tempMessage.contains("你係咪麥老師？") || tempMessage.contains("1c") {
        return "唔係！"
    }
    else if tempMessage.contains("我想關心你！") || tempMessage.contains("1b"){
        return "你知道我經歷了甚麼？ \n 2a.我知道你曾經被人欺凌\n 2b.我知道你被懷疑密切接觸者 \n 2c.我知道你習慣一個人\n 2d.我知道你經歷一啲唔開心既事"
    }
    
    else if tempMessage.contains("我知道你被懷疑密切接觸者") || tempMessage.contains("我知道你習慣一個人") || tempMessage.contains("我知道你經歷一啲唔開心既事") || tempMessage.contains("2b") || tempMessage.contains("2c") || tempMessage.contains("2d")
    {
        return "我唔值得你了解！"
    }
    
    else if tempMessage.contains("我知道你曾經被人欺凌") || tempMessage.contains("2a"){
        return "你又知道我當時有甚麼感受？\n 3a.我知道你當時心情好予盾！\n 3b.我知道你當時痛哭了一場！\n 3c.我知道你當時憤怒又苦惱！\n 3d.我知道你當時想自殺！"
    }
    
    else if tempMessage.contains("我知道你當時心情好予盾！") || tempMessage.contains("我知道你當時痛哭了一場!") || tempMessage.contains("我知道你當時憤怒又苦惱！") || tempMessage.contains("3a") || tempMessage.contains("3b") || tempMessage.contains("3c") {
        return "我唔值得你了解！"
    }
    else if tempMessage.contains("我知道你當時想自殺！") || tempMessage.contains("3d") {
        return "你知道「困卦』有咩脫險解困之法？\n 4a.上六，九五，六四，九三，六二，初九\n 4b.上六，九五，六四，九三，六二，初六\n 4c.上六，九五，六四，六三，九二，初六\n 4d.上六，九五，九四，六三，九二，初六"
    }
    
    else if tempMessage.contains("上六，九五，六四，九三，六二，初九") || tempMessage.contains("上六，九五，六四，九三，六二，初六") || tempMessage.contains("上六，九五，九四，六三，九二，初六") || tempMessage.contains("4a") || tempMessage.contains("4b") || tempMessage.contains("4d")
    {
        return "你又要輸入多次（笑😄）"
    }
    
    else if tempMessage.contains("上六，九五，六四，六三，九二，初六") || tempMessage.contains("4c") {
        return "「AGONY」\n 其實你可以用編號作答（笑😄）"
    }
    
//else if tempMessage.contains("你可以話比我知密碼？") {
//        return "不好！！！"
//    }else if tempMessage.contains("你可以話比我知密碼？") {
//        return "不好！！！"
//    }
    else {
        return "我唔明你既意思"
    }
}
