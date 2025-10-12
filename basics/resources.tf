# https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

resource "local_file" "resource_name" {
  content  = "...Hello World...!!\n"
  filename = "${path.module}/training/file_by_tf.txt"
}

resource "local_sensitive_file" "sensitive_resource" {
  content  = "..Do not see these contents..\n"
  filename = "${path.module}/training/sensitive_file_by_tf.txt"
}
