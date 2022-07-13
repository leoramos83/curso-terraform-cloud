resource local_file "my-file" {
  content = random_pet.my-pet.id
  filename             = $filename

    depends_on = [
    random_pet.my-pet
  ]


}


resource random_pet "my-pet" {
  length    = 1
  prefix    = $prefix
  separator = "  "

}
