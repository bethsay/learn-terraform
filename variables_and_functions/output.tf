output "path" {
  # value = "They are all created and stored in ${local.path}"
  value = "They are all created and stored in ${path.cwd}${trimprefix(local.path, ".")}"
  sensitive = false
}
output "items" {
  # value = format("Some of these items are %s", join(", ",resource.local_file.file1[*].filename))
  value = format("Some of these items are %s", join(", ",[for attr in resource.local_file.file1 : basename(attr.filename)]))
  # value = format("Some of these items are %s", join(", ",[for attr in resource.local_file.file1 : trimprefix(attr.filename,"${local.path}/")]))
  # value = format("Some of these items are %s", join(", ",[for attr in resource.local_file.file1 : regex("([^/]+)$",attr.filename)[0]]))
  # value = format("Some of these items are %s", join(", ",[for attr in resource.local_file.file1 : element(split("/",attr.filename),-1)]))
}
output "count" {
  value = format("We have %d files created", length(resource.local_file.file1) + length(resource.local_file.file2) + length(resource.local_file.env_files_set) + length(resource.local_file.component_files) + length(resource.local_file.env_files_list) + length(resource.local_file.content_files))
}
