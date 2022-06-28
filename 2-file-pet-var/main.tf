resource local_file name {
  content = ""
  filename             = ${random_pet.my-pet.id}
  file_permission      = 0777
  directory_permission = 0777
}


resource random_pet "my-pet" {
  length    = 1
  prefix    = var.prefix
  separator = " "

}
