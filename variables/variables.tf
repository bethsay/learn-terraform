variable "file1" {
  description = "file name"
  default = "tf_file_1"
  type = string
}
variable "file2" {
  description = "file name"
  default = "tf_file_2"
  type = string
}
variable "replica" {
  description = "Resource multiplier"
  type = number
  default = 1
}
# variable "env" {
#   description = "List of environments"
#   type = list(string)
#   default = [ "tf_infra_1", "tf_infra_2" ]
# }
# variable "component" {
#   description = "List of components"
#   type = map(string)
#   default = {
#     "Zone1" = "Public Content of Zone1"
#     "Zone2" = "Private data within Zone2"
#   }
# }
