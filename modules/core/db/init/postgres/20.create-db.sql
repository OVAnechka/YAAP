-- begin YAAP_TRANSACTION
alter table YAAP_TRANSACTION add constraint FK_YAAP_TRANSACTION_ON_NAME foreign key (NAME_ID) references YAAP_PRODUCT(ID)^
alter table YAAP_TRANSACTION add constraint FK_YAAP_TRANSACTION_ON_CATEGORY foreign key (CATEGORY_ID) references YAAP_CATEGORY(ID)^
alter table YAAP_TRANSACTION add constraint FK_YAAP_TRANSACTION_ON_SOURCE foreign key (SOURCE_ID) references YAAP_COMPANY(ID)^
alter table YAAP_TRANSACTION add constraint FK_YAAP_TRANSACTION_ON_PERIOD foreign key (PERIOD_ID) references YAAP_PERIOD(ID)^
create index IDX_YAAP_TRANSACTION_ON_NAME on YAAP_TRANSACTION (NAME_ID)^
create index IDX_YAAP_TRANSACTION_ON_CATEGORY on YAAP_TRANSACTION (CATEGORY_ID)^
create index IDX_YAAP_TRANSACTION_ON_SOURCE on YAAP_TRANSACTION (SOURCE_ID)^
create index IDX_YAAP_TRANSACTION_ON_PERIOD on YAAP_TRANSACTION (PERIOD_ID)^
-- end YAAP_TRANSACTION
-- begin YAAP_CATEGORY
alter table YAAP_CATEGORY add constraint FK_YAAP_CATEGORY_ON_PARENT foreign key (PARENT_ID) references YAAP_CATEGORY(ID)^
create index IDX_YAAP_CATEGORY_ON_PARENT on YAAP_CATEGORY (PARENT_ID)^
-- end YAAP_CATEGORY
-- begin YAAP_ACCOUNT
alter table YAAP_ACCOUNT add constraint FK_YAAP_ACCOUNT_ON_OWNER foreign key (OWNER_ID) references SEC_USER(ID)^
alter table YAAP_ACCOUNT add constraint FK_YAAP_ACCOUNT_ON_CURRENT_PERIOD foreign key (CURRENT_PERIOD_ID) references YAAP_PERIOD(ID)^
create index IDX_YAAP_ACCOUNT_ON_OWNER on YAAP_ACCOUNT (OWNER_ID)^
create index IDX_YAAP_ACCOUNT_ON_CURRENT_PERIOD on YAAP_ACCOUNT (CURRENT_PERIOD_ID)^
-- end YAAP_ACCOUNT
-- begin YAAP_PERIOD
alter table YAAP_PERIOD add constraint FK_YAAP_PERIOD_ON_ACCOUNT foreign key (ACCOUNT_ID) references YAAP_ACCOUNT(ID)^
create index IDX_YAAP_PERIOD_ON_ACCOUNT on YAAP_PERIOD (ACCOUNT_ID)^
-- end YAAP_PERIOD
