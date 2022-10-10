module "bucket" {
  source            = "git::https://github.com/hugovallada/s3-module"
  bucket_name       = "new-glacier-bucket"
  public_access     = true
  lifecycle_enabled = true
  days              = 20
}
