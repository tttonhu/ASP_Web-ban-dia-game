<%
Dim connDB

Set connDB = Server.CreateObject("ADODB.Connection")

strConnection = "Provider = SQLOLEDB; Data Source=ToNhu\SQLEXPRESS; Initial Catalog=sale; User id = sa; Password = 02091998"

connDB.ConnectionString = strConnection

%>