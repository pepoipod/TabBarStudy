//
// Created by iwamoto on 2020/02/12.
// Copyright (c) 2020 iwamoto. All rights reserved.
//

import Foundation
import UIKit

class TodoViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var isDoneLabel: UILabel!

    var todo: TODO?

    private func renderView() {
        if let todo = todo {
            if let label = titleLabel {
                label.text = todo.title
            }

            if let label = isDoneLabel {
                label.text = todo.isDone ? "完了" : "未完了"
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.renderView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}