-- The main function is the first function called from Iguana.
function main()   
   -- MS SQL
   -- sysUser sa Zxcvbnm*** 
   local mssql = db.connect{api=db.SQL_SERVER, name='CSMSSQL', user='csusr', password='Zxcvbnm123'}
   mssql:query{sql="select * from CSTestTable", live=false}
   mssql:close()
   
   -- Oracle Xe
   -- sysuser SYSTEM Zxc****
   local oraclesql= db.connect{api=db.ORACLE_OCI, name="XE", user='SYSTEM', password="Zxcvbnm123"}
   oraclesql:query{sql="select * from CSTestTable", live=false}
   oraclesql:close()
   
   -- FTP
   -- user windows login user rwang
   local FtpConn = net.ftp.init{server='CSTEST', username='rwang', password='Zxcvbnm123'}
   FtpConn:get{remote_path="test.txt"}
end