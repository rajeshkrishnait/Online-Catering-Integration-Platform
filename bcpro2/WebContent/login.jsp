<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> Login Form Design</title>
	<link rel="stylesheet" type="text/css"href="style.css">
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
	<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
</head>
<style type="text/css">

.opacity-8 {
  opacity: .8 !important;
}

.opacity-8 {
  opacity: .9 !important;
}


	html,
body * {
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif
}

body {
    background: linear-gradient(rgba(246, 247, 249, 0.5), rgba(246, 247, 249, 0.5)), url("E://Downloads/Partials/Test/background1.jfif") no-repeat center center fixed;
    /*background-image: url("E://Downloads/Partials/Test/background1.jfif");*/
    background-size: cover
}

.container {
    width: 100%;
    padding-top: 60px;
    padding-bottom: 100px;
    position: relative;
}

.frame {
    height: 575px;
    width: 430px;
    background: #32325d;
    /*background-image: url("E://Downloads/Partials/Test/background2.jfif");*/
    background-size: cover;
    margin-left: auto;
    margin-right: auto;
    border-top: solid 1px rgba(255, 255, 255, .5);
    border-radius: 5px;
    box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.2);
    overflow-y: auto;
    overflow-x: hidden;
    transition: all .5s ease
}

.frame-long {
    height: 615px
}

.frame-short {
    height: 400px;
    margin-top: 50px;
    box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.1)
}

.nav {
    width: 100%;
    height: 100px;
    padding-top: 40px;
    opacity: 1;
    transition: all .5s ease
}

.nav-up {
    transform: translateY(-100px);
    opacity: 0
}

li {
    padding-left: 10px;
    font-size: 18px;
    display: inline;
    text-align: left;
    text-transform: uppercase;
    padding-right: 10px;
    color: #ffffff
}
#daa {
     
  position: relative;
  dislay: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  border: 1px solid rgba(0, 0, 0, .05);
  border-radius: .375rem;
  background-color: #23dece;
  background-clip: border-box;
     margin-left: 0 !important;
 
 }
.signin-active a {
    padding-bottom: 10px;
    color: #ffffff;
    text-decoration: none;
    border-bottom: solid 2px #1059FF;
    transition: all .25s ease;
    cursor: pointer
}

.signin-inactive a {
    padding-bottom: 0;
    color: rgba(255, 255, 255, .3);
    text-decoration: none;
    border-bottom: none;
    cursor: pointer
}

.signup-active a {
    cursor: pointer;
    color: #ffffff;
    text-decoration: none;
    border-bottom: solid 2px #1059FF;
    padding-bottom: 10px
}

.signup-inactive a {
    cursor: pointer;
    color: rgba(255, 255, 255, .3);
    text-decoration: none;
    transition: all .25s ease
}

.form-signin {
    width: 430px;
    height: 375px;
    font-size: 16px;
    font-weight: 300;
    padding-left: 37px;
    padding-right: 37px;
    padding-top: 55px;
    transition: opacity .5s ease, transform .5s ease
}

.form-signin-left {
    transform: translateX(-400px);
    opacity: .0
}

.form-signup {
    width: 430px;
    height: 375px;
    font-size: 16px;
    font-weight: 300;
    padding-left: 37px;
    padding-right: 37px;
    padding-top: 55px;
    position: relative;
    top: -375px;
    left: 400px;
    opacity: 0;
    transition: all .5s ease
}

.form-signup-left {
    transform: translateX(-399px);
    opacity: 1
}

.form-signup-down {
    top: 0px;
    opacity: 0
}

.success {
    width: 80%;
    height: 150px;
    text-align: center;
    position: relative;
    top: -890px;
    left: 450px;
    opacity: .0;
    transition: all .8s .4s ease
}

.success-left {
    transform: translateX(-406px);
    opacity: 1
}

.successtext {
    color: #ffffff;
    font-size: 16px;
    font-weight: 300;
    margin-top: -35px;
    padding-left: 37px;
    padding-right: 37px
}

#check path {
    stroke: #ffffff;
    stroke-linecap: round;
    stroke-linejoin: round;
    stroke-width: .85px;
    stroke-dasharray: 60px 300px;
    stroke-dashoffset: -166px;
    fill: rgba(255, 255, 255, .0);
    transition: stroke-dashoffset 2s ease .5s, fill 1.5s ease 1.0s
}

#check.checked path {
    stroke-dashoffset: 33px;
    fill: rgba(255, 255, 255, .03)
}
.bg-gradient-default {
  background: linear-gradient(87deg, #172b4d 0, #1a174d 100%) !important;
}

.bg-gradient-default {
  background: linear-gradient(87deg, #172b4d 0, #1a174d 100%) !important;
}

.form-signin input,
.form-signup input {
    color: #ffffff;
    font-size: 13px
}

.form-styling {
    width: 100%;
    height: 35px;
    padding-left: 15px;
    border: none;
    border-radius: 20px;
    margin-bottom: 20px;
    background: rgba(255, 255, 255, .2)
}

label {
    font-weight: 400;
    text-transform: uppercase;
    font-size: 13px;
    padding-left: 15px;
    padding-bottom: 10px;
    color: rgba(255, 255, 255, .7);
    display: block
}

:focus {
    outline: none
}

.form-signin input:focus,
textarea:focus,
.form-signup input:focus,
textarea:focus {
    background: rgba(255, 255, 255, .3);
    border: none;
    padding-right: 40px;
    transition: background .5s ease
}

[type="checkbox"]:not(:checked),
[type="checkbox"]:checked {
    position: absolute;
    display: none
}

[type="checkbox"]:not(:checked)+label,
[type="checkbox"]:checked+label {
    position: relative;
    padding-left: 85px;
    padding-top: 2px;
    cursor: pointer;
    margin-top: 8px
}

[type="checkbox"]:not(:checked)+label:before,
[type="checkbox"]:checked+label:before,
[type="checkbox"]:not(:checked)+label:after,
[type="checkbox"]:checked+label:after {
    content: '';
    position: absolute
}

[type="checkbox"]:not(:checked)+label:before,
[type="checkbox"]:checked+label:before {
    width: 65px;
    height: 30px;
    background: rgba(255, 255, 255, .2);
    border-radius: 15px;
    left: 0;
    top: -3px;
    transition: all .2s ease
}

[type="checkbox"]:not(:checked)+label:after,
[type="checkbox"]:checked+label:after {
    width: 10px;
    height: 10px;
    background: rgba(255, 255, 255, .7);
    border-radius: 50%;
    top: 7px;
    left: 10px;
    transition: all .2s ease
}

[type="checkbox"]:checked+label:before {
    background: #0F4FE6
}

[type="checkbox"]:checked+label:after {
    background: #ffffff;
    top: 7px;
    left: 45px
}

[type="checkbox"]:checked+label .ui,
[type="checkbox"]:not(:checked)+label .ui:before,
[type="checkbox"]:checked+label .ui:after {
    position: absolute;
    left: 6px;
    width: 65px;
    border-radius: 15px;
    font-size: 14px;
    font-weight: bold;
    line-height: 22px;
    transition: all .2s ease
}

[type="checkbox"]:not(:checked)+label .ui:before {
    content: "no";
    left: 32px;
    color: rgba(255, 255, 255, .7)
}

[type="checkbox"]:checked+label .ui:after {
    content: "yes";
    color: #ffffff
}

[type="checkbox"]:focus+label:before {
    box-sizing: border-box;
    margin-top: -1px
}

.btn-signup {
    float: left;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 13px;
    text-align: center;
    color: #ffffff;
    padding-top: 8px;
    width: 100%;
    height: 35px;
    border: none;
    border-radius: 20px;
    margin-top: 23px;
    background-color: #1059FF
}

.btn-signin {
    float: left;
    padding-top: 8px;
    width: 100%;
    height: 35px;
    border: none;
    border-radius: 20px;
    margin-top: -8px
}

.btn-animate {
    float: left;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 13px;
    text-align: center;
    color: rgba(255, 255, 255, 1);
    padding-top: 8px;
    width: 100%;
    height: 35px;
    border: none;
    border-radius: 20px;
    margin-top: 23px;
    background-color: rgba(16, 89, 255, 1);
    left: 0px;
    top: 0px;
    transition: all .5s ease, top .5s ease .5s, height .5s ease .5s, background-color .5s ease .75s
}

.btn-animate-grow {
    width: 130%;
    height: 625px;
    position: relative;
    left: -55px;
    top: -420px;
    color: rgba(255, 255, 255, 0);
    background-color: rgba(255, 255, 255, 1)
}

a.btn-signup:hover,
a.btn-signin:hover {
    cursor: pointer;
    background-color: #0F4FE6;
    transition: background-color .5s
}

.forgot {
    height: 100px;
    width: 80%;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    padding-top: 24px;
    margin-top: -535px;
    border-top: solid 1px rgba(255, 255, 255, .3);
    transition: all 0.5s ease
}

.forgot-left {
    transform: translateX(-400px);
    opacity: 0
}

.forgot-fade {
    opacity: 0
}

.forgot a {
    color: rgba(255, 255, 255, .3);
    font-weight: 400;
    font-size: 13px;
    text-decoration: none
}

.welcome {
    width: 100%;
    height: 50px;
    position: relative;
    color: rgba(35, 43, 85, 0.75);
    opacity: 0;
    transition: transform 1.5s ease .25s, opacity .1s ease 1s
}

.welcome-left {
    transform: translateY(-780px);
    opacity: 1
}

.cover-photo {
    height: 150px;
    position: relative;
    left: 0px;
    top: -900px;
    background: linear-gradient(rgba(35, 43, 85, 0.75), rgba(35, 43, 85, 0.95)), url(https://img.icons8.com/bubbles/100/000000/user.png);
    background-size: cover;
    opacity: 0;
    transition: all 1.5s ease 0.55s
}

.cover-photo-down {
    top: -575px;
    opacity: 1
}

.profile-photo {
    height: 125px;
    width: 125px;
    position: relative;
    border-radius: 70px;
    left: 155px;
    top: -1000px;
    background: url(https://img.icons8.com/bubbles/100/000000/user.png);
    background-size: 100% 135%;
    background-position: 100% 100%;
    opacity: 0;
    transition: top 1.5s ease 0.35s, opacity .75s ease .5s;
    border: solid 3px #ffffff
}

.profile-photo-down {
    top: -636px;
    opacity: 1
}

h1 {
    color: #ffffff;
    font-size: 35px;
    font-weight: 300;
    text-align: center
}

.btn-goback {
    position: relative;
    margin-right: auto;
    top: -400px;
    float: left;
    padding: 8px;
    width: 83%;
    margin-left: 37px;
    margin-right: 37px;
    height: 35px;
    border-radius: 20px;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 13px;
    text-align: center;
    color: #1059FF;
    margin-top: -8px;
    border: solid 1px #1059FF;
    opacity: 0;
    transition: top 1.5s ease 0.35s, opacity .75s ease .5s
}

.btn-goback-up {
    top: -1080px;
    opacity: 1
}

a.btn-goback:hover {
    cursor: pointer;
    background-color: #0F4FE6;
    transition: all .5s;
    color: #ffffff
}

#refresh {
    position: fixed;
    bottom: 20px;
    right: 20px;
    background-color: #ffffff;
    width: 50px;
    height: 50px;
    border-radius: 25px;
    box-shadow: 0px 2px 7px rgba(0, 0, 0, 0.1);
    padding: 13px 0 0 13px
}

.refreshicon {
    fill: #d3d3d3;
    transform: rotate(0deg);
    transition: fill .25s ease, transform .25s ease
}

.refreshicon:hover {
    cursor: pointer;
    fill: #1059FF;
    transform: rotate(180deg)
}.jumbotron {
  position:relative;
  height:100vh;
  overflow:hidden;
  margin-bottom:0;
}
.container {
  position:relative;
  z-index:2;
  
  background:rgba(0,0,0,0.2);
  padding:2rem;
  border:1px solid rgba(0,0,0,0.1);
  border-radius:3px;
}

:root {
  --blue: #5e72e4;
  --indigo: #5603ad;
  --purple: #8965e0;
  --pink: #f3a4b5;
  --red: #f5365c;
  --orange: #fb6340;
  --yellow: #ffd600;
  --green: #2dce89;
  --teal: #11cdef;
  --cyan: #2bffc6;
  --white: #fff;
  --gray: #8898aa;
  --gray-dark: #32325d;
  --light: #ced4da;
  --lighter: #e9ecef;
  --primary: #5e72e4;
  --secondary: #f7fafc;
  --success: #2dce89;
  --info: #11cdef;
  --warning: #fb6340;
  --danger: #f5365c;
  --light: #adb5bd;
  --dark: #212529;
  --default: #172b4d;
  --white: #fff;
  --neutral: #fff;
  --darker: black;
  --breakpoint-xs: 0;
  --breakpoint-sm: 576px;
  --breakpoint-md: 768px;
  --breakpoint-lg: 992px;
  --breakpoint-xl: 1200px;
  --font-family-sans-serif: Open Sans, sans-serif;
  --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace;
}

*,
*::before,
*::after {
  box-sizing: border-box;
}

html {
  font-family: sans-serif;
  line-height: 1.15;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -ms-overflow-style: scrollbar;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

@-ms-viewport {
  width: device-width;
}

figcaption,
footer,
header,
main,
nav,
section {
  display: block;
}

body {
  font-family: Open Sans, sans-serif;
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  margin: 0;
  text-align: left;
  color: #525f7f;
  background-color: #f8f9fe;
}

[tabindex='-1']:focus {
  outline: 0 !important;
}

hr {
  overflow: visible;
  box-sizing: content-box;
  height: 0;
}

h1,
h3,
h4,
h5,
h6 {
  margin-top: 0;
  margin-bottom: .5rem;
}

p {
  margin-top: 0;
  margin-bottom: 1rem;
}

address {
  font-style: normal;
  line-height: inherit;
  margin-bottom: 1rem;
}

ul {
  margin-top: 0;
  margin-bottom: 1rem;
}

ul ul {
  margin-bottom: 0;
}

dfn {
  font-style: italic;
}

strong {
  font-weight: bolder;
}

a {
  text-decoration: none;
  color: #5e72e4;
  background-color: transparent;
  -webkit-text-decoration-skip: objects;
}

a:hover {
  text-decoration: none;
  color: #233dd2;
}

a:not([href]):not([tabindex]) {
  text-decoration: none;
  color: inherit;
}

a:not([href]):not([tabindex]):hover,
a:not([href]):not([tabindex]):focus {
  text-decoration: none;
  color: inherit;
}

a:not([href]):not([tabindex]):focus {
  outline: 0;
}

code {
  font-family: SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', monospace;
  font-size: 1em;
}

img {
  vertical-align: middle;
  border-style: none;
}

caption {
  padding-top: 1rem;
  padding-bottom: 1rem;
  caption-side: bottom;
  text-align: left;
  color: #8898aa;
}

label {
  display: inline-block;
  margin-bottom: .5rem;
}

button {
  border-radius: 0;
}

button:focus {
  outline: 1px dotted;
  outline: 5px auto -webkit-focus-ring-color;
}

input,
button,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
  margin: 0;
}

button,
input {
  overflow: visible;
}

button {
  text-transform: none;
}

button,
html [type='button'],
[type='reset'],
[type='submit'] {
  -webkit-appearance: button;
}

button::-moz-focus-inner,
[type='button']::-moz-focus-inner,
[type='reset']::-moz-focus-inner,
[type='submit']::-moz-focus-inner {
  padding: 0;
  border-style: none;
}

input[type='radio'],
input[type='checkbox'] {
  box-sizing: border-box;
  padding: 0;
}

input[type='date'],
input[type='time'],
input[type='datetime-local'],
input[type='month'] {
  -webkit-appearance: listbox;
}

textarea {
  overflow: auto;
  resize: vertical;
}

legend {
  font-size: 1.5rem;
  line-height: inherit;
  display: block;
  width: 100%;
  max-width: 100%;
  margin-bottom: .5rem;
  padding: 0;
  white-space: normal;
  color: inherit;
}

progress {
  vertical-align: baseline;
}

[type='number']::-webkit-inner-spin-button,
[type='number']::-webkit-outer-spin-button {
  height: auto;
}

[type='search'] {
  outline-offset: -2px;
  -webkit-appearance: none;
}

[type='search']::-webkit-search-cancel-button,
[type='search']::-webkit-search-decoration {
  -webkit-appearance: none;
}

::-webkit-file-upload-button {
  font: inherit;
  -webkit-appearance: button;
}

[hidden] {
  display: none !important;
}

h1,
h3,
h4,
h5,
h6,
.h1,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 600;
  line-height: 1.5;
  margin-bottom: .5rem;
  color: #32325d;
}

h1,
.h1 {
  font-size: 1.625rem;
}

h3,
.h3 {
  font-size: 1.0625rem;
}

h4,
.h4 {
  font-size: .9375rem;
}

h5,
.h5 {
  font-size: .8125rem;
}

h6,
.h6 {
  font-size: .625rem;
}

.display-2 {
  font-size: 2.75rem;
  font-weight: 600;
  line-height: 1.5;
}

hr {
  margin-top: 2rem;
  margin-bottom: 2rem;
  border: 0;
  border-top: 1px solid rgba(0, 0, 0, .1);
}

code {
  font-size: 87.5%;
  word-break: break-word;
  color: #f3a4b5;
}

a>code {
  color: inherit;
}

.container {
  width: 100%;
  margin-right: auto;
  margin-left: auto;
  padding-right: 15px;
  padding-left: 15px;
}

@media (min-width: 576px) {
  .container {
    max-width: 540px;
  }
}

@media (min-width: 768px) {
  .container {
    max-width: 720px;
  }
}

@media (min-width: 992px) {
  .container {
    max-width: 960px;
  }
}

@media (min-width: 1200px) {
  .container {
    max-width: 1140px;
  }
}

.container-fluid {
  width: 100%;
  margin-right: auto;
  margin-top:-60px;
  margin-left: 50px;
  padding-right: 15px;
  padding-left: 15px;
}

.row {
  display: flex;
  margin-right: -15px;
  margin-left: -15px;
  flex-wrap: wrap;
}

.col-4,
.col-8,
.col,
.col-md-10,
.col-md-12,
.col-lg-3,
.col-lg-4,
.col-lg-6,
.col-lg-7,
.col-xl-4,
.col-xl-6,
.col-xl-8 {
  position: relative;
  width: 100%;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
}

.col {
  max-width: 100%;
  flex-basis: 0;
  flex-grow: 1;
}

.col-4 {
  max-width: 33.33333%;
  flex: 0 0 33.33333%;
}

.col-8 {
  max-width: 66.66667%;
  flex: 0 0 66.66667%;
}

@media (min-width: 768px) {

  .col-md-10 {
    max-width: 83.33333%;
    flex: 0 0 83.33333%;
  }

  .col-md-12 {
    max-width: 100%;
    flex: 0 0 100%;
  }
}

@media (min-width: 992px) {

  .col-lg-3 {
    max-width: 25%;
    flex: 0 0 25%;
  }

  .col-lg-4 {
    max-width: 33.33333%;
    flex: 0 0 33.33333%;
  }

  .col-lg-6 {
    max-width: 50%;
    flex: 0 0 50%;
  }

  .col-lg-7 {
    max-width: 58.33333%;
    flex: 0 0 58.33333%;
  }

  .order-lg-2 {
    order: 2;
  }
}

@media (min-width: 1200px) {

  .col-xl-4 {
    max-width: 33.33333%;
    flex: 0 0 33.33333%;
  }

  .col-xl-6 {
    max-width: 50%;
    flex: 0 0 50%;
  }

  .col-xl-8 {
    max-width: 66.66667%;
    flex: 0 0 66.66667%;
  }

  .order-xl-1 {
    order: 1;
  }

  .order-xl-2 {
    order: 2;
  }
}

.form-control {
  font-size: 1rem;
  line-height: 1.5;
  display: block;
  width: 100%;
  height: calc(2.75rem + 2px);
  padding: .625rem .75rem;
  transition: all .2s cubic-bezier(.68, -.55, .265, 1.55);
  color: #8898aa;
  border: 1px solid #cad1d7;
  border-radius: .375rem;
  background-color: #fff;
  background-clip: padding-box;
  box-shadow: none;
}

@media screen and (prefers-reduced-motion: reduce) {
  .form-control {
    transition: none;
  }
}

.form-control::-ms-expand {
  border: 0;
  background-color: transparent;
}

.form-control:focus {
  color: #8898aa;
  border-color: rgba(50, 151, 211, .25);
  outline: 0;
  background-color: #fff;
  box-shadow: none, none;
}

.form-control:-ms-input-placeholder {
  opacity: 1;
  color: #adb5bd;
}

.form-control::-ms-input-placeholder {
  opacity: 1;
  color: #adb5bd;
}

.form-control::placeholder {
  opacity: 1;
  color: #adb5bd;
}

.form-control:disabled,
.form-control[readonly] {
  opacity: 1;
  background-color: #e9ecef;
}

textarea.form-control {
  height: auto;
}

.form-group {
  margin-bottom: 1.5rem;
}

.form-inline {
  display: flex;
  flex-flow: row wrap;
  align-items: center;
}

@media (min-width: 576px) {
  .form-inline label {
    display: flex;
    margin-bottom: 0;
    align-items: center;
    justify-content: center;
  }

  .form-inline .form-group {
    display: flex;
    margin-bottom: 0;
    flex: 0 0 auto;
    flex-flow: row wrap;
    align-items: center;
  }

  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }

  .form-inline .input-group {
    width: auto;
  }
}

.btn {
  font-size: 1rem;
  font-weight: 600;
  line-height: 1.5;
  display: inline-block;
  padding: .625rem 1.25rem;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out;
  text-align: center;
  vertical-align: middle;
  white-space: nowrap;
  border: 1px solid transparent;
  border-radius: .375rem;
}

@media screen and (prefers-reduced-motion: reduce) {
  .btn {
    transition: none;
  }
}

.btn:hover,
.btn:focus {
  text-decoration: none;
}

.btn:focus {
  outline: 0;
  box-shadow: 0 7px 14px rgba(50, 50, 93, .1), 0 3px 6px rgba(0, 0, 0, .08);
}

.btn:disabled {
  opacity: .65;
  box-shadow: none;
}

.btn:not(:disabled):not(.disabled) {
  cursor: pointer;
}

.btn:not(:disabled):not(.disabled):active {
  box-shadow: none;
}

.btn:not(:disabled):not(.disabled):active:focus {
  box-shadow: 0 7px 14px rgba(50, 50, 93, .1), 0 3px 6px rgba(0, 0, 0, .08), none;
}

.btn-primary {
  color: #fff;
  border-color: #5e72e4;
  background-color: #5e72e4;
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
}

.btn-primary:hover {
  color: #fff;
  border-color: #5e72e4;
  background-color: #5e72e4;
}

.btn-primary:focus {
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08), 0 0 0 0 rgba(94, 114, 228, .5);
}

.btn-primary:disabled {
  color: #fff;
  border-color: #5e72e4;
  background-color: #5e72e4;
}

.btn-primary:not(:disabled):not(.disabled):active {
  color: #fff;
  border-color: #5e72e4;
  background-color: #324cdd;
}

.btn-primary:not(:disabled):not(.disabled):active:focus {
  box-shadow: none, 0 0 0 0 rgba(94, 114, 228, .5);
}

.btn-info {
  color: #fff;
  border-color: #11cdef;
  background-color: #11cdef;
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
}

.btn-info:hover {
  color: #fff;
  border-color: #11cdef;
  background-color: #11cdef;
}

.btn-info:focus {
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08), 0 0 0 0 rgba(17, 205, 239, .5);
}

.btn-info:disabled {
  color: #fff;
  border-color: #11cdef;
  background-color: #11cdef;
}

.btn-info:not(:disabled):not(.disabled):active {
  color: #fff;
  border-color: #11cdef;
  background-color: #0da5c0;
}

.btn-info:not(:disabled):not(.disabled):active:focus {
  box-shadow: none, 0 0 0 0 rgba(17, 205, 239, .5);
}

.btn-default {
  color: #fff;
  border-color: #172b4d;
  background-color: #172b4d;
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
}

.btn-default:hover {
  color: #fff;
  border-color: #172b4d;
  background-color: #172b4d;
}

.btn-default:focus {
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08), 0 0 0 0 rgba(23, 43, 77, .5);
}

.btn-default:disabled {
  color: #fff;
  border-color: #172b4d;
  background-color: #172b4d;
}

.btn-default:not(:disabled):not(.disabled):active {
  color: #fff;
  border-color: #172b4d;
  background-color: #0b1526;
}

.btn-default:not(:disabled):not(.disabled):active:focus {
  box-shadow: none, 0 0 0 0 rgba(23, 43, 77, .5);
}

.btn-sm {
  font-size: .875rem;
  line-height: 1.5;
  padding: .25rem .5rem;
  border-radius: .375rem;
}

.dropdown {
  position: relative;
}

.dropdown-menu {
  font-size: 1rem;
  position: absolute;
  z-index: 1000;
  top: 100%;
  left: 0;
  display: none;
  float: left;
  min-width: 10rem;
  margin: .125rem 0 0;
  padding: .5rem 0;
  list-style: none;
  text-align: left;
  color: #525f7f;
  border: 0 solid rgba(0, 0, 0, .15);
  border-radius: .4375rem;
  background-color: #fff;
  background-clip: padding-box;
  box-shadow: 0 50px 100px rgba(50, 50, 93, .1), 0 15px 35px rgba(50, 50, 93, .15), 0 5px 15px rgba(0, 0, 0, .1);
}

.dropdown-menu.show {
  display: block;
  opacity: 1;
}

.dropdown-menu-right {
  right: 0;
  left: auto;
}

.dropdown-menu[x-placement^='top'],
.dropdown-menu[x-placement^='right'],
.dropdown-menu[x-placement^='bottom'],
.dropdown-menu[x-placement^='left'] {
  right: auto;
  bottom: auto;
}

.dropdown-divider {
  overflow: hidden;
  height: 0;
  margin: .5rem 0;
  border-top: 1px solid #e9ecef;
}

.dropdown-item {
  font-weight: 400;
  display: block;
  clear: both;
  width: 100%;
  padding: .25rem 1.5rem;
  text-align: inherit;
  white-space: nowrap;
  color: #212529;
  border: 0;
  background-color: transparent;
}

.dropdown-item:hover,
.dropdown-item:focus {
  text-decoration: none;
  color: #16181b;
  background-color: #f6f9fc;
}

.dropdown-item:active {
  text-decoration: none;
  color: #fff;
  background-color: #5e72e4;
}

.dropdown-item:disabled {
  color: #8898aa;
  background-color: transparent;
}

.dropdown-header {
  font-size: .875rem;
  display: block;
  margin-bottom: 0;
  padding: .5rem 1.5rem;
  white-space: nowrap;
  color: #8898aa;
}

.input-group {
  position: relative;
  display: flex;
  width: 100%;
  flex-wrap: wrap;
  align-items: stretch;
}

.input-group>.form-control {
  position: relative;
  width: 1%;
  margin-bottom: 0;
  flex: 1 1 auto;
}

.input-group>.form-control+.form-control {
  margin-left: -1px;
}

.input-group>.form-control:focus {
  z-index: 3;
}

.input-group>.form-control:not(:last-child) {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}

.input-group>.form-control:not(:first-child) {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}

.input-group-prepend {
  display: flex;
}

.input-group-prepend .btn {
  position: relative;
  z-index: 2;
}

.input-group-prepend .btn+.btn,
.input-group-prepend .btn+.input-group-text,
.input-group-prepend .input-group-text+.input-group-text,
.input-group-prepend .input-group-text+.btn {
  margin-left: -1px;
}

.input-group-prepend {
  margin-right: -1px;
}

.input-group-text {
  font-size: 1rem;
  font-weight: 400;
  line-height: 1.5;
  display: flex;
  margin-bottom: 0;
  padding: .625rem .75rem;
  text-align: center;
  white-space: nowrap;
  color: #adb5bd;
  border: 1px solid #cad1d7;
  border-radius: .375rem;
  background-color: #fff;
  align-items: center;
}

.input-group-text input[type='radio'],
.input-group-text input[type='checkbox'] {
  margin-top: 0;
}

.input-group>.input-group-prepend>.btn,
.input-group>.input-group-prepend>.input-group-text {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}

.input-group>.input-group-prepend:not(:first-child)>.btn,
.input-group>.input-group-prepend:not(:first-child)>.input-group-text,
.input-group>.input-group-prepend:first-child>.btn:not(:first-child),
.input-group>.input-group-prepend:first-child>.input-group-text:not(:first-child) {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}

.nav {
  display: flex;
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
  flex-wrap: wrap;
}

.nav-link {
  display: block;
  padding: .25rem .75rem;
}

.nav-link:hover,
.nav-link:focus {
  text-decoration: none;
}

.navbar {
  position: relative;
  display: flex;
  padding: 1rem 1rem;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
}

.navbar>.container,
.navbar>.container-fluid {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
}

.navbar-nav {
  display: flex;
  flex-direction: column;
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}

.navbar-nav .nav-link {
  padding-right: 0;
  padding-left: 0;
}

.navbar-nav .dropdown-menu {
  position: static;
  float: none;
}

@media (max-width: 767.98px) {

  .navbar-expand-md>.container,
  .navbar-expand-md>.container-fluid {
    padding-right: 0;
    padding-left: 0;
  }
}

@media (min-width: 768px) {
  .navbar-expand-md {
    flex-flow: row nowrap;
    justify-content: flex-start;
  }

  .navbar-expand-md .navbar-nav {
    flex-direction: row;
  }

  .navbar-expand-md .navbar-nav .dropdown-menu {
    position: absolute;
  }

  .navbar-expand-md .navbar-nav .nav-link {
    padding-right: 1rem;
    padding-left: 1rem;
  }

  .navbar-expand-md>.container,
  .navbar-expand-md>.container-fluid {
    flex-wrap: nowrap;
  }
}

.navbar-dark .navbar-nav .nav-link {
  color: rgba(255, 255, 255, .95);
}

.navbar-dark .navbar-nav .nav-link:hover,
.navbar-dark .navbar-nav .nav-link:focus {
  color: rgba(255, 255, 255, .65);
}


@keyframes progress-bar-stripes {
  from {
    background-position: 1rem 0;
  }

  to {
    background-position: 0 0;
  }
}

.progress {
  font-size: .75rem;
  display: flex;
  overflow: hidden;
  height: 1rem;
  border-radius: .375rem;
  background-color: #e9ecef;
  box-shadow: inset 0 .1rem .1rem rgba(0, 0, 0, .1);
}

.media {
  display: flex;
  align-items: flex-start;
}

.media-body {
  flex: 1 1;
}

.bg-secondary {
  background-color: #f7fafc !important;
}

a.bg-secondary:hover,
a.bg-secondary:focus,
button.bg-secondary:hover,
button.bg-secondary:focus {
  background-color: #d2e3ee !important;
}

.bg-default {
  background-color: #172b4d !important;
}

a.bg-default:hover,
a.bg-default:focus,
button.bg-default:hover,
button.bg-default:focus {
  background-color: #0b1526 !important;
}

.bg-white {
  background-color: #fff !important;
}

a.bg-white:hover,
a.bg-white:focus,
button.bg-white:hover,
button.bg-white:focus {
  background-color: #e6e6e6 !important;
}

.bg-white {
  background-color: #fff !important;
}

.border-0 {
  border: 0 !important;
}

.rounded-circle {
  border-radius: 50% !important;
}

.d-none {
  display: none !important;
}

.d-flex {
  display: flex !important;
}

@media (min-width: 768px) {

  .d-md-flex {
    display: flex !important;
  }
}

@media (min-width: 992px) {

  .d-lg-inline-block {
    display: inline-block !important;
  }

  .d-lg-block {
    display: block !important;
  }
}

.justify-content-center {
  justify-content: center !important;
}

.justify-content-between {
  justify-content: space-between !important;
}

.align-items-center {
  align-items: center !important;
}

@media (min-width: 1200px) {

  .justify-content-xl-between {
    justify-content: space-between !important;
  }
}

.float-right {
  float: right !important;
}

.shadow,
.card-profile-image img {
  box-shadow: 0 0 2rem 0 rgba(136, 152, 170, .15) !important;
}

.m-0 {
  margin: 0 !important;
}

.mt-0 {
  margin-top: 0 !important;
}

.mb-0 {
  margin-bottom: 0 !important;
}

.mr-2 {
  margin-right: .5rem !important;
}

.ml-2 {
  margin-left: .5rem !important;
}

.mr-3 {
  margin-right: 1rem !important;
}

.mt-4,
.my-4 {
  margin-top: 1.5rem !important;
}

.mr-4 {
  margin-right: 1.5rem !important;
}

.mb-4,
.my-4 {
  margin-bottom: 1.5rem !important;
}

.mb-5 {
  margin-bottom: 3rem !important;
}

.mt--7 {
  margin-top: -6rem !important;
}

.pt-0 {
  padding-top: 0 !important;
}

.pr-0 {
  padding-right: 0 !important;
}

.pb-0 {
  padding-bottom: 0 !important;
}

.pt-5 {
  padding-top: 3rem !important;
}

.pt-8 {
  padding-top: 8rem !important;
}

.pb-8 {
  padding-bottom: 8rem !important;
}

.m-auto {
  margin: auto !important;
}

@media (min-width: 768px) {

  .mt-md-5 {
    margin-top: 3rem !important;
  }

  .pt-md-4 {
    padding-top: 1.5rem !important;
  }

  .pb-md-4 {
    padding-bottom: 1.5rem !important;
  }
}

@media (min-width: 992px) {

  .pl-lg-4 {
    padding-left: 1.5rem !important;
  }

  .pt-lg-8 {
    padding-top: 8rem !important;
  }

  .ml-lg-auto {
    margin-left: auto !important;
  }
}

@media (min-width: 1200px) {

  .mb-xl-0 {
    margin-bottom: 0 !important;
  }
}

.text-right {
  text-align: right !important;
}

.text-center {
  text-align: center !important;
}

.text-uppercase {
  text-transform: uppercase !important;
}

.font-weight-light {
  font-weight: 300 !important;
}

.font-weight-bold {
  font-weight: 600 !important;
}

.text-white {
  color: #fff !important;
}

.text-white {
  color: #fff !important;
}

a.text-white:hover,
a.text-white:focus {
  color: #e6e6e6 !important;
}

.text-muted {
  color: #8898aa !important;
}

@media print {

  *,
  *::before,
  *::after {
    box-shadow: none !important;
    text-shadow: none !important;
  }

  a:not(.btn) {
    text-decoration: underline;
  }

  img {
    page-break-inside: avoid;
  }

  p,
  h3 {
    orphans: 3;
    widows: 3;
  }

  h3 {
    page-break-after: avoid;
  }

  @ page {
    size: a3;
  }

  body {
    min-width: 992px !important;
  }

  .container {
    min-width: 992px !important;
  }

  .navbar {
    display: none;
  }
}

figcaption,
main {
  display: block;
}

main {
  overflow: hidden;
}

.bg-white {
  background-color: #fff !important;
}

a.bg-white:hover,
a.bg-white:focus,
button.bg-white:hover,
button.bg-white:focus {
  background-color: #e6e6e6 !important;
}

.bg-gradient-default {
  background: linear-gradient(87deg, #172b4d 0, #1a174d 100%) !important;
}

.bg-gradient-default {
  background: linear-gradient(87deg, #172b4d 0, #1a174d 100%) !important;
}

@keyframes floating-lg {
  0% {
    transform: translateY(0px);
  }

  50% {
    transform: translateY(15px);
  }

  100% {
    transform: translateY(0px);
  }
}

@keyframes floating {
  0% {
    transform: translateY(0px);
  }

  50% {
    transform: translateY(10px);
  }

  100% {
    transform: translateY(0px);
  }
}

@keyframes floating-sm {
  0% {
    transform: translateY(0px);
  }

  50% {
    transform: translateY(5px);
  }

  100% {
    transform: translateY(0px);
  }
}

.opacity-8 {
  opacity: .8 !important;
}

.opacity-8 {
  opacity: .9 !important;
}

.center {
  left: 50%;
  transform: translateX(-50%);
}

[class*='shadow'] {
  transition: all .15s ease;
}

.font-weight-300 {
  font-weight: 300 !important;
}

.text-sm {
  font-size: .875rem !important;
}

.text-white {
  color: #fff !important;
}

a.text-white:hover,
a.text-white:focus {
  color: #e6e6e6 !important;
}

.avatar {
  font-size: 1rem;
  display: inline-flex;
  width: 48px;
  height: 48px;
  color: #fff;
  border-radius: 50%;
  background-color: #adb5bd;
  align-items: center;
  justify-content: center;
}

.avatar img {
  width: 100%;
  border-radius: 50%;
}

.avatar-sm {
  font-size: .875rem;
  width: 36px;
  height: 36px;
}

.btn {
  font-size: .875rem;
  position: relative;
  transition: all .15s ease;
  letter-spacing: .025em;
  text-transform: none;
  will-change: transform;
}

.btn:hover {
  transform: translateY(-1px);
  box-shadow: 0 7px 14px rgba(50, 50, 93, .1), 0 3px 6px rgba(0, 0, 0, .08);
}

.btn:not(:last-child) {
  margin-right: .5rem;
}

.btn i:not(:first-child) {
  margin-left: .5rem;
}

.btn i:not(:last-child) {
  margin-right: .5rem;
}

.input-group .btn {
  margin-right: 0;
  transform: translateY(0);
}

.btn-sm {
  font-size: .75rem;
}

[class*='btn-outline-'] {
  border-width: 1px;
}

.card-profile-image {
  position: relative;
}

.card-profile-image img {
  position: absolute;
  left: 50%;
  max-width: 180px;
  transition: all .15s ease;
  transform: translate(-50%, -30%);
  border-radius: .375rem;
}

.card-profile-image img:hover {
  transform: translate(-50%, -33%);
}

.card-profile-stats {
  padding: 1rem 0;
}

.card-profile-stats>div {
  margin-right: 1rem;
  padding: .875rem;
  text-align: center;
}

.card-profile-stats>div:last-child {
  margin-right: 0;
}

.card-profile-stats>div .heading {
  font-size: 1.1rem;
  font-weight: bold;
  display: block;
}

.card-profile-stats>div .description {
  font-size: .875rem;
  color: #adb5bd;
}

.main-content {
  position: relative;
}

.main-content .navbar-top {
  position: absolute;
  z-index: 1;
  top: 0;
  left: 0;
  width: 100%;
  padding-right: 0 !important;
  padding-left: 0 !important;
  background-color: transparent;
}

@media (min-width: 768px) {
  .main-content .container-fluid {
    padding-right: 39px !important;
    padding-left: 39px !important;
  }
}

.dropdown {
  display: inline-block;
}

.dropdown-menu {
  min-width: 12rem;
}

.dropdown-menu .dropdown-item {
  font-size: .875rem;
  padding: .5rem 1rem;
}

.dropdown-menu .dropdown-item>i {
  font-size: 1rem;
  margin-right: 1rem;
  vertical-align: -17%;
}

.dropdown-header {
  font-size: .625rem;
  font-weight: 700;
  padding-right: 1rem;
  padding-left: 1rem;
  text-transform: uppercase;
  color: #f6f9fc;
}

.dropdown-menu a.media>div:first-child {
  line-height: 1;
}

.dropdown-menu a.media p {
  color: #8898aa;
}

.dropdown-menu a.media:hover .heading,
.dropdown-menu a.media:hover p {
  color: #172b4d !important;
}

.footer {
  padding: 2.5rem 0;
  background: #f7fafc;
}

.footer .nav .nav-item .nav-link {
  color: #8898aa !important;
}

.footer .nav .nav-item .nav-link:hover {
  color: #525f7f !important;
}

.footer .copyright {
  font-size: .875rem;
}

.form-control-label {
  font-size: .875rem;
  font-weight: 600;
  color: #525f7f;
}

.form-control {
  font-size: .875rem;
}

.form-control:focus:-ms-input-placeholder {
  color: #adb5bd;
}

.form-control:focus::-ms-input-placeholder {
  color: #adb5bd;
}

.form-control:focus::placeholder {
  color: #adb5bd;
}

textarea[resize='none'] {
  resize: none !important;
}

textarea[resize='both'] {
  resize: both !important;
}

textarea[resize='vertical'] {
  resize: vertical !important;
}

textarea[resize='horizontal'] {
  resize: horizontal !important;
}

.form-control-alternative {
  transition: box-shadow .15s ease;
  border: 0;
  box-shadow: 0 1px 3px rgba(50, 50, 93, .15), 0 1px 0 rgba(0, 0, 0, .02);
}

.form-control-alternative:focus {
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08);
}

.input-group {
  transition: all .15s ease;
  border-radius: .375rem;
  box-shadow: none;
}

.input-group .form-control {
  box-shadow: none;
}

.input-group .form-control:not(:first-child) {
  padding-left: 0;
  border-left: 0;
}

.input-group .form-control:not(:last-child) {
  padding-right: 0;
  border-right: 0;
}

.input-group .form-control:focus {
  box-shadow: none;
}

.input-group-text {
  transition: all .2s cubic-bezier(.68, -.55, .265, 1.55);
}

.input-group-alternative {
  transition: box-shadow .15s ease;
  border: 0;
  box-shadow: 0 1px 3px rgba(50, 50, 93, .15), 0 1px 0 rgba(0, 0, 0, .02);
}

.input-group-alternative .form-control,
.input-group-alternative .input-group-text {
  border: 0;
  box-shadow: none;
}

.focused .input-group-alternative {
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08) !important;
}

.focused .input-group {
  box-shadow: none;
}

.focused .input-group-text {
  color: #8898aa;
  border-color: rgba(50, 151, 211, .25);
  background-color: #fff;
}

.focused .form-control {
  border-color: rgba(50, 151, 211, .25);
}

.header {
  position: relative;
}

.input-group {
  transition: all .15s ease;
  border-radius: .375rem;
  box-shadow: none;
}

.input-group .form-control {
  box-shadow: none;
}

.input-group .form-control:not(:first-child) {
  padding-left: 0;
  border-left: 0;
}

.input-group .form-control:not(:last-child) {
  padding-right: 0;
  border-right: 0;
}

.input-group .form-control:focus {
  box-shadow: none;
}

.input-group-text {
  transition: all .2s cubic-bezier(.68, -.55, .265, 1.55);
}

.input-group-alternative {
  transition: box-shadow .15s ease;
  border: 0;
  box-shadow: 0 1px 3px rgba(50, 50, 93, .15), 0 1px 0 rgba(0, 0, 0, .02);
}

.input-group-alternative .form-control,
.input-group-alternative .input-group-text {
  border: 0;
  box-shadow: none;
}

.focused .input-group-alternative {
  box-shadow: 0 4px 6px rgba(50, 50, 93, .11), 0 1px 3px rgba(0, 0, 0, .08) !important;
}

.focused .input-group {
  box-shadow: none;
}

.focused .input-group-text {
  color: #8898aa;
  border-color: rgba(50, 151, 211, .25);
  background-color: #fff;
}

.focused .form-control {
  border-color: rgba(50, 151, 211, .25);
}

.mask {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  transition: all .15s ease;
}

@media screen and (prefers-reduced-motion: reduce) {
  .mask {
    transition: none;
  }
}

.nav-link {
  color: #525f7f;
}

.nav-link:hover {
  color: #5e72e4;
}

.nav-link i.ni {
  position: relative;
  top: 2px;
}

.navbar-search .input-group {
  border: 2px solid;
  border-radius: 2rem;
  background-color: transparent;
}

.navbar-search .input-group .input-group-text {
  padding-left: 1rem;
  background-color: transparent;
}

.navbar-search .form-control {
  width: 270px;
  background-color: transparent;
}

.navbar-search-dark .input-group {
  border-color: rgba(255, 255, 255, .6);
}

.navbar-search-dark .input-group-text {
  color: rgba(255, 255, 255, .6);
}

.navbar-search-dark .form-control {
  color: rgba(255, 255, 255, .9);
}

.navbar-search-dark .form-control:-ms-input-placeholder {
  color: rgba(255, 255, 255, .6);
}

.navbar-search-dark .form-control::-ms-input-placeholder {
  color: rgba(255, 255, 255, .6);
}

.navbar-search-dark .form-control::placeholder {
  color: rgba(255, 255, 255, .6);
}

.navbar-search-dark .focused .input-group {
  border-color: rgba(255, 255, 255, .9);
}

@media (min-width: 768px) {
  .navbar .dropdown-menu {
    margin: 0;
    pointer-events: none;
    opacity: 0;
  }

  .navbar .dropdown-menu-arrow:before {
    position: absolute;
    z-index: -5;
    bottom: 100%;
    left: 20px;
    display: block;
    width: 12px;
    height: 12px;
    content: '';
    transform: rotate(-45deg) translateY(12px);
    border-radius: 2px;
    background: #fff;
    box-shadow: none;
  }

  .navbar .dropdown-menu-right:before {
    right: 20px;
    left: auto;
  }

  @ keyframes show-navbar-dropdown {
    0% {
      transition: visibility .25s, opacity .25s, transform .25s;
      transform: translate(0, 10px) perspective(200px) rotateX(-2deg);
      opacity: 0;
    }

    100% {
      transform: translate(0, 0);
      opacity: 1;
    }
  }

  @keyframes hide-navbar-dropdown {
    from {
      opacity: 1;
    }

    to {
      transform: translate(0, 10px);
      opacity: 0;
    }
  }
}

@media (max-width: 767.98px) {
  .navbar-nav .nav-link {
    padding: .625rem 0;
    color: #172b4d !important;
  }

  .navbar-nav .dropdown-menu {
    min-width: auto;
    box-shadow: none;
  }
}

@keyframes show-navbar-collapse {
  0% {
    transform: scale(.95);
    transform-origin: 100% 0;
    opacity: 0;
  }

  100% {
    transform: scale(1);
    opacity: 1;
  }
}

@keyframes hide-navbar-collapse {
  from {
    transform: scale(1);
    transform-origin: 100% 0;
    opacity: 1;
  }

  to {
    transform: scale(.95);
    opacity: 0;
  }
}

.progress {
  overflow: hidden;
  height: 8px;
  margin-bottom: 1rem;
  border-radius: .25rem;
  background-color: #e9ecef;
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}

p {
  font-size: 1rem;
  font-weight: 300;
  line-height: 1.7;
}

.description {
  font-size: .875rem;
}

.heading {
  font-size: .95rem;
  font-weight: 600;
  letter-spacing: .025em;
  text-transform: uppercase;
}

.heading-small {
  font-size: .75rem;
  padding-top: .25rem;
  padding-bottom: .25rem;
  letter-spacing: .04em;
  text-transform: uppercase;
}

.display-2 span {
  font-weight: 300;
  display: block;
}

@media (max-width: 768px) {
  .btn {
    margin-bottom: 10px;
  }
}

#navbar .navbar {
  margin-bottom: 20px;
}
</style>
	<body>
    <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(https://thumbs.dreamstime.com/b/indian-food-curry-butter-chicken-palak-paneer-chiken-tikka-biryani-vegetable-curry-papad-dal-palak-sabji-jira-alu-rice-138550014.jpg); background-size: cover; background-position: center top;">
	<span class="mask bg-gradient-default opacity-8"></span>
	<div class="container-fluid  ">
        <div class="row">
        
              <div class="card" id="daa">
            
               <div class="card-body">
              <div class="frame">
        <div class="nav">
            <ul class="links">
                <li class="signin-active"><a class="btn">Sign in</a></li>
                <li class="signup-inactive"><a class="btn">Sign up </a></li>
            </ul>
        </div>
        <div ng-app ng-init="checked = false">
            <form class="form-signin" action="userlogin" method="POST" name="form"> <label for="username">Username</label> <input class="form-styling" type="text" name="mail_id" placeholder="" /> <label for="password">Password</label> <input class="form-styling" type="password" name="password" placeholder="" /> <input type="checkbox" id="checkbox" /> <label for="checkbox"><span class="ui"></span>Keep me signed in</label>
               <div class="form-group">
	                        <input type="submit" class="btn btn-primary" value="                                 Sign In                                      " />
	                        
	                      </div>
            </form>
            <form class="form-signup"  action="displayprof2" method="POST" name="form" >
             
            	<label for="fullname">User name</label> <input class="form-styling" type="text" id="username" name="fullname" placeholder="name" required/>
            	<label for="email">Email</label> <input class="form-styling" type="text" id="email" name="email" placeholder="" /> 

            	 <label for="mobileNumber">Mobile Number</label> <input class="form-styling" type="int" name="mobileNumber" placeholder=""required />
            	 <label for="address">Address</label> <input class="form-styling" type="text" id="address" name="address" placeholder="" required/>
            	 <label for="city">Ciy</label> <input class="form-styling" type="text" name="city" placeholder=""required />
            	 <label for="pincode">Pincode</label> <input class="form-styling" type="text" name="pincode" placeholder=""required />
            	 <label for="state">Stte</label> <input class="form-styling" type="text" id="state" name="state" placeholder="" required/>
            	 <label for="country">Country</label> <input class="form-styling" type="text" name="country" placeholder="" required/>
            	 <label for="password">Password</label> <input class="form-styling" type="text" id="password" name="password"  required/> 
            	  <label for="password">Re-Enter Password</label> <input class="form-styling" id="password2" type="password" name="password2" required /> 
            	 
            	 <div class="form-group">
							<input type="radio" id="vehicle1" onClick=" return registration()" name="vehicle1" value="Bike">  <label for="vehicle1"> Check if you make It</label><br>
							<input type="submit" onClick="return registration()" class="btn btn-primary" value="Submit"/>
	                       	
	                      </div></form>
            <div class="success"> <svg width="270" height="270" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 60" id="check" ng-class="checked ? 'checked' : ''">
                    <path fill="#ffffff" d="M40.61,23.03L26.67,36.97L13.495,23.788c-1.146-1.147-1.359-2.936-0.504-4.314 c3.894-6.28,11.169-10.243,19.283-9.348c9.258,1.021,16.694,8.542,17.622,17.81c1.232,12.295-8.683,22.607-20.849,22.042 c-9.9-0.46-18.128-8.344-18.972-18.218c-0.292-3.416,0.276-6.673,1.51-9.578" />
                    <div class="successtext">
                        <p> Thanks for signing up! Check your email for confirmation.</p>
                    </div>
            </div>
        
    </div> 
</div>
  				        						
             
       			   </div> 
			  </div>
			</div>
		<div class="row">
			<div class="container mt-4">

            
            <!--Section: Live preview-->
                        <!--Section: Live preview-->
          
            <hr class="my-4">
          
        </div>
        
		
		</div>
        </div>
	
	</div>
		<script>new WOW().init();</script>
	
<script>
	
	 function registration()
		{

			var name= document.getElementById("username").value;
			var email= document.getElementById("email").value;
			var uname= document.getElementById("state").value;
			var pwd= document.getElementById("password").value;			
			var cpwd= document.getElementById("password2").value;

	        //email id expression code
			var pwd_expression = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
			var letters = /^[A-Za-z]+$/;
			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

			if(name=='')
			{
				alert('Please enter your name');
			}
			else if(!letters.test(name))
			{
				alert('Name field required only alphabet characters');

			}
			else if(email=='')
			{
				alert('Please enter your user email id');

			}
			else if (!filter.test(email))
			{
				alert('Invalid email');

			}
			else if(uname=='')
			{
				alert('Please enter the user name.');

			}
			else if(!letters.test(uname))
			{
				alert('User name field required only alphabet characters');

			}
			else if(pwd=='')
			{
				alert('Please enter Password');

			}
			else if(cpwd=='')
			{
				alert('Enter Confirm Password');

			}
			else if(!pwd_expression.test(pwd))
			{
				alert ('Upper case, Lower case, Special character and Numeric letter are required in Password filed');

			}
			else if(pwd != cpwd)
			{
				alert ('Password not Matched');

			}
			else if(document.getElementById("password").value.length < 6)
			{
				alert ('Password minimum length is 6');

			}
			else if(document.getElementById("password").value.length > 12)
			{
				alert ('Password max length is 12');

			}
			else
			{				                            
	               alert('YAY! Now click Submit to Register!');
				   // Redirecting to other page or webste code.
					return true;

			}
		}
		
	</script>
	

	</body>
		
	<script type="text/javascript">
		$(function() {
$(".btn").click(function() {
$(".form-signin").toggleClass("form-signin-left");
$(".form-signup").toggleClass("form-signup-left");
$(".frame").toggleClass("frame-long");
$(".signup-inactive").toggleClass("signup-active");
$(".signin-active").toggleClass("signin-inactive");
$(".forgot").toggleClass("forgot-left");
$(this).removeClass("idle").addClass("active");
});
});

$(function() {
$(".btn-signup").click(function() {
$(".nav").toggleClass("nav-up");
$(".form-signup-left").toggleClass("form-signup-down");
$(".success").toggleClass("success-left");
$(".frame").toggleClass("frame-short");
});
});

$(function() {
$(".btn-signin").click(function() {
$(".btn-animate").toggleClass("btn-animate-grow");
$(".welcome").toggleClass("welcome-left");
$(".cover-photo").toggleClass("cover-photo-down");
$(".frame").toggleClass("frame-short");
$(".profile-photo").toggleClass("profile-photo-down");
$(".btn-goback").toggleClass("btn-goback-up");
$(".forgot").toggleClass("forgot-fade");
});
});
	</script>
</html>