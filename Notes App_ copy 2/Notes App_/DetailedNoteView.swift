//
//  DetailedNoteView.swift
//  Notes App_
//
//  Created by Chiara Mirra on 21/11/23.
//

import SwiftUI

struct DetailedNoteView: View {
    
    @State private var searchText = ""
    var noteListType: String = ""
    var noteListClass = Notes2ViewModel()
    var noteList: [Notes] { noteListClass.note2List }
    
    var body: some View {
        
        
        NavigationView {
            
            List(){
               
                    
                    ForEach(noteList) { note in //tap on the first three items in the list
                        NavigationLink(destination: DetailedNoteView(noteListType: note.name)) {
                            
                            Image(systemName: "")
                                .foregroundColor(.yellow)
                            Text(note.name)
                        }.foregroundColor(.black)
                    }  .foregroundColor(.yellow)
                  
                
                
                //        header: {
                //
                //                Text(noteListType + " notes")
                //            }
            }  
                
               
          
            
            .searchable(text: $searchText) 
            .navigationTitle("Notes")
        }
        
        
        
        
        
    }

}

#Preview  {
    DetailedNoteView()
}
