    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

     <!-- Right Side Offcanvas: Accounts Form Container -->
      <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
        
            <h5 id="offcanvasRightLabel" class="text-white">Create / Add Task </h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            
        </div>
        <!--  Offcanvas Body: Task Form Wrapper -->
        <div class="offcanvas-body">
            <!-- Card: Task Form Card  -->
            <div class="card">
                <!-- Card Body -->
                <div class="card-body">
                    <form action="/task/create_Task"  method="POST" class="add-task-form">
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
                        <div class="form-group my-2">
                            <button id="" class="btn btn-md transact-btn">Add Task</button>
                        </div>
                        <!-- End Of Form Group -->

                    </form>
                </div>
                <!-- End Of Card Body -->
            </div>
            <!-- End Card: Accounts Form Card  -->
        </div>
        <!-- End Of Offcanvas Body: Accounts Form Wrapper -->
    </div>
    <!-- End Of Right Side Offcanvas: Accounts Form Container -->