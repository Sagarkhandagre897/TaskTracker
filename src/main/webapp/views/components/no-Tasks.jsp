    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
    
  

    <!-- Container: No tasks  -->
    <div class="container">
        <!-- Card: No tasks -->
        <div class="card no-accounts-card">
            <!-- Card Body -->
            <div class="card-body">
                <!-- Card Title -->
                <h1 class="card-title">
                    <i class="fas fa-ban text-danger"></i> NO Registered Tasks Yet
                </h1>
                 <!-- End Of Card Title -->
                <hr>
                 <!-- Card Text -->
                 <div class="card-text">
                     You currently do not have any created tasks. <br>
                     Please click below to create / add a new tasks.
                 </div>
                 <!-- End Of Card Text -->
                 <br>
                 <button id="add-new-account-btn" class="btn btn-primary btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
                    <i class="fa fa-credit-card"></i>  Add New Task
                 </button>
              
            </div>
            <!-- End Of Card Body -->
        </div>
        <!-- End Of Card: No tasks -->

    </div>
    <!-- End Of Container: No tasks  -->