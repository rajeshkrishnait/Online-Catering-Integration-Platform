<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'>
</script><script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<title>Insert title here</title>

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
    font-size: 2.25em;
    font-family: FontAwesome;
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
    color: #FFD700
}

.rating>[id^="star"]:checked+label:hover,
.rating>[id^="star"]:checked~label:hover,
.rating>label:hover~[id^="star"]:checked~label,
.rating>[id^="star"]:checked~label:hover~label {
    color: #FFED85
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
    width: 350px;
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


}
</style>
</head>
<body>
<div class="container d-flex justify-content-center mt-100">
    <div class="row">
        <div class="col-md-6">
            <div class="card" id="pas">
                <div class="card-body text-center"> <span class="myratings">45</span>
                <input type="text" id="ss" class="myratings">
                    <h4 class="mt-1">Rate us</h4>
                    <fieldset class="rating"> 
                    <input type="radio" id="star5" name="rating" value="5" />
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
                    </label> <input type="radio" id="star1" name="rating" value="1" checked />
                    <label class="full" for="star1" title="Sucks big time - 1 star">
                    </label> <input type="radio" id="starhalf" name="rating" value="0.5" />
                    <label class="half" for="starhalf" title="Sucks big time - 0.5 stars">
                    </label> <input type="radio" class="reset-option" name="rating" value="reset" /> 
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

$(document).ready(function(){

	$("input[type='radio']").click(function(){
	var sim = $("input[type='radio']:checked").val();
	//alert(sim);
	var s=document.getElementById("ss");
	s.value=sim;
	if (sim<3) { $('.myratings').css('color','red'); $(".myratings").text(sim); }else{ $('.myratings').css('color','green'); $(".myratings").text(sim); } }); });</script>
</body>
</html>