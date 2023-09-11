provider "oci"{
    region  =  var.region 
    fingerprint = var.fingerprint
    profile = "DEFAULT"
    /*created ~/.osi/config that contains private information
        [DEFAULT]
        tenancy_ocid = "YOUR_TENACITY_OCID"
        user_ocid = "YOUR_USER_OCID
        private_key_path = "YOUR_PRIVATE_KEY_PATH"  
    */
}   

