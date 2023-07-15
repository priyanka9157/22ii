<div class="header__top__right__auth">

				<%
				if (session.getAttribute("user") == null) {
				%>
				<a href="login"><i class="fa fa-user"></i> Login</a>
				<%}else{ %>
								<a href="logout"><i class="fa fa-user"></i>Logout</a>
								
								
				<%
				}
				%>
			</div>