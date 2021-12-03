Rails.application.routes.draw do

  # Routes for the Stock resource:

  # CREATE
  post("/insert_stock", { :controller => "stocks", :action => "create" })
          
  # READ
  get("/stocks", { :controller => "stocks", :action => "index" })
  
  get("/stocks/:path_id", { :controller => "stocks", :action => "show" })
  
  # UPDATE
  
  post("/modify_stock/:path_id", { :controller => "stocks", :action => "update" })
  
  # DELETE
  get("/delete_stock/:path_id", { :controller => "stocks", :action => "destroy" })

  #------------------------------

  get("/", { :controller => "home", :action => "homepage"})
  get("/home", { :controller => "home", :action => "homepage1"})

  # Routes for the Item resource:

  # CREATE
  post("/insert_item", { :controller => "items", :action => "create" })
          
  # READ
  get("/items", { :controller => "items", :action => "index" })
  
  get("/items/:path_id", { :controller => "items", :action => "show" })
  
  # UPDATE
  
  post("/modify_item/:path_id", { :controller => "items", :action => "update" })
  
  # DELETE
  get("/delete_item/:path_id", { :controller => "items", :action => "destroy" })

  #------------------------------

  # Routes for the Store resource:

  # CREATE
  post("/insert_store", { :controller => "stores", :action => "create" })
          
  # READ
  get("/stores", { :controller => "stores", :action => "index" })
  
  get("/stores/:path_id", { :controller => "stores", :action => "show" })
  
  # UPDATE
  
  post("/modify_store/:path_id", { :controller => "stores", :action => "update" })
  
  # DELETE
  get("/delete_store/:path_id", { :controller => "stores", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

end
