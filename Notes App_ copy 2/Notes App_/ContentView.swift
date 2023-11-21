//
//  ContentView.swift
//  Notes App_
//
//  Created by Chiara Mirra on 19/11/23.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    
    //var notes2 = noteList2
    
    
    @State private var searchText = ""
    @State private var notes = NotesViewModel()
    @State private var searches = SearchViewModel()
    //@ObservedObject var notes: NotesViewModel
    @State private var notes2 = Notes2ViewModel()
    
    
    var body: some View {
        
        
        
        NavigationView {
                List() {
                    Section(header: Text("iCloud")) {
                     }
                     .headerProminence(.increased) //makes it bold
                     .listSectionSpacing(10) //deletes the space between iCloud and the list below
                    
                    ForEach(notes.noteList) { note in //tap on the first three items in the list
                        
                        NavigationLink(destination: DetailedNoteView(noteListType: note.name)) {
                            
                            Image(systemName: note.text)
                                .foregroundColor(.yellow)
                            Text(note.name)
                        }
                    }
                    
                    //                ForEach(notes2, id: \.self) { note in //tap on the last item in the list
                    //                    NavigationLink(destination: Text(note)) {
                    //                        Image(systemName: "trash")
                    //                            .foregroundColor(.yellow)
                    //                        Text(note)
                    //                    }
                    //                }
                }
           
                .searchable(text: $searchText) //search bar
                .searchSuggestions { //shows suggestions through search bar
                    ForEach(searches.searchList) { search in
                        NavigationLink(destination: Text(search.name)) {
                            
                            HStack {
                                Image(systemName: search.text)
                                    .foregroundColor(.yellow)
                                
                                Text(search.name)
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                }
            
                .navigationTitle("Folders") //big title
                
                
               .toolbar { //edit on top
                 EditButton()
               .foregroundColor(.yellow)
                 
                 }
//                 
//                 .toolbar { //icons on the bottom
//                 
//                 ToolbarItem(placement: .bottomBar) {
//                 Image(systemName: "folder.badge.plus")
//                 .foregroundColor(.yellow)
//                 
//                 }
//                 ToolbarItem(placement: .bottomBar) {
//                 Image(systemName: "square.and.pencil")
//                 .foregroundColor(.yellow)
//                 }
                
                .toolbar { //clickable icons on the bottom
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button() {
                            
                        } label: {
                            Image(systemName: "folder.badge.plus")
                        }
                        .foregroundColor(.yellow)
                        
                        Spacer()
                        
                        Button() {
                            
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                        .foregroundColor(.yellow)
                    }
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        //ContentView(notes: NotesViewModel())
    }
}
