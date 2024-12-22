terraform { 
  cloud { 
    
    organization = "abhishek-panta" 

    workspaces { 
      name = "fem-eci-tfe" 
    } 
  } 
}