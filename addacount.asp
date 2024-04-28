<!--#include file ="connect.asp"-->
<%
dim phonenumber,pass,name,addr 
    If (Request.ServerVariables("REQUEST_METHOD" = "POST")) Then
        Request.Form = "phonenummber"
        Request.Form = "pass"
        Request.Form = "name"
        Request.Form = "addr"
            if (not isnull(phonenumber) or not trim(phonenumber)) then
                connDB.Open()
                dim sql,result
                sql = "Insert into Account (phonenumber,pass,name,addr) values(?,?,?,?)"
                phonenumber = result(phonenumber)
                pass = result(pass)
                name = result(name)
                addr = result(addr)
                sql.execute()
                session("Sucess") = "Add acount sucessful!"
                connDB.Close()
            else 
                session("Error") = "Information of acount is null!"
            end if
    end if

%>