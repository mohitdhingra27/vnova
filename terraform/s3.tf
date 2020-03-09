resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket-123"
  acl    = "private"

  tags = {
    Name = "myprivate_bucket"
  }
}
