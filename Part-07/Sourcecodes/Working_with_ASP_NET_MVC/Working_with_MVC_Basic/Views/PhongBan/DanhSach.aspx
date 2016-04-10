<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Working_with_MVC_Basic.Models.PhongBan>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>DanhSach</title>
</head>
<body>
    <div style="width:100%; text-align:center;">
        <h2>DANH SÁCH PHÒNG BAN</h2>
    </div>
    <p style="text-align:right; width:100%;">
        <%: Html.ActionLink("Tạo mới", "ThemMoi") %>
    </p>
    <table>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.MaPhong) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.TenPhong) %>
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.MaPhong) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.TenPhong) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ }) %> |
                <%: Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { /* id=item.PrimaryKey */ }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
</body>
</html>
