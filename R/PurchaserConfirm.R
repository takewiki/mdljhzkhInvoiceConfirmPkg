#' 查询对账单
#'
#' @param dms_token 第二个参数
#' @param FBILLNO
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' Task_view
PurchaserConfirm_view <- function(dms_token,FBILLNO) {
  sql = paste0("select
FCustomerRemark	as	客户备注	,
FCustomerNumber	as	客户代码	,
FCustomerName	as	客户名称	,
FReconciliationPeriod	as	对账期间	,
FWayBillNo	as	运单号	,
FCreateDate	as	创建日期	,
FModifyDate	as	修改日期	,
FID	as	内码	,
Fseq	as	行号	,
FERPPoBillNo	as	ERP采购订单号	,
FReconciliationAmount	as	对账金额	,
FOriginalAmount	as	原始金额	,
FServiceAmount	as	服务金额	,
FAMOUNT	as	不含税金额	,
FBillNo	as	对账单号	,
FTAXAMOUNT	as	税额	,
Fremark	as	备注	,
FDDPoBillNo	as	钉钉采购申请单号	,
Fuser	as	用户	,
FResults	as	对账结果
from rds_zkh_src_t_reconciliation_po
 WHERE FBILLNO='",FBILLNO,"'

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
  sql = paste0("update a set  a.FResults=b.FResults from rds_zkh_src_t_reconciliation_po a
inner join rds_zkh_src_t_reconciliation_po_input b on a.fbillno=b.FBillNo and a.FERPPoBillNo =b.FERPPoBillNo

               ")
  res = tsda::sql_update2(token = dms_token,sql_str = sql)
  return(res)

}



#' 删除临时表
#'
#' @param dms_token
#'
#' @return 两个数的和
#' @export
#'
#' @examples
#' Task_view
PurchaserConfirm_delete <- function(dms_token) {
  sql = paste0("truncate table rds_zkh_src_t_reconciliation_po_input

               ")
  res = tsda::sql_delete2(token = dms_token,sql_str = sql)
  return(res)

}


