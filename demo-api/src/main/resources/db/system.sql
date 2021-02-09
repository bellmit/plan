--------------------------------------------------
-- Export file for user TL_PT_DEMO              --
-- Created by xieyanling on 2020/7/23, 18:50:24 --
--------------------------------------------------

set define off
spool system.log

prompt
prompt Creating table SYS_ANNEX
prompt ========================
prompt
create table SYS_ANNEX
(
  annex_id    VARCHAR2(32) not null,
  annex_name  VARCHAR2(500),
  annex_type  VARCHAR2(32),
  annex_dir   VARCHAR2(2000),
  rel_id      VARCHAR2(32),
  annex_no    VARCHAR2(200),
  order_no    NUMBER(6),
  create_user VARCHAR2(32),
  update_user VARCHAR2(32),
  create_time DATE,
  update_time DATE,
  file_title  VARCHAR2(32)
)
;
comment on table SYS_ANNEX
  is '������';
comment on column SYS_ANNEX.annex_id
  is '����ID';
comment on column SYS_ANNEX.annex_name
  is '��������';
comment on column SYS_ANNEX.annex_type
  is '��������';
comment on column SYS_ANNEX.annex_dir
  is '������ַ';
comment on column SYS_ANNEX.rel_id
  is '����ID';
comment on column SYS_ANNEX.annex_no
  is '�������';
comment on column SYS_ANNEX.order_no
  is '��������';
comment on column SYS_ANNEX.create_user
  is '������';
comment on column SYS_ANNEX.update_user
  is '������';
comment on column SYS_ANNEX.create_time
  is '����ʱ��';
comment on column SYS_ANNEX.update_time
  is '����ʱ��';
comment on column SYS_ANNEX.file_title
  is '�������⣬���ֵ��������FILE_TITLE';
alter table SYS_ANNEX
  add constraint PK_SYS_ANNEX primary key (ANNEX_ID);

prompt
prompt Creating table SYS_OPERATE_LOG
prompt ==============================
prompt
create table SYS_OPERATE_LOG
(
  log_id       VARCHAR2(32) not null,
  operate__ip  VARCHAR2(16),
  operator     VARCHAR2(32),
  operate_time DATE,
  content      VARCHAR2(500)
)
;
comment on table SYS_OPERATE_LOG
  is 'ϵͳ����ҵ����־';
comment on column SYS_OPERATE_LOG.log_id
  is '����';
comment on column SYS_OPERATE_LOG.operate__ip
  is '����IP';
comment on column SYS_OPERATE_LOG.operator
  is '������';
comment on column SYS_OPERATE_LOG.operate_time
  is '����ʱ��';
comment on column SYS_OPERATE_LOG.content
  is '��������';
alter table SYS_OPERATE_LOG
  add constraint PK_SYS_OPERATE_LOG primary key (LOG_ID);

prompt
prompt Creating table SYS_QUARTZ_JOB
prompt =============================
prompt
create table SYS_QUARTZ_JOB
(
  id              VARCHAR2(32) not null,
  bean_name       VARCHAR2(255),
  cron_expression VARCHAR2(255),
  is_pause        NUMBER(1),
  job_name        VARCHAR2(255),
  method_name     VARCHAR2(255),
  params          VARCHAR2(255),
  remark          VARCHAR2(255),
  create_time     DATE,
  update_time     DATE,
  create_user     VARCHAR2(255),
  update_user     VARCHAR2(255)
)
;
comment on table SYS_QUARTZ_JOB
  is '��������';
comment on column SYS_QUARTZ_JOB.bean_name
  is 'Spring Bean����';
comment on column SYS_QUARTZ_JOB.cron_expression
  is 'cron ���ʽ';
comment on column SYS_QUARTZ_JOB.is_pause
  is '״̬��1��ͣ��0����';
comment on column SYS_QUARTZ_JOB.job_name
  is '��������';
comment on column SYS_QUARTZ_JOB.method_name
  is '��������';
comment on column SYS_QUARTZ_JOB.params
  is '����';
comment on column SYS_QUARTZ_JOB.remark
  is '��ע';
comment on column SYS_QUARTZ_JOB.create_time
  is '����ʱ��';
comment on column SYS_QUARTZ_JOB.update_time
  is '�������������';
comment on column SYS_QUARTZ_JOB.create_user
  is '������';
comment on column SYS_QUARTZ_JOB.update_user
  is '������';
alter table SYS_QUARTZ_JOB
  add constraint PK_SYS_QUARTZ_JOB primary key (ID);

prompt
prompt Creating table SYS_QUARTZ_LOG
prompt =============================
prompt
create table SYS_QUARTZ_LOG
(
  id               VARCHAR2(32) not null,
  job_id           VARCHAR2(32),
  bean_name        VARCHAR2(255),
  cron_expression  VARCHAR2(255),
  exception_detail CLOB,
  is_success       NUMBER(1),
  job_name         VARCHAR2(255),
  method_name      VARCHAR2(255),
  params           VARCHAR2(255),
  time             NUMBER(22),
  create_time      DATE,
  update_time      DATE,
  create_user      VARCHAR2(255),
  update_user      VARCHAR2(255)
)
;
comment on table SYS_QUARTZ_LOG
  is '����������־';
comment on column SYS_QUARTZ_LOG.job_id
  is '����ID,����JOB������';
comment on column SYS_QUARTZ_LOG.bean_name
  is 'Bean����';
comment on column SYS_QUARTZ_LOG.cron_expression
  is 'cron���ʽ';
comment on column SYS_QUARTZ_LOG.exception_detail
  is '�쳣��ϸ';
comment on column SYS_QUARTZ_LOG.is_success
  is '�Ƿ�ɹ�';
comment on column SYS_QUARTZ_LOG.job_name
  is '��������';
comment on column SYS_QUARTZ_LOG.method_name
  is '��������';
comment on column SYS_QUARTZ_LOG.params
  is '����';
comment on column SYS_QUARTZ_LOG.time
  is '��ʱ�����룩';
comment on column SYS_QUARTZ_LOG.create_time
  is '����ʱ��';
comment on column SYS_QUARTZ_LOG.update_time
  is '����ʱ��';
comment on column SYS_QUARTZ_LOG.create_user
  is '������';
comment on column SYS_QUARTZ_LOG.update_user
  is '������';
alter table SYS_QUARTZ_LOG
  add constraint PK_SYS_QUARTZ_LOG primary key (ID);


spool off
