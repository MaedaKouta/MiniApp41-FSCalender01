//
//  ViewController.swift
//  MiniApp41-FSCalender01
//
//  Created by 前田航汰 on 2022/04/09.
//

import UIKit
import FSCalendar

struct DateAndCount {
    var date: String
    var count: Int
}

class ViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource {
    @IBOutlet weak var calender: FSCalendar!
    @IBOutlet weak var textLabel: UILabel!
    let dateFormatter = DateFormatter()
    @IBOutlet weak var textLabel1: UILabel!

    var dates: [DateAndCount] = [
        .init(date: "27-03-2022", count: 23),
        .init(date: "28-03-2022", count: 23),
        .init(date: "29-03-2022", count: 23),
        .init(date: "30-03-2022", count: 6),
        .init(date: "31-03-2022", count: 23),
        .init(date: "01-04-2022", count: 23),
        .init(date: "02-04-2022", count: 23),
        .init(date: "03-04-2022", count: 23),
        .init(date: "04-04-2022", count: 6),
        .init(date: "05-04-2022", count: 23),
        .init(date: "06-04-2022", count: 2),
        .init(date: "07-04-2022", count: 98),
        .init(date: "08-04-2022", count: 9),
        .init(date: "09-04-2022", count: 33),
        .init(date: "10-04-2022", count: 14),
        .init(date: "11-04-2022", count: 14),
        .init(date: "12-04-2022", count: 23),
        .init(date: "13-04-2022", count: 3),
        .init(date: "14-04-2022", count: 6),
        .init(date: "15-04-2022", count: 23),
        .init(date: "16-04-2022", count: 2),
        .init(date: "17-04-2022", count: 98),
        .init(date: "18-04-2022", count: 9),
        .init(date: "19-04-2022", count: 33),
        .init(date: "20-04-2022", count: 23),
        .init(date: "21-04-2022", count: 3),
        .init(date: "22-00-2022", count: 6),
        .init(date: "23-04-2022", count: 23),
        .init(date: "24-04-2022", count: 2),
        .init(date: "25-04-2022", count: 98),
        .init(date: "26-04-2022", count: 9),
        .init(date: "27-04-2022", count: 33),
        .init(date: "28-04-2022", count: 6),
        .init(date: "29-04-2022", count: 23),
        .init(date: "30-04-2022", count: 2),
        .init(date: "31-04-2022", count: 98),
        .init(date: "01-05-2022", count: 33),
        .init(date: "02-05-2022", count: 6),
        .init(date: "03-05-2022", count: 23),
        .init(date: "04-05-2022", count: 2),
        .init(date: "05-05-2022", count: 98),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        print(dates)
    }

    func calendar(_ calendar: FSCalendar, subtitleFor date: Date) -> String? {
        for info in dates {
            if let eventDate = dateFormatter.date(from: info.date), date.compare(eventDate) == .orderedSame {
                return "\(info.count)"
            }

        }
        return "0"
    }

    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        for info in dates {
            if let eventDate = dateFormatter.date(from: info.date), date.compare(eventDate) == .orderedSame {
                textLabel1.text = "\(date.description)は"
                textLabel.text = "\(info.count)記事読みました〜！"
            }
        }
    }

}

