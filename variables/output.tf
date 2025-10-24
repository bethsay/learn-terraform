output "path" {
  value = "All your files are created in ${local.path}"
  sensitive = false
}
output "item" {
  value = "This is one item ${resource.local_file.file1[0].filename}"
}
# output "count" {
#   count = 
#   value = ""
# }
