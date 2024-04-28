<!--#include file ="connect.asp"-->
<%
    Dim nameitem 
    nameitem = Request.QueryString("nameitem")
     If (not isnull(nameitem) or not trim(nameitem)="") then
        connDB.Open()
        Dim sql
        sql = "DELETE FROM Item WHERE nameitem=" & nameitem
        connDB.Execute(sql)
        Dim affectedRows
        affectedRows = conn.RowsAffected
        If affectedRows > 0 Then
             Response.Write "Sản phẩm đã được xóa thành công."
        Else
            Response.Write "Không tìm thấy sản phẩm để xóa."
        End If
    end if
    End if
%>