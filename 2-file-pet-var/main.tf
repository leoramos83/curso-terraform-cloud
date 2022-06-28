resource local_file "my-file" {
  content = random_pet.my-pet.id
  filename             = var.filename
}


resource random_pet "my-pet" {
  length    = 1
  prefix    = var.prefix
  separator = "  "

}
