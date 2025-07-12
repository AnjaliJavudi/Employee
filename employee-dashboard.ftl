<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Employee Directory</title>
    <link rel="stylesheet" href="/styles.css">
</head>
<body>
    <h1>Employee Directory</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Department</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <#list employees as emp>
            <tr>
                <td>${emp.id}</td>
                <td>${emp.firstName}</td>
                <td>${emp.lastName}</td>
                <td>${emp.email}</td>
                <td>${emp.department}</td>
                <td>${emp.role}</td>
                <td>
                    <button class="edit-btn" data-id="${emp.id}">Edit</button>
                    <button class="delete-btn" data-id="${emp.id}">Delete</button>
                </td>
            </tr>
            </#list>
        </tbody>
    </table>

    <script src="/app.js"></script>
</body>
</html>
