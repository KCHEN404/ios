//
//  ViewController.swift
//  ClassDemoCoreData
//
//  Created by bulko on 2/24/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demoCoreData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoCoreData() {
        
        // REMEMBER TO CREATE A DATA MODEL IN ClassDemo7.xcdatamodeld FIRST!
        
        print("\n\nStarting Core Data demo")
        
        // Remove all objects from Core Data
        clearCoreData()
        
        storePerson(name:"Justin Timberlake", age:35)
        storePerson(name:"Beyonce Knowles", age:35)
        storePerson(name:"Drake", age:29)
        storePerson(name:"Rihanna", age:28)
        print("Stored four people")
        
        let fetchedResults = retrievePeople()
        
        for person in fetchedResults {
            if let personName = person.value(forKey:"name") {
                if let personAge = person.value(forKey:"age") {
                    print("Retrieved: \(personName), age \(personAge)")
                }
            }
        }
        
        
    }
    
    func storePerson(name: String, age: Int32) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let person = NSEntityDescription.insertNewObject(
            forEntityName: "Person", into: context)
        
        // Set the attribute values
        person.setValue(name, forKey: "name")
        person.setValue(Int(age), forKey: "age")
        
        // Commit the changes
        do {
            try context.save()
        } catch {
            // If an error occurs
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
        
    }
    
    func retrievePeople() -> [NSManagedObject] {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName:"Person")
        var fetchedResults:[NSManagedObject]? = nil
        
        // Examples of filtering using predicates
        // let predicate = NSPredicate(format: "age = 35")
        // let predicate = NSPredicate(format: "name CONTAINS[c] 'ake'")
        // request.predicate = predicate
        
        do {
            try fetchedResults = context.fetch(request) as? [NSManagedObject]
        } catch {
            // If an error occurs
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
        
        return(fetchedResults)!
        
    }
    
    func clearCoreData() {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        var fetchedResults:[NSManagedObject]
        
        do {
            try fetchedResults = context.fetch(request) as! [NSManagedObject]
            
            if fetchedResults.count > 0 {
                
                for result:AnyObject in fetchedResults {
                    context.delete(result as! NSManagedObject)
                    print("\(result.value(forKey: "name")!) has been Deleted")
                }
            }
            try context.save()
            
        } catch {
            // If an error occurs
            let nserror = error as NSError
            NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
            abort()
        }
        
    }
    
}

