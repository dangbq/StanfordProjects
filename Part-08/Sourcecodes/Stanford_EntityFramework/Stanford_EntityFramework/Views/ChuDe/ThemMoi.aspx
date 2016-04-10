<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Stanford_EntityFramework.Models.stanfCategory>" %>

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
    
    <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>Thêm mới thông tin chủ đề</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CategoryName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.CategoryName) %>
                <%: Html.ValidationMessageFor(model => model.CategoryName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CategoryDescription) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.CategoryDescription) %>
                <%: Html.ValidationMessageFor(model => model.CategoryDescription) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CategoryImageName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.CategoryImageName) %>
                <%: Html.ValidationMessageFor(model => model.CategoryImageName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.NumberOrder) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.NumberOrder) %>
                <%: Html.ValidationMessageFor(model => model.NumberOrder) %>
            </div>
    
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Trở lại", "DanhSach") %>
    </div>
</body>
</html>
