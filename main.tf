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
