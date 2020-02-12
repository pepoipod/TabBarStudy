//
// Created by iwamoto on 2020/02/12.
// Copyright (c) 2020 iwamoto. All rights reserved.
//

import Foundation

struct TODO {
    let title: String
    let isDone: Bool

    init(title: String, isDone: Bool) {
        self.title = title
        self.isDone = isDone
    }
}