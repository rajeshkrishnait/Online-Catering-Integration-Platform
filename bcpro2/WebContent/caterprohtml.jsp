<%@ page import="java.util.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css" integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv" crossorigin="anonymous">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
</script><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script src="js/app-ajax.js" type="text/javascript"></script>
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <link href="css/navbar-fixed-top.css" rel="stylesheet">

    <script src="js/ie-emulation-modes-warning.js"></script>
        <link rel="icon" href="favicon.ico">
    <title>  Profil</title>
    

  <style type="text/css">

<style>

@import url(https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
@import url(http://fonts.googleapis.com/css?family=Calibri:400,300,700);


fieldset,
label {
    margin: 0;
    padding: 0
}

body {
    margin: 20px
}

h1 {
    font-size: 1.5em;
    margin: 10px
}

.rating {
    border: none;
    margin-right: 49px
}

.myratings {
    font-size: 85px;
    color: green
}

.rating>[id^="star"] {
    display: none
}

.rating>label:before {
    margin: 5px;
    font-size: 1.25em;
    font-family: FontAwesome !important;
    display: inline-block;
    content: "\f005"
}

.rating>.half:before {
    content: "\f089";
    position: absolute
}

.rating>label {
    color: #ddd;
    float: right
}


.rating>[id^="star"]:checked~label,
.rating:not(:checked)>label:hover,
.rating:not(:checked)>label:hover~label {
    color: #0000FF

}

.rating>[id^="star"]:checked+label:hover,
.rating>[id^="star"]:checked~label:hover,
.rating>label:hover~[id^="star"]:checked~label,
.rating>[id^="star"]:checked~label:hover~label {
    color: #0000FF

}

.reset-option {
    display: none
}

.reset-button {
    margin: 6px 12px;
    background-color: rgb(255, 255, 255);
    text-transform: uppercase
}

.mt-100 {
    margin-top: 100px
}

#pas {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #d2d2dc;
    border-radius: 11px;
    -webkit-box-shadow: 0px 0px 5px 0px rgb(249, 249, 250);
    -moz-box-shadow: 0px 0px 5px 0px rgba(212, 182, 212, 1);
    box-shadow: 0px 0px 5px 0px rgb(161, 163, 164)
}

.card .card-body {
    padding: 1rem 1rem
}

.card-body {
    flex: 1 1 auto;
    padding: 1.25rem
}

p {
    font-size: 14px
}

h4 {
    margin-top: 18px
}

.btn:focus {
    outline: none
}

.btn {
    border-radius: 22px;
    text-transform: capitalize;
    font-size: 13px;
    padding: 8px 19px;
    cursor: pointer;
    color: #fff;
    background-color: #D50000
}

.btn:hover {
    background-color: #D32F2F !important
}

body{
background:#dcdcdc;    
}
.total-like-user-main a {
    display: inline-block;
    margin: 0 -17px 0 0;
}
.total-like {
    border: 1px solid;
    border-radius: 50px;
    display: inline-block;
    font-weight: 500;
    height: 34px;
    line-height: 33px;
    padding: 0 13px;
    vertical-align: top;
}
.restaurant-detailed-ratings-and-reviews hr {
    margin: 0 -24px;
}
.graph-star-rating-header .star-rating {
    font-size: 17px;
}
.progress {
    background: #f2f4f8 none repeat scroll 0 0;
    border-radius: 0;
    height: 30px;
}
.rating-list {
    display: inline-flex;
    margin-bottom: 15px;
    width: 100%;
}
.rating-list-left {
    height: 16px;
    line-height: 29px;
    width: 10%;
}
.rating-list-center {
    width: 80%;
}
.rating-list-right {
    line-height: 29px;
    text-align: right;
    width: 10%;
}
.restaurant-slider-pics {
    bottom: 0;
    font-size: 12px;
    left: 0;
    z-index: 999;
    padding: 0 10px;
}
.restaurant-slider-view-all {
    bottom: 15px;
    right: 15px;
    z-index: 999;
}
.offer-dedicated-nav .nav-link.active,
.offer-dedicated-nav .nav-link:hover,
.offer-dedicated-nav .nav-link:focus {
    border-color: #3868fb;
    color: #3868fb;
}
.offer-dedicated-nav .nav-link {
    border-bottom: 2px solid #fff;
    color: #000000;
    padding: 16px 0;
    font-weight: 600;
}
.offer-dedicated-nav .nav-item {
    margin: 0 37px 0 0;
}
.restaurant-detailed-action-btn {
    margin-top: 12px;
}
.restaurant-detailed-header-right .btn-success {
    border-radius: 3px;
    height: 45px;
    margin: -18px 0 18px;
    min-width: 130px;
    padding: 7px;
}
.text-black {
    color: #000000;
}
.icon-overlap {
    bottom: -23px;
    font-size: 74px;
    opacity: 0.23;
    position: absolute;
    right: -32px;
}
.menu-list img {
    width: 41px;
    height: 41px;
    object-fit: cover;
}
.restaurant-detailed-header-left img {
    width: 88px;
    height: 88px;
    border-radius: 3px;
    object-fit: cover;
    box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075)!important;
}
.reviews-members .media .mr-3 {
    width: 56px;
    height: 56px;
    object-fit: cover;
}
.rounded-pill {
    border-radius: 50rem!important;
}
.total-like-user {
    border: 2px solid #fff;
    height: 34px;
    box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075)!important;
    width: 34px;
}
.total-like-user-main a {
    display: inline-block;
    margin: 0 -17px 0 0;
}
.total-like {
    border: 1px solid;
    border-radius: 50px;
    display: inline-block;
    font-weight: 500;
    height: 34px;
    line-height: 33px;
    padding: 0 13px;
    vertical-align: top;
}
.restaurant-detailed-ratings-and-reviews hr {
    margin: 0 -24px;
}
.graph-star-rating-header .star-rating {
    font-size: 17px;
}
.progress {
    background: #f2f4f8 none repeat scroll 0 0;
    border-radius: 0;
    height: 30px;
}
.restaurant-slider-pics {
    bottom: 0;
    font-size: 12px;
    left: 0;
    z-index: 999;
    padding: 0 10px;
}
.restaurant-slider-view-all {
    bottom: 15px;
    right: 15px;
    z-index: 999;
}

.progress {
    background: #f2f4f8 none repeat scroll 0 0;
    border-radius: 0;
    height: 30px;
}

/* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 10px;
  height: 3px;
 float:right;
}
.card-img-to {
    width: 100%!important;
   height: 700px!important;
   object-fit: cover;
      margin-bottom: 0 !important;
     
}
.card-img-top {
    width: 250px!important;
   height: 220px!important;
   object-fit: cover;
     
}
/* Hide default HTML checkbox */
.switch input {display:none;}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input.default:checked + .slider {
  background-color: #444;
}
input.primary:checked + .slider {
  background-color: #2196F3;
}
input.success:checked + .slider {
  background-color: #8bc34a;
}
input.info:checked + .slider {
  background-color: #3de0f5;
}
input.warning:checked + .slider {
  background-color: #FFC107;
}
input.danger:checked + .slider {
  background-color: #f44336;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}
 body {
     background-color: #f9f9fa
 }

 .flex {
     -webkit-box-flex: 1;
     -ms-flex: 1 1 auto;
     flex: 1 1 auto
 }

 @media (max-width:991.98px) {
     .padding {
         padding: 1.5rem
     }
 }

 @media (max-width:767.98px) {
     .padding {
         padding: 1rem
     }
 }

 .padding {
     padding: 5rem
 }

 .card {
     box-shadow: none;
     -webkit-box-shadow: none;
     -moz-box-shadow: none;
     -ms-box-shadow: none
     //background-color: #5e72e4;
     
 }

 .pl-3,
 .px-3 {
     padding-left: 1rem !important
 }

 #daa {
     
  position: relative;
  dislay: flex;
  flex-direction: column;
  min-width: 0;
  word-wrap: break-word;
  border: 1px solid rgba(0, 0, 0, .05);
  border-radius: .375rem;
  background-color: #fff;
  background-clip: border-box;
     margin-left: 0 !important;
 
 }

 .card .card-title {
     color: #000000;
     margin-bottom: 0.625rem;
     font-size: 0.875rem;
     font-weight: 500
 }

 .card .card-description {
     margin-bottom: .875rem;
     font-weight: 400;
     color: #76838f
 }

 p {
     font-size: 0.875rem;
     margin-bottom: .5rem;
     line-height: 1.5rem
 }

 .table-responsive {
     display: block;
     width: 100%;
     overflow-x: auto;
     -webkit-overflow-scrolling: touch;
     -ms-overflow-style: -ms-autohiding-scrollbar
 }

 .table,
 .jsgrid .jsgrid-table {
     width: 100%;
     max-width: 100%;
     margin-bottom: 1rem;
     background-color: transparent
 }

 .table thead th,
 .jsgrid .jsgrid-table thead th {
     border-top: 0;
     border-bottom-width: 1px;
     font-weight: 500;
     font-size: .875rem;
     text-transform: uppercase
 }

 .table td,
 .jsgrid .jsgrid-table td {
     font-size: 0.875rem;
     padding: .475rem 0.4375rem
 }

 .mt-10 {
     padding: 0.875rem 0.3375rem !important
 }

 button {
     outline: 0 !important
 }

 .form-control:focus {
     box-shadow: 0 0 0 0rem rgba(0, 123, 255, .25) !important
 }

 .badge {
     border-radius: 0;
     font-size: 12px;
     line-height: 1;
     padding: .375rem .5625rem;
     font-weight: normal;
     border: none
 }
.jumbotron {
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
  margin-left: auto;
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


#daaim {
  grid-area: image;
}
.card-text {
  grid-area: text;
}
#daaim {
  
  background: url(https://thumbs.dreamstime.com/b/indian-food-curry-butter-chicken-palak-paneer-chiken-tikka-biryani-vegetable-curry-papad-dal-palak-sabji-jira-alu-rice-138550014.jpg);
  border-top-left-radius: 15px;
  border-top-right-radius: 15px;
  background-size: cover;
}
.card-text {
  grid-area: text;
  margin: 25px;
}
.card-text .date {
  color: rgb(255, 7, 110);
  font-size:13px;
}
.card-text p {
  color: grey;
  font-size:15px;
  font-weight: 300;
}
.card-text h2 {
  margin-top:0px;
  font-size:28px;
}
.card-stats {
  grid-area: stats; 
  
  display: grid;
  grid-template-columns: 1fr ;
  grid-template-rows: 0fr;
  border-bottom-left-radius: 15px;
  border-bottom-right-radius: 15px;
  background: rgb(0,66 ,0);
}
.card-stats .stat {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  color: white;
  padding:3px;
}
.card-stats {
  grid-area: stats; 
}

.card>hr {
  margin-right: 0;
  margin-left: 0;
}

.card-body {
  padding: 1.5rem;
  flex: 1 1 auto;
}

.card-header {
  margin-bottom: 0;
  padding: 1.25rem 1.5rem;
  border-bottom: 1px solid rgba(0, 0, 0, .05);
  background-color: #fff;
}

.card-header:first-child {
  border-radius: calc(.375rem - 1px) calc(.375rem - 1px) 0 0;
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
#foodim
{
box-shadow: 10px 10px 5px #ccc;
  -moz-border-radius:25px;
  -webkit-border-radius:25px;
  border-radius:25px;
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
}</style>
</head>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<body>
<% HttpSession ses=request.getSession();
	//ses.setAttribute("pno", number);
	String s=(String)ses.getAttribute("company_id");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bcpro","root","1234");
	  
%>

<div class="main-content">
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="Profile.html" target="_blank">CATER</a>
        
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="prof.jsp">Your Profile </a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="car.jsp">Cart </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="order.jsp">Orders</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="login.jsp">Log Out</a>
      </li>
    </ul>
    
  </div>
        <!-- Form -->
        <form class="navbar-search navbar-search-dark form-inline mr-3 d-none d-md-flex ml-lg-auto">
          <div class="form-group mb-0">
              <div class="input-group input-group-alternative">
                <div class="input-group-prepend">
                <span class="input-group-text"><i class="fas fa-search"></i></span>
              </div>
              <input class="form-control" placeholder="Search" type="text">
            </div>
          </div>
        </form>
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <span class="avatar avatar-sm rounded-circle">
                
                <%
                
            	
            	int user_id=Integer.parseInt((String)ses.getAttribute("user_id"));
                
                 String sql = "select * from cater_user where user_id='"+user_id+"'";   
                  Statement sta=con.createStatement();   
                  ResultSet rsa=sta.executeQuery(sql);  
                  if(rsa.next())
                  {
                 %>
                  <img href=prof.html" id="f" alt="Image placeholder" src="<%=rsa.getString(12) %>" >
                </span>
                <div class="media-body ml-2 d-none d-lg-block">
                  <span class="mb-0 text-sm  font-weight-bold"><%=rsa.getString(2) %></span>
                </div><%} %>
              </div>
            </a>
            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
              <div class=" dropdown-header noti-title">
                <h6 class="text-overflow m-0">Welcome!</h6>
              </div>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-single-02"></i>
                <span>My profile</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-settings-gear-65"></i>
                
                <span>Settings</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-calendar-grid-58"></i>
                <span>Activity</span>
              </a>
              <a href="../examples/profile.html" class="dropdown-item">
                <i class="ni ni-support-16"></i>
                <span>Support</span>
              </a>
              <div class="dropdown-divider"></div>
              <a href="Mainpage.html" class="dropdown-item">
                <i class="ni ni-user-run"></i>
                <span>Logout</span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    
    <!-- Header -->
    <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 630px; background-image: url(https://thumbs.dreamstime.com/b/indian-food-curry-butter-chicken-palak-paneer-chiken-tikka-biryani-vegetable-curry-papad-dal-palak-sabji-jira-alu-rice-138550014.jpg); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-8"></span>
      <!-- Header container -->
   <div class="container-fluid  ">
        <div class="row">
        
              <div class="card" id="daa">
            <%String stt = "select profile_pic from cater_company where company_id='"+Integer.parseInt((String)ses.getAttribute("company_id"))+"'";   
         	Statement staa=con.createStatement();   
          	ResultSet rsss=staa.executeQuery(stt); 
          	if(rsss.next())
          	{
 %>
              <img alt="Card image cap" class="card-img-to"  src="<%=rsss.getString(1) %>" ><%} %>
				
               <div class="card-body">
              
  				<p><h2>Our Menu is shown below, choose one to add to your cart and set a date for their serving!. We do Our best to satisfy our customer</h2></p>
             <form  method="POST">
             <div class="row">
	             <div class="col-lg-4">
	             <label class="form-control-label"><h3>Choose Your Date!</h3></label>
	             <input type="date"  name="dae" id="d" class="form-control form-control-alternative" placeholder="DD/MM/YYYY" >
	             
					  				
	             </div>
	             <div class="col-lg-4">
	             <label class="form-control-label"><h3>No.of People</h3></label>
	             <input type="number" id="n"  name="n" class="form-control form-control-alternative" placeholder="More than 50" >
	               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;           
	               <input  class="btn btn-primary" id="set_date" value="Set"></div>
	             
					  				
	            
	             <div class="col-lg-4">
	             <label class="form-control-label"><h3>Servers Required</h3></label>
	            
	             <input type="number" id="s" name="servers_equired" class="form-control form-control-alternative" placeholder="less than 10" >
	           	  				
	             </div>
	              </div>
          
             		</form>  						
             <div class="col-lg-12 grid-margin stretch-card">
             <%
             String sq = "select item_id,item_name,quantity,price,food_pic,about from cater_items where company_id='"+Integer.parseInt(s)+"'";   
         	Statement st=con.createStatement();   
          	ResultSet rs=st.executeQuery(sq);  

             
             while(rs.next())
            	 {%>
            	 <form method="POST">
                 <div class="card" id="daa">
                     <div class="card-body">
						<div class="row">
								<div class="col-lg-3">
								<img alt="Card image cap" class="card-img-top " id="foodim" src="<%=rs.getString(5)%>" >		
		  						</div>
		  						
		  						<div class="col-lg-6">
		  						<div class="row">
		  						<div class="col-lg-9">
			  						<label class="form-control-label"><h3>Product Name:</h3></label>
					  				
					  				<label class="form-control-label"><h3><%=rs.getString(2)%></h3></label>
					  				
			  					</div>
			  					<div class="col-lg-3">
			  						<label class="form-control-label"><h3>Price:</h3></label>		
					  				<label class="form-control-label"><h3>Rs.<%=rs.getString(3)%></h3></label>
					  			</div>
					  			</div>
					  			<%
					  			int price=rs.getInt(1)+1000;
					  			int tot=rs.getInt(1)+10000;
					  			
					  			
					  			%>
			  					<div class="row">
					  				<label class="form-control-label"><h4><%=rs.getString(6) %></h4></label>
					  			</div>
					  			<div class="row">
					  			<div class="col-lg-6">
					  			<label class="form-control-label"><h3>Quantity</h3></label>
	             				<input type="number" id="<%=rs.getString(1)%>" onInput="tot(<%=rs.getInt(1) %>)"name="item_quan" class="form-control form-control-alternative" placeholder="More than 50" value="">
	             				<input type="text"  id="item_id" name="item_id"  class="form-control form-control-alternative" placeholder="More than 50" value="<%=rs.getString(1) %>" hidden>
	             				<input type="text"  id="item_name" name="item_name"  class="form-control form-control-alternative" placeholder="More than 50" value="<%=rs.getString(2) %>" hidden>
	             				<input type="text" id="<%=price%>" name="item_price"  class="form-control form-control-alternative" placeholder="More than 50" value="<%=rs.getString(3) %>" hidden>
	             				
					  			</div>
					  			<div class="col-lg-6">
					  			<label class="form-control-label"><h3>Total Price</h3></label>
	             				<input type="number" id="<%=tot%>" name="totprice" readonly class="form-control form-control-alternative" placeholder="total Price" value="">
	             
					  			</div>
					  			
					  			</div>
					  					
					  				
		  						</div>
		  						<div class="col-lg-3">
		  						<input type="button" id="addto" onClick="s(<%=rs.getString(1) %>)"class="btn btn-primary" value="Add to Cart">
		  						</div>
		  						
								</div>
						</div>                             
                                   
                          </div>
                          
                 <hr class="my-4">
                 <%} %>
                 </form>
                 <% 
             String rev = "select count(*),avg(star),sum(case when star='5' then 1 else 0 end),sum(case when star='4' then 1 else 0 end),sum(case when star='3' then 1 else 0 end),sum(case when star='2' then 1 else 0 end) from cater_review where company_id='"+Integer.parseInt(s)+"'";   
          	ResultSet reviews=st.executeQuery(rev); 
          	
          	if(reviews.next())
          	{
          		String pe5=String.format("%.2f",(Float.parseFloat(reviews.getString(3))/Float.parseFloat(reviews.getString(1)))*100 );
          		String pe4=String.format("%.2f",(Float.parseFloat(reviews.getString(4))/Float.parseFloat(reviews.getString(1)))*100 );
          		String pe3=String.format("%.2f",(Float.parseFloat(reviews.getString(5))/Float.parseFloat(reviews.getString(1)))*100 );
          		String pe2=String.format("%.2f",(Float.parseFloat(reviews.getString(6))/Float.parseFloat(reviews.getString(1)))*100 );

                 %>
            <div class="card" id="daaaa">
               <div class="card-body">	
		<div class="row">
			<div class="col-md-12">
      
                    <h2>Ratings and Reviews</h2>
                 <div class="row"> 
                 <div class="col-md-3"> 
                 					<b class="text-black ml-2"><%=reviews.getString(1) %></b>
                                     <h3>Rated <%=String.format("%.2f",Float.parseFloat(reviews.getString(2))) %> out of 5</h3>
                       
               		           </div>
                    <%
                    if(1<(reviews.getFloat(2)) && (reviews.getFloat(2))<2){%>
                    <div class="col-md-3 float-right">
                    <input type="hidden" id="ss">
                    <fieldset class="rating"> 
                    <input type="radio" id="star5" name="rating" value="5"  />
                    <label class="full" for="star5" title="Awesome - 5 stars">
                    </label> <input type="radio" id="star4half" name="rating" value="4.5" />
                    <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label> 
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label class="full" for="star4" title="Pretty good - 4 stars">
                    </label> <input type="radio" id="star3half" name="rating" value="3.5" />
                    <label class="half" for="star3half" title="Meh - 3.5 stars">
                    </label> <input type="radio" id="star3" name="rating" value="3" />
                    <label class="full" for="star3" title="Meh - 3 stars"></label> 
                    <input type="radio" id="star2half" name="rating" value="2.5" />
                    <label class="half" for="star2half" title="Kinda bad - 2.5 stars">
                    </label> <input type="radio" id="star2" name="rating" value="2" />
                    <label class="full" for="star2" title="Kinda bad - 2 stars"></label> 
                    <input type="radio" id="star1half" name="rating" value="1.5" />
                    <label class="half" for="star1half" title="Meh - 1.5 stars">
                    </label> <input type="radio" id="star1" name="rating" value="1" checked  />
                    <label class="full" for="star1" title="Sucks big time - 1 star">
                    </label> <input type="radio" id="starhalf" name="rating" value="0.5" />
                    <label class="half" for="starhalf" title="Sucks big time - 0.5 stars">
                    </label> <input type="radio" class="reset-option" name="rating" value="reset" /> 
                    </fieldset>         
                    </div></div><%}%>
                    <% if(2<(reviews.getFloat(2)) && (reviews.getFloat(2))<3){%>
                    <div class="col-md-3 float-right">
                    <input type="hidden" id="ss">
                    <fieldset class="rating"> 
                    <input type="radio" id="star5" name="rating" value="5"  />
                    <label class="full" for="star5" title="Awesome - 5 stars">
                    </label> <input type="radio" id="star4half" name="rating" value="4.5" />
                    <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label> 
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label class="full" for="star4" title="Pretty good - 4 stars">
                    </label> <input type="radio" id="star3half" name="rating" value="3.5" />
                    <label class="half" for="star3half" title="Meh - 3.5 stars">
                    </label> <input type="radio" id="star3" name="rating" value="3" />
                    <label class="full" for="star3" title="Meh - 3 stars"></label> 
                    <input type="radio" id="star2half" name="rating" value="2.5" />
                    <label class="half" for="star2half" title="Kinda bad - 2.5 stars">
                    </label> <input type="radio" id="star2" name="rating" value="2" checked/>
                    <label class="full" for="star2" title="Kinda bad - 2 stars"></label> 
                    <input type="radio" id="star1half" name="rating" value="1.5" />
                    <label class="half" for="star1half" title="Meh - 1.5 stars">
                    </label> <input type="radio" id="star1" name="rating" value="1"  />
                    <label class="full" for="star1" title="Sucks big time - 1 star">
                    </label> <input type="radio" id="starhalf" name="rating" value="0.5" />
                    <label class="half" for="starhalf" title="Sucks big time - 0.5 stars">
                    </label> <input type="radio" class="reset-option" name="rating" value="reset" /> 
                    </fieldset>         
                    </div></div><%}%><% if(3<(reviews.getFloat(2)) && (reviews.getFloat(2))<4){%>
                    <div class="col-md-3 float-right">
                    <input type="hidden" id="ss">
                    <fieldset class="rating"> 
                    <input type="radio" id="star5" name="rating" value="5"  onclick="return false"/>
                    <label class="full" for="star5" title="Awesome - 5 stars">
                    </label> <input type="radio" id="star4half" name="rating" value="4.5" onclick="return false"/>
                    <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label> 
                    <input type="radio" id="star4" name="rating" value="4" onclick="return false"/>
                    <label class="full" for="star4" title="Pretty good - 4 stars">
                    </label> <input type="radio" id="star3half" name="rating" value="3.5" onclick="return false"/>
                    <label class="half" for="star3half" title="Meh - 3.5 stars">
                    </label> <input type="radio" id="star3" name="rating" value="3" checked onclick="return false"/>
                    <label class="full" for="star3" title="Meh - 3 stars"></label> 
                    <input type="radio" id="star2half" name="rating" value="2.5" onclick="return false"/>
                    <label class="half" for="star2half" title="Kinda bad - 2.5 stars">
                    </label> <input type="radio" id="star2" name="rating" value="2" onclick="return false"/>
                    <label class="full" for="star2" title="Kinda bad - 2 stars"></label> 
                    <input type="radio" id="star1half" name="rating" value="1.5" onclick="return false"/>
                    <label class="half" for="star1half" title="Meh - 1.5 stars">
                    </label> <input type="radio" id="star1" name="rating" value="1" onclick="return false" />
                    <label class="full" for="star1" title="Sucks big time - 1 star">
                    </label> <input type="radio" id="starhalf" name="rating" value="0.5" onclick="return false"/>
                    <label class="half" for="starhalf" title="Sucks big time - 0.5 stars">
                    </label> <input type="radio" class="reset-option" name="rating" value="reset" /> 
                    </fieldset>         
                    </div></div><%}%><% if(4<(reviews.getFloat(2)) && (reviews.getFloat(2))<5){%>
                    <div class="col-md-3 float-right">
                    <input type="hidden" id="ss">
                    <fieldset class="rating"> 
                    <input type="radio" id="star5" name="rating" value="5"  />
                    <label class="full" for="star5" title="Awesome - 5 stars">
                    </label> <input type="radio" id="star4half" name="rating" value="4.5" checked />
                    <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label> 
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label class="full" for="star4" title="Pretty good - 4 stars">
                    </label> <input type="radio" id="star3half" name="rating" value="3.5" />
                    <label class="half" for="star3half" title="Meh - 3.5 stars">
                    </label> <input type="radio" id="star3" name="rating" value="3" />
                    <label class="full" for="star3" title="Meh - 3 stars"></label> 
                    <input type="radio" id="star2half" name="rating" value="2.5" />
                    <label class="half" for="star2half" title="Kinda bad - 2.5 stars">
                    </label> <input type="radio" id="star2" name="rating" value="2" />
                    <label class="full" for="star2" title="Kinda bad - 2 stars"></label> 
                    <input type="radio" id="star1half" name="rating" value="1.5" />
                    <label class="half" for="star1half" title="Meh - 1.5 stars">
                    </label> <input type="radio" id="star1" name="rating" value="1"  />
                    <label class="full" for="star1" title="Sucks big time - 1 star">
                    </label> <input type="radio" id="starhalf" name="rating" value="0.5" />
                    <label class="half" for="starhalf" title="Sucks big time - 0.5 stars">
                    </label> <input type="radio" class="reset-option" name="rating" value="reset" /> 
                    </fieldset>         
                    </div></div><%}%>
                    <div class="graph-star-rating-body">
                        <div class="rating-list">
                            <div class="rating-list-left text-black">
                                5 Star
                            </div>
                            <div class="rating-list-center">
                                <div class="progress">
                                    <div style="width: <%=pe5%>%" aria-valuemax="5" aria-valuemin="0" aria-valuenow="5" role="progressbar" class="progress-bar bg-danger">
                                        <span class="sr-only">80% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="rating-list-right text-black"><%=pe5%>%</div>
                        </div>
                        <div class="rating-list">
                            <div class="rating-list-left text-black">
                                4 Star
                            </div>
                            <div class="rating-list-center">
                                <div class="progress">
                                    <div style="width: <%=pe4 %>%" aria-valuemax="5" aria-valuemin="0" aria-valuenow="5" role="progressbar" class="progress-bar bg-primary">
                                        <span class="sr-only">80% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="rating-list-right text-black"><%=pe4%>%</div>
                        </div>
                        <div class="rating-list">
                            <div class="rating-list-left text-black">
                                3 Star
                            </div>
                            <div class="rating-list-center">
                                <div class="progress">
                                    <div style="width: <%=pe3 %>%" aria-valuemax="5" aria-valuemin="0" aria-valuenow="5" role="progressbar" class="progress-bar bg-primary">
                                        <span class="sr-only">80% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="rating-list-right text-black"><%=pe3 %>%</div>
                        </div>
                        <div class="rating-list">
                            <div class="rating-list-left text-black">
                                2 Star
                            </div>
                            <div class="rating-list-center">
                                <div class="progress">
                                    <div style="width: <%=pe2%>%" aria-valuemax="5" aria-valuemin="0" aria-valuenow="5" role="progressbar" class="progress-bar bg-primary">
                                        <span class="sr-only">80% Complete (danger)</span>
                                    </div>
                                </div>
                            </div>
                            <div class="rating-list-right text-black"><%=pe2%>%</div>
                        </div>
                    </div><%} %>
                    <div class="graph-star-rating-footer text-center mt-3 mb-3">
                        <button type="button" class="btn btn-outline-primary btn-sm">Rate and Review</button>
                    </div>
                <div class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
                    <a href="#" class="btn btn-outline-primary btn-sm float-right">Top Rated</a>
                    <h5 class="mb-1">All Ratings and Reviews</h5>
                    <%
                    	

                	String sqaaa = "select user_name,review,date,star,likes from cater_review a join cater_user aa on a.company_id='"+Integer.parseInt(s)+"' and a.user_id=aa.user_id;";
                    
                   
                 	ResultSet r=st.executeQuery(sqaaa); 
                 	String user="";
                 	String date="",star="",review="",likes="";
                 	while(r.next())
                 	{
                 		user=r.getString(1);
                 		review=r.getString(2);
                 		date=r.getString(3);
                 		star=r.getString(4);
                 		likes=r.getString(5);
                    
                    %>
                    
                    
                    
                    <div class="reviews-members pt-4 pb-4">
                        <div class="media">
                            <a href="#"><img alt="Generic placeholder image" src="http://bootdey.com/img/Content/avatar/avatar1.png" class="mr-3 rounded-pill"></a>
                            <div class="media-body">
                                <div class="reviews-members-header">
                                    <span class="star-rating float-right">
                                          <a href="#"><i class="icofont-ui-rating active"></i></a>
                                          <a href="#"><i class="icofont-ui-rating active"></i></a>
                                          <a href="#"><i class="icofont-ui-rating "></i></a>
                                          <a href="#"><i class="icofont-ui-rating "></i></a>
                                          <a href="#"><i class="icofont-ui-rating "></i></a>
                                          </span>
                                          
                                    <h4 class="mb-1"><a class="text-black" href="#"><%=user %></h4>
                                    <p class="text-gray"><%=date %></p>
                                </div>
                                <div class="reviews-members-body">
                                    <p><%=review %> </p>
                                </div>
                                <div class="reviews-members-footer">
                                    <a class="total-like" href="#"><i class="icofont-thumbs-up"></i><%=likes %></a> 
                                    <span class="total-like-user-main ml-2" dir="rtl">
                                          <a data-toggle="tooltip" data-placement="top" title="" href="#" data-original-title="Gurdeep Osahan"><img alt="Generic placeholder image" src="http://bootdey.com/img/Content/avatar/avatar5.png" class="total-like-user rounded-pill"></a>
                                          <a data-toggle="tooltip" data-placement="top" title="" href="#" data-original-title="Gurdeep Singh"><img alt="Generic placeholder image" src="http://bootdey.com/img/Content/avatar/avatar2.png" class="total-like-user rounded-pill"></a>
                                          <a data-toggle="tooltip" data-placement="top" title="" href="#" data-original-title="Askbootstrap"><img alt="Generic placeholder image" src="http://bootdey.com/img/Content/avatar/avatar3.png" class="total-like-user rounded-pill"></a>
                                          <a data-toggle="tooltip" data-placement="top" title="" href="#" data-original-title="Osahan"><img alt="Generic placeholder image" src="http://bootdey.com/img/Content/avatar/avatar4.png" class="total-like-user rounded-pill"></a>
                                          </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <%}  %>
                    <hr>
                    <a class="text-center w-100 d-block mt-4 font-weight-bold" href="#">See All Reviews</a>
                </div>
               <!--   <div class="bg-white rounded shadow-sm p-4 mb-5 rating-review-select-page">
                    <h5 class="mb-4">Leave Comment</h5>
                    <p class="mb-2">Rate the Place</p>
                    <div class="mb-4">
                        <span class="star-rating">
                                 <a href="#"><i class="icofont-ui-rating icofont-2x"></i></a>
                                 <a href="#"><i class="icofont-ui-rating icofont-2x"></i></a>
                                 <a href="#"><i class="icofont-ui-rating icofont-2x"></i></a>
                                 <a href="#"><i class="icofont-ui-rating icofont-2x"></i></a>
                                 <a href="#"><i class="icofont-ui-rating icofont-2x"></i></a>
                                 </span>
                    </div>
                     <form>
                        <div class="form-group">
                            <label>Your Comment</label>
                            <textarea class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <button class="btn btn-primary btn-sm" type="button"> Submit Comment </button>
                        </div>
                    </form> 
                </div> 
            </div>-->
			
			</div>
		</div>
	</div></div></form></div>        
       			   </div> 
			  </div>
			</div>

        </div>
     </div>
    
    
    <!-- Page content -->
    
  <!-- /.container -->
  
 
</div>
<script>
$(document).ready(function() {
$("#set_date").click(function() {
	

$.ajax({
url: "set.jsp",
type: "post",
data: {
date:$('#d').val(),
no_peo:$('#n').val(),
servers_required:$('#s').val(),
success : function(data){
alert("success");
}
}
});
});
});
 </script> 
<script>
function s(ide){
	var quan=document.getElementById(ide).value;
	$.ajax({
		url: "cartinsert",
		type: "post",
		data: {
		item_id:ide,
		item_quan:quan,
		success : function(data){
		alert("Added to Cart!!");
		}
		}
		});

}
</script>
<script>
function tot(ide){
	var t=ide+1000;
	var tt=ide+10000;
	var tot_price=document.getElementById(tt);
	var price=document.getElementById(t).value;
	var quan=document.getElementById(ide).value
	tot_price.value=price*quan;
}
</script>

<script>

$(document).ready(function(){

	$("input[type='radio']").click(function(){
	var sim = $("input[type='radio']:checked").val();
	//alert(sim);
	var s=document.getElementById("ss");
	s.value=sim;
	if (sim<3) { $('.myratings').css('color','red'); $(".myratings").text(sim); }else{ $('.myratings').css('color','green'); $(".myratings").text(sim); } }); });</script>

<script type="text/javascript">
function popupWindow() {
    window.open( "someLinkToBePoppedUp" )
}
</script>  


</body>
</html>