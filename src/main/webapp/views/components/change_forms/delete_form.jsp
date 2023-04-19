<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Card: Transfer Card -->
            <div class="card transfer-card">
                <!-- Card Body -->
                <div class="card-body">

                <!-- Transfer Form -->
                <form action="/task/delete_Task" method="POST">

                    <div class="form-group mb-3">
                        <label for=""> Enter Your Task's Id Here To Delete The Task</label>
                        <input type="text" name="task_id" class="form-control" placeholder="Enter Your Task's Id ">
                    </div>

                    <div class="form-group my-2">
                        <button id="" class="btn btn-md transact-btn">Delete Task</button>
                    </div>

                </form>
                <!-- End Of Transfer Form -->

                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Transfer Card -->