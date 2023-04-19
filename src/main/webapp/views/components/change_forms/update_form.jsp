<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

            <!-- Card: update Card -->
            <div class="card payment-card">
                <!-- Card Body -->
                <div class="card-body">
                    <!-- update Form -->
                    <form action="/task/update_Task" method="POST" class="add-task-form">

<!-- Form Group -->
                        <div class="form-group mb-3">
                            <label for=""> Enter Your Task's Id Here</label>
                            <input type="text" name="task_id" class="form-control" placeholder="Enter Your Task's Id Here Like 1,2...">
                        </div>
                        <div class="form-group mb-3">
                            <label for=""> Enter Your Task's Title Here</label>
                            <input type="text" name="title" class="form-control" placeholder="Enter Your Task's Title Here ...">
                        </div>
                        <div class="form-group mb-3">
                            <label for=""> Enter Your Task's Description Here</label>
                            <input type="text" name="description" class="form-control" placeholder="Enter Your Task's Description Here ...">
                        </div>
                        <!-- End Of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group mb-3">
                            <label for=""> Select Status Type</label>
                            <select name="status" class="form-control" id="">
                                <option value="">-- Select Status Type --</option>
                                <option value="Pending">Pending</option>
                                <option value="Completed">Completed</option>
                            </select>
                        </div>

                        <div class="form-group mb-3">
                            <label for=""> Due Date</label>
                            <input type="text" name="dueDate" class="form-control" placeholder="Enter Due Date..">
                        </div>
                        <!-- End Of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group mb-2">
                            <button id="" class="btn btn-md transact-btn">Update Task</button>
                        </div>
                        <!-- End Of Form Group -->



                    </form>
                    <!-- End Of update Form -->
                </div>
                <!-- End Of Card Body -->

            </div>
            <!-- End Of Card: Payment Card -->