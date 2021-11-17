alter session set "_ORACLE_SCRIPT"=true;
create role UT_REPO_ADMINISTRATOR;
create role UT_REPO_USER;
grant create public synonym,drop public synonym to UT_REPO_ADMINISTRATOR;
grant select on dba_role_privs to UT_REPO_USER;
grant select on dba_role_privs to UT_REPO_ADMINISTRATOR;
grant select on dba_roles to UT_REPO_ADMINISTRATOR;
grant select on dba_roles to UT_REPO_USER;
grant select on dba_tab_privs to UT_REPO_ADMINISTRATOR;
grant select on dba_tab_privs to UT_REPO_USER;
grant execute on dbms_lock to UT_REPO_ADMINISTRATOR;
grant execute on dbms_lock to UT_REPO_USER;
grant UT_REPO_USER to UT_REPO_ADMINISTRATOR with admin option;
grant UT_REPO_ADMINISTRATOR to "UNIT_TEST_REPOS" with admin option;