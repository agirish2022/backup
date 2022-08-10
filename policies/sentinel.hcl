module "tfplan-functions" {
    source = "../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

#mock "tfplan/v2" {
#  module {
#    source = "../sentinel-mocks/mock-tfplan-v2.sentinel"
#  }
#}

#mock "tfconfig/v2" {
#  module {
#    source = "../sentinel-mocks/mock-tfconfig-v2.sentinel"
#  }
#}

mock "tfplan/v2" {
  module {
    source = "../GCP_APIGEE_NET_COMP/data/mock-tfplan-v2.sentinel"
  }
}

mock "tfconfig/v2" {
  module {
    source = "../GCP_APIGEE_NET_COMP/data/mock-tfconfig-v2.sentinel"
  }
}

mock "tfstate/v2" {
  module {
    source = "../sentinel-mocks/mock-tfstate-v2.sentinel"
  }
}



#policy "apigee_org_analytics_region" {
#    source = "./apigee_org_analytics_region.sentinel"
#    enforcement_level = "hard-mandatory"
#}

policy "apigee_instance_mandate.sentinel" {
    source = "./apigee_instance_mandate.sentinel"
    enforcement_level = "hard-mandatory"
}