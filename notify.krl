ruleset a1299x176 {
    meta {
        name "Lab 2"
        author "Keith Halterman"
        logging off
    }
    dispatch {
    }
    
    rule rule_1 {
        select when pageview ".*" {
            notify("Part 1 - Hello World", "This is a perminant notify.") with sticky = true;
            notify("Part 2 - Hello Again!", "This is a second notify");
        }
    }
    
   rule rule_2 {
        select when pageview ".*"{
        pre {
            query = page:url("query");
        }
        
        notify("Part 3", "Hello " + query) with sticky = true;
        
        if (1 eq 1) then {
            notify("Part 3-2", "Hello Monkey") with sticky = true;  
        }
        }
//        else {
 //           notify("Part 3-2", "Hello " + query);
  //      }
        
    //    fired {
     //       last
      //  }
    }
}
