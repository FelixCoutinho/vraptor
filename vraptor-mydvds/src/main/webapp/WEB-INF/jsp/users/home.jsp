<%@ include file="/header.jsp" %> 

<div class="blue-box">
<h1>${userInfo.user.name}: <fmt:message key="your_dvds"/></h1>
<hr/>

<table>
<c:forEach var="dvd" items="${userInfo.user.dvds}">
	<label>${dvd.title}</td><td>${dvd.description}</td><td><fmt:message key="${dvd.type}"/></td></tr>
</c:forEach>
</table>
</div>

<br/><br/>

<div class="blue-box">
<form action="<c:url value="/dvds"/>" enctype="multipart/form-data" name="dvdRegister" method="post">
	<fieldset>
		<legend><fmt:message key="new_dvd"/></legend>
		<label for="title"><fmt:message key="dvd.title"/></label>
		<input type="text" id="title" name="dvd.title" value="${dvd.title }"/>
		<label for="description"><fmt:message key="dvd.description"/></label>
		<input type="text" id="description" name="dvd.description" value="${dvd.title }"/>
		<label for="file"><fmt:message key="sample_file"/></label>
		<input type="file" id="file" name="file"/>
		<label for="type"><fmt:message key="dvd.type"/></label>
		<select name="dvd.type" id="type">
			<c:forEach items="${dvdTypes}" var="type">
				<option value="${type }"><fmt:message key="${type }"/></option>
			</c:forEach>
		</select>
		<button type="submit"><fmt:message key="send"/></button>
	</fieldset>
</form>
</div>

<br/><br/>

<div class="blue-box">
<form action="<c:url value="/dvds/search"/>">
	<fieldset>
		<legend><fmt:message key="search_dvds"/></legend>
		<label for="dvd.title"><fmt:message key="dvd.title"/></label>
		<input type="text" name="dvd.title" id="dvd.title" value="${dvd.title }"/>
		<button type="submit"><fmt:message key="search"/></button>		
	</fieldset>
</form>
</div>

<%@ include file="/footer.jsp" %> 