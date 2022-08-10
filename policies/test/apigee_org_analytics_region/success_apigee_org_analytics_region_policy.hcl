module "tfplan-functions" {
  source = "../../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-apigee-org-analytics-region-success.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}