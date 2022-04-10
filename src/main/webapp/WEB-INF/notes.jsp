<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Notes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body class="d-flex justify-content-center align-items-center p-4 bg-secondary">
        <div class=" d-flex flex-column border w-50 p-5 rounded-2 bg-white">
            <h1>Notes for ${email}</h1>

            <p>
                <c:if test="${message eq 'create'}">Note created</c:if>
                <c:if test="${message eq 'update'}">Note updated</c:if>
                <c:if test="${message eq 'delete'}">Note deleted</c:if>
                <c:if test="${message eq 'error'}">Sorry, something went wrong.</c:if>
            </p>
            <ul>
                <c:forEach items="${notes}" var="note">
                    <li><a href="notes?action=view&amp;noteId=${note.noteId}">${note.title} (${note.owner.firstName})</a><br></li>
                </c:forEach>
            </ul>
            <c:if test="${selectedNote eq null}">
            <h2>Create a New Note</h2>
            <form action="notes" method="post">
                Title: <input type="text" name="title" value="" class="mb-3 form-control"><br>
                Contents:<br>
                <textarea name="contents" rows="10" cols="40" class="form-control"></textarea><br>
                <input type="hidden" name="action" value="create">
                <input type="submit" value="Create" class="mb-3">
            </form>
            </c:if>
            <c:if test="${selectedNote ne null}">
            <h2>Edit Note</h2>
            <form action="notes" method="post">
                Title: <input type="text" name="title" value="${selectedNote.title}" class="form-control"><br>
                Contents:<br>
                <textarea name="contents" rows="10" cols="40"  class="form-control">${selectedNote.contents}</textarea><br>
                <input type="hidden" name="noteId" value="${selectedNote.noteId}">
                <input type="hidden" name="action" value="update" class="mb-3">
                <input type="submit" value="Save" class="mb-3">
            </form>

            <form action="notes" method="post">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="noteId" value="${selectedNote.noteId}">
                <input type="submit" value="Delete" class="mb-3">
            </form>
            <a href="notes">cancel edit</a>
            </c:if>
            
            
            <a href="login">Log out</a>
        </div>
    </body>
</html>
