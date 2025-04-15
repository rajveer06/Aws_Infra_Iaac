terraform {
  backend "s3" {
    bucket         = "terraform-state-myproject-20250415"
    key            = "terraform/terraform.tfstate"
    encrypt        = true
    region         = "us-west-2"
  }
}

module "ec2_instance" {
  source        = "./modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  instance_name = var.instance_name
}

module "tf_state" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
}

module "tf_state_1" {
    source = "./modules/s3"
    bucket_name = var.bucket_name_1
}
