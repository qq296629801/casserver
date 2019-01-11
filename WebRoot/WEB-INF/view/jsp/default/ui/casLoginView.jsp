<%@ page pageEncoding="UTF-8"%>
<jsp:directive.include file="includes/top.jsp" />
<div class="box fl-panel" id="login">
	<form:form method="post" id="fm1" cssClass="fm-v clearfix"
		commandName="${commandName}" htmlEscape="true">
		<form:errors path="*" id="msg" cssClass="errors" element="div" />
		<h2>业务系统</h2>
		<div class="row fl-controls-left">
			<label for="username" class="fl-label">用户</label>
			<c:if test="${not empty sessionScope.openIdLocalId}">
				<strong>${sessionScope.openIdLocalId}</strong>
				<input type="hidden" id="username" name="username"
					value="${sessionScope.openIdLocalId}" />
			</c:if>

			<c:if test="${empty sessionScope.openIdLocalId}">
				<spring:message code="screen.welcome.label.netid.accesskey"
					var="userNameAccessKey" />
				<form:input cssClass="required" cssErrorClass="error" id="username"
					size="25" tabindex="1" accesskey="${userNameAccessKey}"
					path="username" autocomplete="false" htmlEscape="true" />
			</c:if>
		</div>
		<div class="row fl-controls-left">
			<label for="password" class="fl-label">密码</label>
			<spring:message code="screen.welcome.label.password.accesskey"
				var="passwordAccessKey" />
			<form:password cssClass="required" cssErrorClass="error"
				id="password" size="25" tabindex="2" path="password"
				accesskey="${passwordAccessKey}" htmlEscape="true"
				autocomplete="off" />
		</div>
		<div class="row check">
			<input id="warn" name="warn" value="true" tabindex="3"
				accesskey="<spring:message code="screen.welcome.label.warn.accesskey" />"
				type="checkbox" /> <label for="warn">记住我</label>
		</div>
		<div class="row btn-row">
			<input type="hidden" name="lt" value="${loginTicket}" /> <input
				type="hidden" name="execution" value="${flowExecutionKey}" /> <input
				type="hidden" name="_eventId" value="submit" /> <input
				class="btn-submit" name="submit" accesskey="l" value="登录"
				tabindex="4" type="submit" /> <input class="btn-reset" name="reset"
				accesskey="c" value="清空" tabindex="5" type="reset" />
		</div>
	</form:form>
</div>
<jsp:directive.include file="includes/bottom.jsp" />
