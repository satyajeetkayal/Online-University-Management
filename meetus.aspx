<%@ Page Language="C#" AutoEventWireup="true" CodeFile="meetus.aspx.cs" Inherits="meetus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

body{
	margin:0;
	padding:0;
	font-family:"arial",heletica,sans-serif;
	font-size:12px;
    background: #2980b9 url('https://static.tumblr.com/03fbbc566b081016810402488936fbae/pqpk3dn/MRSmlzpj3/tumblr_static_bg3.png') repeat 0 0;
	-webkit-animation: 10s linear 0s normal none infinite animate;
	-moz-animation: 10s linear 0s normal none infinite animate;
	-ms-animation: 10s linear 0s normal none infinite animate;
	-o-animation: 10s linear 0s normal none infinite animate;
	animation: 10s linear 0s normal none infinite animate;
 
}
 
@-webkit-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@-moz-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@-ms-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@-o-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}

<style>
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
        font-family: "Comic Sans MS";
    }

.column {
  float: left;
  width: 31.6%;
  margin-bottom: 16px;
  height:50%;
  padding: 0 8px;
}

@media (max-width: 650px) {
  .column {
    width: 100%;
    height:50%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  background-color:White;
  height:50%;
}

.container {
  padding: 0 16px;
  height:50%;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

    .style1
    {
        color: #FFFFFF;
        text-align: center;
        font-size: xx-large;
        font-family: "Comic Sans MS";
    }

    .style2
    {
        font-size: large;
        text-align: center;
        color: #FFFFFF;
    }

</style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2 class="style1"><strong>Meet The Developers" Section</strong></h2>
<p class="style2">SYS Developers!</p>
</br>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<p></p>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/w3images/team1.jpg" alt="" style="height:50% width:100% ">
      <div class="container">
        <h2>Satyajeet</h2>
        <p class="title">Designer</p>
        <p>CSS,HTML</p>
        <p>satyajeetkoyal97@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/w3images/team2.jpg" alt="" style="width:100%">
      <div class="container">
        <h2>Yatish</h2>
        <p class="title">Project Leader</p>
        <p>Presentation and Reports</p>
        <p>yatishnager55@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="/w3images/team3.jpg" alt="" style="width:100%">
      <div class="container">
        <h2>Suraj</h2>
        <p class="title">Developer</p>
        <p>SQL Server Database</p>
        <p>sonisuraj310@gmail.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>


    </div>
    </form>
</body>
</html>
