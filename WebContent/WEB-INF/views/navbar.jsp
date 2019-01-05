<nav class="navbar navbar-expand-lg navbar-light bg-light py-3">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">Foodee</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link white-font" href="${pageContext.request.contextPath}/">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link white-font" href="${pageContext.request.contextPath}/users/login">Sign In</a>
      </li>
    </ul>
    	<a class="btn btn-outline-primary white-font" href="${pageContext.request.contextPath}/users/registrationForm">Sign up</a>
  </div>
</nav>