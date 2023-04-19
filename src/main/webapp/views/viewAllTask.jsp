<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="../css/fontawesome/css/all.css">
    <link rel="stylesheet" href="../css/main.css">
    <script src="../js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>

<!-- Header -->
<c:import url="components/incl/header.jsp"/>


<!-- Transact Offcanvas: pulls from the left -->
<c:import url="filter_offcanvas.jsp"/>

<div class="container d-flex">


    <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
        <i class="fa fa-wallet"></i> Filter Task
    </button>
    <!-- End Of change Button -->


</div>
<!-- Container -->
<div class="container">

    <!-- Card: view All Card -->
    <div class="card">
        <!-- Card Header -->
        <div class="card-header">
            <i class="fas fa-credit-card me-2" aria-hidden="true"></i> View All Task
        </div>
        <!-- End Of Card Header -->
        <!-- Card Body -->
        <div class="card-body">
            <c:if test="${requestScope.viewAllTask != null}">
                <!-- Payment History Table -->
                <table class="table text-center table-striped">
                    <tr>
                        <th>Task Id</th>
                        <th>Title </th>
                        <th> Description </th>
                        <th> Status </th>
                        <th> Due Date </th>
                        <th>Created At </th>
                        <th>Updated At</th>
                    </tr>
                    <!-- Loop Through view all Records -->
                    <c:forEach items="${requestScope.viewAllTask}" var="task">
                        <tr>
                            <td>${task.task_id}</td>
                            <td>${task.title}</td>
                            <td>${task.description}</td>
                            <td>${task.status}</td>
                            <td>${task.dueDate}</td>
                            <td>${task.created_at}</td>
                            <td>${task.updated_at}</td>

                        </tr>
                    </c:forEach>
                    <!-- End Of Loop Through view all Records -->

                </table>
                <!-- End Of viewAll  Table -->
            </c:if>
        </div>
        <!-- End Of Card Body -->
    </div>
    <!-- End Of Card: View All Card -->
</div>
<!-- End Of Container -->




<!-- Footer -->
<c:import url="components/incl/footer.jsp"/>
