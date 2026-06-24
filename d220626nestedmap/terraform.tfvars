// terraform.tfvars in create a storage account with nested map. We are creating a resource group and storage account in the same file. We are using for_each to create multiple resources of same type with different values. We are using nested map to create multiple resources of same type with different values.
// here resource_name is a map of resource group names and locations. storage_account is a map of storage account names, locations, resource group keys, account tiers and account replication types. We are using rg_key to create a relationship between resource group and storage account. We are using for_each to create multiple resources of same type with different values. We are using nested map to create multiple resources of same type with different values.
//here rg1 is a key and name and location are values. 
//here st1 is a key and name, location, rg_key, account_tier and account_replication_type are values.
resource_name = {
    rg1 = {
        name = "ashish-rg1"
        location = "East US"
    }
    rg2 = {
        name = "ashish-rg2"
        location = "West US"
    }   
    rg3 = {
        name = "ashish-rg3"
        location = "Central US"
    }
}


// we need to create rg_key for each storage account map with each rg
storage_account = {
    st1 = {
        name = "ashishst1"
        location = "East US"
       rg_key = "rg1"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
    st2 = {
        name = "ashishst2"
        location = "central India"
        rg_key = "rg2"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
    st3 = {
        name  = "ashishst3"
        location = "south India"
        rg_key = "rg3"
        account_tier = "Standard"
        account_replication_type = "LRS"
    }
}