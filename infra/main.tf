module "bucket" {
  source            = "github.com/hugovallada/s3-from-module"
  bucket_name       = "s3-module"
  public_access     = true
  lyfecicle_enabled = true
  days              = 20
}
