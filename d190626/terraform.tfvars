//for_each is used to create multiple resources based on a list or map. In this example, we are creating multiple Azure Resource Groups using the values provided in the variable "ashish". Each resource group will have a unique name based on the elements of the list.

# ashish = [
#   "ashish1",
#   "ashish2",
#   "ashish3"
# ]



//for_Each with map is used to create multiple resources based on a map. In this example, we are creating multiple Azure Resource Groups using the key-value pairs provided in the variable "ashish". Each resource group will have a unique name and location based on the elements of the map.
ashish = {
    "ashish1" = "Central India",
    "ashish2" = "East US",
    "ashish3" = "West Europe"
}
