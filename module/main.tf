module "module1_sample" {
  source = "./module1"
  input = module.module2_sample.dummy # calls the dummy output block from module2 location
}

module "module2_sample" {
  source = "./module2"

}