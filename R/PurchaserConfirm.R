#' 查询对账单
#'
#' @param dms_token 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' Task_view
PurchaserConfirm_view <- function(dms_token) {
  sql = paste0("
  exec rds_proc_pur_checkNote_ByPOEntry

               ")
  res = tsda::sql_select2(token =dms_token ,sql = sql)
  return(res)

}


#' 更新对账单
#'
#' @param dms_token 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' Task_view
PurchaserConfirm_update <- function(dms_token) {
  sql = paste0("
  exec rds_proc_pur_checkNote_ByPOEntry_update

               ")
  res = tsda::sql_update2(token = dms_token,sql_str = sql)
  return(res)

}




