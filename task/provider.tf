provider "oci"{
    region  =  var.region 
    profile = "DEFAULT"
    /*created ~/.osi/config that contains private information
        [DEFAULT]
        tenancy_ocid = "ORCALE_ACCOUNT_TENACITY_OCID"
        user_ocid = "ORCALE_ACCOUNT_USER_OCID
        private_key_path = "ORCALE_ACCOUNT_PRIVATE_KEY_PATH"  
        fingerprint = "ORCALE_ACCOUNT_FINGERPRINT"
    */
}   

