<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Card: Deposit Card -->
<div class="card deposit-card">
    <!-- Card Body -->
    <div class="card-body">

        <!-- Deposit Form -->
        <form action="/task/sortBy_dueDate" method="POST" class="deposit-form">

            <div class="form-group my-2">
                <button id="" class="btn btn-md transact-btn">Sort By DueDate</button>
            </div>
            <!-- End Of Form Group -->
        </form>
        <!-- End Deposit Form  -->

    </div>
    <!-- End Of Card Body -->

</div>
<!-- End Of Card: Deposit Card -->