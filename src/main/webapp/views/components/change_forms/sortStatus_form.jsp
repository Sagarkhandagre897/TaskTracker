<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Card: Transfer Card -->
<div class="card transfer-card">
    <!-- Card Body -->
    <div class="card-body">

        <!-- Transfer Form -->
        <form action="/task/sortTask_ByStatus" method="POST">

            <!-- Form Group -->
            <div class="form-group my-2">
                <button id="" class="btn btn-md transact-btn">Sort By Status </button>
            </div>
            <!-- End Of Form Group -->

        </form>
        <!-- End Of Transfer Form -->

    </div>
    <!-- End Of Card Body -->

</div>
<!-- End Of Card: Transfer Card -->