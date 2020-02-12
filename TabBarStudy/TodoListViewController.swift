//
// Created by iwamoto on 2020/02/12.
// Copyright (c) 2020 iwamoto. All rights reserved.
//

import UIKit
import Foundation

class TodoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    let SHOW_DETAIL_SEGUE_ID = "showDetail"
    let CELL_ID = "cell"

    let todoList = [
        TODO(title: "牛乳を買う", isDone: false),
        TODO(title: "掃除をする", isDone: true),
        TODO(title: "アプリ開発の勉強をする", isDone: true)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TodoListViewCell", bundle: nil), forCellReuseIdentifier: CELL_ID)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == SHOW_DETAIL_SEGUE_ID {
            if let indexPath = tableView.indexPathForSelectedRow {
                let todo = todoList[indexPath.row]
                let viewController = segue.destination as! TodoViewController

                viewController.todo = todo
                viewController.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todoList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath) as! TodoListViewCell

        guard case todoList.indices = indexPath.row else {
            return cell
        }

        let todo = todoList[indexPath.row]

        cell.titleLabel.text = todo.title
        cell.isDoneLabel.text = todo.isDoneStr

        return cell
    }

    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        if todoList.indices.contains(indexPath.row) {
            performSegue(withIdentifier: SHOW_DETAIL_SEGUE_ID, sender: nil)
        }
    }
}
