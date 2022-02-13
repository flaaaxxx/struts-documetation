<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Basic Struts 2 Application - Welcome</title>
</head>
<body>

<h1>Welcome To Struts 2!</h1>
<p><a href="<s:url action='hello'/>">Hello World</a></p>

<h3>Rejestracja użytkownika</h3>
<s:url action="registerInput" var="registerInputLinkPl">
  <s:param name="request_locale">pl</s:param>
</s:url>
<p><s:a href="%{registerInputLinkPl}">Proszę się zarejestrować</s:a></p>

<s:url action="hello" var="helloLink">
  <s:param name="userName">Bruce Phillips</s:param>
</s:url>

<p><a href="${helloLink}">Hello Bruce Phillips</a></p>

<p>Get your own personal hello by filling out and submitting this form.</p>

<s:form action="hello">
  <s:textfield name="userName" label="Your name" />
  <s:submit value="Submit" />
</s:form>

<s:url action="registerInput" var="registerInputLink" />
<p><s:a href="%{registerInputLink}">Please register</s:a> for our prize drawing.</p>
<p><a href='<s:url action="causeexception" />'>Cause Exception</a></p>
<p><a href='<s:url action="causenullpointerexception" />'>Cause Null Pointer Exception</a></p>
<p><a href='<s:url action="causesecurityexception" />'>Cause Global Security Exception</a></p>
<p><a href='<s:url action="actionspecificexception" />'>Cause ActionSpecific Security Exception</a></p>
<hr />
<s:text name="contact" />


<h3>Debugging</h3>

<p><a href="<s:url action="index" namespace="config-browser" />">Launch the configuration browser</a></p>
<s:url action="index" var="indexLink">
  <s:param name="debug">browser</s:param>
</s:url>
<p><a href="${indexLink}">Reload this page with debugging</a></p>

<s:debug/>

</body>
</html>