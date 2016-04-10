<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Stanford_ArticleManager.Models.stanfArticle>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Danh sách bài viết</title>
</head>
<body>
    <% using(Html.BeginForm()){ %>
    <div style="text-align: center">
        <h2>DANH SÁCH BÀI VIẾT</h2>
    </div>
    <fieldset>
        <legend>Tìm kiếm thông tin</legend>
        <table style="width:100%;">
            <tr>
                <td style="width:15%;">Từ khóa</td>
                <td  style="width:75%;"><%: Html.TextBox("tukhoa",null, new {style="width: 100%"}) %></td>
                <td style="width:10%; padding-left:10px;"><input type="submit" value="Tìm kiếm" /></td>
            </tr>
        </table>
    </fieldset>
    <p style="text-align: right;">
        <%: Html.ActionLink("Thêm mới", "ThemMoi") %>
    </p>
    <table style="width:100%; border-collapse:collapse;" border="1">
        <tr>
            <th>Ảnh đại diện
            </th>
            <th>Tiêu đề
            </th>
            <th>Mô tả
            </th>

            <th>Ngày tạo
            </th>
            <th>Chủ đề
            </th>
            <th></th>
        </tr>

        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
             <img width="80" src="<%: Html.DisplayFor(modelItem => item.ImageName) %>" />
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Title) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Description) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.DateCreated) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.CategoryId) %>
            </td>
            <td>
                <%: Html.ActionLink("Sửa", "SuaThongTin", new { id=item.Id }) %> |
                <%: Html.ActionLink("Chi tiết", "ChiTiet", new { id=item.Id }) %> |
                <%: Html.ActionLink("Xóa", "XoaBaiViet", new { id = item.Id }, new {onclick = "return confirm('Bạn có chắc chắn muốn xóa không ?')" })%>
            </td>
        </tr>
        <% } %>
    </table>
    <% } %>
</body>
</html>
