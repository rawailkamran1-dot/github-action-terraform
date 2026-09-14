locals {
  ssm_parameters_names = {
    vpc_id      = "/pragra/project-a/vpc/id"
    publicRT_id = "/pragra/project-a/publicrt/id"
    subnet1_id  = "/pragra/project-a/subnet1/id"
    subnet2_id  = "/pragra/project-a/subnet2/id"
    subnet3_id  = "/pragra/project-a/subnet3/id"
    subnet4_id  = "/pragra/project-a/subnet4/id"
    ec2_sg_id   = "/pragra/project-a/ec2/sg/id"
  }
}

data "aws_ssm_parameter" "resources" {
  for_each = local.ssm_parameters_names

  name = "arn:aws:ssm:ca-central-1:208179291823:parameter${each.value}"
}