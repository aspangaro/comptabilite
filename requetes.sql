-- v9 to v10
ALTER TABLE llx_payment_various ADD COLUMN subledger_account varchar(32);
ALTER TABLE llx_accounting_bookkeeping ADD COLUMN date_export datetime DEFAULT NULL after date_validated;
ALTER TABLE llx_accounting_bookkeeping DROP COLUMN validated;
ALTER TABLE llx_accounting_bookkeeping_tmp DROP COLUMN validated;