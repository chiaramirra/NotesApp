//
//  NotesViewModel.swift
//  Notes App_
//
//  Created by Chiara Mirra on 19/11/23.
//

import Foundation



class NotesViewModel: ObservableObject  {
    var noteList = [
        Notes(name: "All iCloud", text: "folder"),
        Notes(name: "Notes", text: "folder"),
        Notes(name: "New Folder", text: "folder"),
        Notes(name: "Recently Deleted", text: "trash")] }

class SearchViewModel: ObservableObject {
    var searchList = [
        Notes(name: "Shared Notes", text: "person.circle"),
        Notes(name: "Locked Notes", text: "lock.fill"),
        Notes(name: "Notes with Checklists", text: "checklist"),
        Notes(name: "Notes with Tags", text: "number"),
        Notes(name: "Notes with Drawings", text: "pencil.tip.crop.circle"),
        Notes(name: "Notes with Scanned Documents", text: "doc.viewfinder"),
        Notes(name: "Notes with Attachments", text: "person.circle")
        ]}

class Notes2ViewModel: ObservableObject  {
    var note2List = [
        Notes(name: "ciao", text: ""),
        Notes(name: "password", text: ""),
        Notes(name: "Password", text: ""),
        Notes(name: "eeee", text: "")] }

    

