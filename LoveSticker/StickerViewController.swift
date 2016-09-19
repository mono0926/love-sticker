//
//  StickerViewController.swift
//  LoveSticker
//
//  Created by mono on 9/19/16.
//  Copyright © 2016 mono. All rights reserved.
//

import Foundation
import Messages

class StickerViewController: MSStickerBrowserViewController {
    private let stickers: [MSSticker] = { () -> [MSSticker] in
        return (0..<40).map {            
            let path = Bundle.init(for: StickerViewController.self).path(forResource: "stamp\($0)", ofType: "png")!
            let url = URL(fileURLWithPath: path)
            return try! MSSticker(contentsOfFileURL: url, localizedDescription: "")
        }
    }()
    override func numberOfStickers(in stickerBrowserView: MSStickerBrowserView) -> Int {
        return stickers.count
    }
    
    override func stickerBrowserView(_ stickerBrowserView: MSStickerBrowserView, stickerAt index: Int) -> MSSticker {
        return stickers[index]
    }
}
