<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Working_with_MVC_Basic.Models.PhongBan>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>ThemMoi</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.8.2.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm("ChiTiet", "PhongBan")) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>PhongBan</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MaPhong) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.MaPhong) %>
                <%: Html.ValidationMessageFor(model => model.MaPhong) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.TenPhong) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.TenPhong) %>
                <%: Html.ValidationMessageFor(model => model.TenPhong) %>
            </div>
    
            <p>
                <input type="submit" value="Tạo mới" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Trở lại", "DanhSach") %>
    </div>
</body>
</html>
