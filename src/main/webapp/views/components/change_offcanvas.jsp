<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>


<!-- Start Of Transact OffCanvas -->
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
    <div class="offcanvas-header">
        <h5 class="offcanvas-title text-white" id="offcanvasExampleLabel">Transact</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <!-- Offcanvas:  change Body -->
    <div class="offcanvas-body">
        <small class="card-text text-white">
            Choose an option below to perform a change in task
        </small>
        <!-- change Type Drop Down List -->
        <select name="transact-type" class="form-control my-3" id="transact-type">
            <option value="">-- Select Change Type --</option>
            <option value="payment">Update Task</option>
            <option value="transfer">Delete Task </option>
        </select>
        <!-- End Of  change Type Drop Down List -->


        <!-- Payments Form Card -->
        <c:import url="components/change_forms/update_form.jsp"/>
        <!-- Transfer Form Card -->
        <c:import url="components/change_forms/delete_form.jsp"/>



    </div>
    <!-- End Of Offcanvas:  change Body -->
</div>
<!-- End Of Start Of  change OffCanvas -->