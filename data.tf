# Fetch all currently available AZs in the region(us-east-1) we have passed region as us-east-1 in the provider.tf of the module
 data "aws_availability_zones" "available" {
  state = "available"
}


# Fetch default vpc in the current region
data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default" {
  route_table_id = data.aws_vpc.default.main_route_table_id 
}