pb = PocketBase.init "http://127.0.0.0.1:8090" -- or elm URL
result = 
    pb 
    |> PocketBase.collections "example" 
    |> PocketBase.getList 1 20 
        { filter = "status = true && created > '2022-08-01 10:00:00'"}

userData = 
    pb 
    |> PocketBase.collections "users"
    |> PocketBase.authWithPassword "test@example.com" "123456"

adminData = 
    pb 
    |> PocketBase.admins
    |> PocketBase.authWithPassword "test@example.com" "123456"

createRecord formData = 
    pb
    |> collections "example"
    |> create formData 
