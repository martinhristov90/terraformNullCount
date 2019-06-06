resource "null_resource" "helloWorld" {
  count = 10

  provisioner "local-exec" {
    command = "echo current Num : ${count.index}"
  }
}
