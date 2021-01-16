-resource "google_compute_instance" "default" {
  name         = "myserver"
  machine_type = "e2-medium"
  zone         = "europe-west2-a"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
  }
  network_interface {
    network = "default"

  }
}
resource "aws_instance" "myec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.small"
}
resource "aws_s3_bucket" "test" {
  bucket = "kethan777"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "google_storage_bucket" "hi" {
  name          = "killimil"
  location      = "asia"
  storage_class = "COLDLINE"

}
count and count.index
resource "aws_iam_user" "hello" {
  name  = "appload${count.index}"
  path  = "/system/"
  count = 3

  tags = {
    name = "kethan.${count.index}"
  }
}




