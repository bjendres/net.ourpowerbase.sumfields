<?
/**
 * Rebuild the summary fields
 */
function civicrm_api3_summary_fields_rebuild($params) {
	error_log("net.ourpowerbase.sumfields: starting data rebuild");
	sumfields_generate_data_based_on_current_data();
	error_log("net.ourpowerbase.sumfields: enable triggers");
	CRM_Core_DAO::triggerRebuild();
	error_log("net.ourpowerbase.sumfields: done data rebuild");
	return civicrm_api3_create_success();
}