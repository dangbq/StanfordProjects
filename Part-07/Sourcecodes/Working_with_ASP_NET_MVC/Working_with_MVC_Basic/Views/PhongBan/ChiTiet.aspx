<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Working_with_MVC_Basic.Models.PhongBan>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>ChiTiet</title>
</head>
<body>
    <fieldset>
        <legend>PhongBan</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.MaPhong) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.MaPhong) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.TenPhong) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.TenPhong) %>
        </div>
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
