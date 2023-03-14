module "call_blog_qa" {
  source = "../modules/blog"

  vpc_environment = {
    name = "qa"
    cidr_prefix = "10.1"
  }

  min_size = 0
  max_size = 0
}
