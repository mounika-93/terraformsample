resource "aws_s3_bucket" "b" {
  bucket = "my-terra-form-my-aws"
  acl    = "private"

  tags {
    Name        = "Myterraformbucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_object" "b_object" {
  bucket = "${aws_s3_bucket.b.id}"
  source= "/dev/null"
  key    = "terraform/terraform.tfstate"
}

