module "tfplan-functions" {
  source = "../../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-gcp_apigee-components-without-environment-and-instance-attachment-fail.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}