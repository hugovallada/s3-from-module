module "bucket" {
  source            = "git::https://github.com/hugovallada/s3-module"
  bucket_name       = "s3-module"
  public_access     = true
  lyfecicle_enabled = true
  days              = 20
}
