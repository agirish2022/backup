module "tfplan-functions" {
  source = "../../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-gcp-apigee-net-comp-diff-netw-prob3-fail.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "./mock-tfconfig-gcp-apigee-net-comp-diff-netw-prob3-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}