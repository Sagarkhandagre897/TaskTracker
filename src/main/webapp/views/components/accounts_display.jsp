    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!-- Container -->
    <div class="container d-flex">

        <button id="add-account-btn" class="btn btn-lg shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">
           <i class="fa fa-credit-card"></i> Add New Task
        </button>

        <button id="transact-btn" class="btn btn-lg ms-auto shadow" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
            <i class="fa fa-wallet"></i> Change Task
        </button>
        <!-- End Of change Button -->


    </div>
    <!-- End Of Container -->

    <div class="container d-flex py-3">
        <h2 class="me-auto">All Tasks Are Listed Below Tap The Down Arrow :</h2>
        <h2 class="ms-auto">
            <c:if test="${requestScope.userName != null}">
                <c:out value="${userName}"/>
            </c:if>
        </h2>
    </div>

    <!-- Container: Accordion Menu / Drop Down -->
    <div class="container">
        <!-- Accordion Menu / Drop Down -->
        <c:if test="${requestScope.userTasks != null }">

         <c:forEach items="${requestScope.userTasks}" var="task">

        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
              <h2 class="accordion-header" id="flush-headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-${account.account_id}" aria-expanded="false" aria-controls="flush-collapseOne">
                  ${task.task_id}
                </button>
              </h2>
              <div id="flush-${ac.account_id}" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                <div class="accordion-body">
                    <!-- Account Details List -->
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item d-flex">Task Id <span class="ms-auto"><b>${task.task_id}</b></span></li>
                        <li class="list-group-item d-flex">Title <span class="ms-auto"><b>${task.title}</b></span></li>
                        <li class="list-group-item d-flex">Description <span class="ms-auto"><b>${task.description}</b></span></li>
                        <li class="list-group-item d-flex">Status <span class="ms-auto"><b>${task.status}</b></span></li>
                        <li class="list-group-item d-flex">Due Date <span class="ms-auto"><b>${task.dueDate}</b></span></li>
                        <li class="list-group-item d-flex">Created at <span class="ms-auto"><b>${task.created_at}</b></span></li>
                        <li class="list-group-item d-flex">Updated at <span class="ms-auto"><b>${task.updated_at}</b></span></li>
                    </ul>
                    <!-- Account Details List -->
                </div>
              </div>
            </div>
          </div>
         </c:forEach>

        </c:if>
        <!-- End Of Accordion Menu / Drop Down -->
    </div>
    <!-- End Of Container: Accordion Menu / Drop Down -->