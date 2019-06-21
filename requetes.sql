-- v8 to v9

ALTER TABLE llx_accounting_account DROP FOREIGN KEY fk_accounting_account_fk_pcg_version;
ALTER TABLE llx_accounting_account MODIFY COLUMN fk_pcg_version varchar(32) NOT NULL;
ALTER TABLE llx_accounting_system MODIFY COLUMN pcg_version varchar(32) NOT NULL;
ALTER TABLE llx_accounting_account ADD CONSTRAINT fk_accounting_account_fk_pcg_version    FOREIGN KEY (fk_pcg_version)    REFERENCES llx_accounting_system (pcg_version);

ALTER TABLE llx_payment_salary ADD COLUMN ref varchar(30) NULL after rowid;
ALTER TABLE llx_payment_salary ADD COLUMN fk_projet integer DEFAULT NULL after amount;

ALTER TABLE llx_payment_various ADD COLUMN ref varchar(30) NULL after rowid;


-- v9 to v10
ALTER TABLE llx_payment_various ADD COLUMN subledger_account varchar(32);
ALTER TABLE llx_accounting_bookkeeping ADD COLUMN date_export datetime DEFAULT NULL after date_validated;
ALTER TABLE llx_accounting_bookkeeping DROP COLUMN validated;
ALTER TABLE llx_accounting_bookkeeping_tmp DROP COLUMN validated;