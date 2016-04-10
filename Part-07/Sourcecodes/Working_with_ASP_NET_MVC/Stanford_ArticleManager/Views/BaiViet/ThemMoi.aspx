<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Stanford_ArticleManager.Models.stanfArticle>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Thêm mới bài viết</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.8.2.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>stanfArticle</legend>
    
            <div class="editor-label">
                Tiêu đề
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Title) %>
                <%: Html.ValidationMessageFor(model => model.Title) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Description) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Description) %>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ArticleContent) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.ArticleContent) %>
                <%: Html.ValidationMessageFor(model => model.ArticleContent) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ImageName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.ImageName) %>
                <%: Html.ValidationMessageFor(model => model.ImageName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.DateCreated) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CategoryId) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.CategoryId) %>
                <%: Html.ValidationMessageFor(model => model.CategoryId) %>
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
