<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Stanford_EntityFramework.Models.stanfCategory>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>DanhSach</title>
</head>
<body>
    <div style="width: 100%; text-align:center;">
        <h2>Danh sách chủ đề</h2>
    </div>
    <p style="width: 100%; text-align:right;">
        <%: Html.ActionLink("Thêm mới", "ThemMoi") %>
    </p>
    <table>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.CategoryName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.CategoryDescription) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.CategoryImageName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.NumberOrder) %>
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.CategoryName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.CategoryDescription) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.CategoryImageName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.NumberOrder) %>
            </td>
            <td>
                <%: Html.ActionLink("Sửa", "SuaThongTin", new { id=item.Id }) %> |
                <%: Html.ActionLink("Xóa", "XoaThongTin", new { id = item.Id }, new { onclick = "return confirm('Bạn có chắc chắn muốn xóa không ?')" })%>
            </td>
        </tr>
    <% } %>
    
    </table>
</body>
</html>
