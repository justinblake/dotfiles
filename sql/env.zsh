

export ORACLE_HOME=”/Applications/oracle/product/instantclient_64/11.2.0.4.0″
export PATH=$ORACLE_HOME/bin:$PATH
export DYLD_LIBRARY_PATH=$ORACLE_HOME/lib
alias sqlplus='rlwrap sqlplus'
alias tnsnames='vi /Applications/oracle/product/instantclient_64/11.2.0.4.0/network/admin/tnsnames.ora'
