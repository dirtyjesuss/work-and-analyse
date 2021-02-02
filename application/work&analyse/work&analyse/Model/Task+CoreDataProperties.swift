//
//  Task+CoreDataProperties.swift
//  work&analyse
//
//  Created by Ruslan Khanov on 02.02.2021.
//
//

import Foundation
import CoreData


extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var name: String?
    @NSManaged public var duration: Double
    @NSManaged public var isBreak: Bool
    @NSManaged public var timer: Timer?

}

extension Task : Identifiable {

}
