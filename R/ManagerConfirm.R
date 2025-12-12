#' 采购经理查询对账单
#'
#' @param dms_token 第二个参数
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' ManagerConfirm_view
ManagerConfirm_view <- function(dms_token) {
  sql = paste0("
 exec rds_proc_pur__checkNote_ByBillNo

               ")
  res = tsda::sql_select2(token =dms_token ,sql = sql)
  return(res)

}


#' 查询对账单id
#'
#' @param dms_token 第二个参数
#' @param statementNo
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' ManagerConfirm_id
ManagerConfirm_id <- function(dms_token,statementNo) {
  sql = paste0("
exec rds_proc_pur__checkNote_id '",statementNo,"'

               ")
  res = tsda::sql_select2(token =dms_token ,sql = sql)
  return(res)

}


#' 查询对账单id
#'
#' @param dms_token 第二个参数
#' @param statementNo
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' ManagerConfirm_isdo
ManagerConfirm_isdo <- function(dms_token,statementNo) {
  sql = paste0("
exec rds_proc_pur__checkNote_isdo '",statementNo,"'

               ")
  res = tsda::sql_update2(token =dms_token ,sql_str = sql)
  return(res)

}

