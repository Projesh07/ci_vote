<?php
$conn=mysqli_connect("localhost","root","","votin") or die(mysqli_error());


if(isset($_POST['submit'])){
    
    $sex=$_POST['sex'];
    $age=$_POST['age'];
    $region=$_POST['region'];
    $sql="INSERT INTO votin (Id,age,sex,region) VALUES ('','$age','$sex','$region')";
    $result = mysqli_query($conn, $sql);
    
	if($result)
    {
        echo"sucess ";
    }
    else{
        echo"error";
    }
}

?>


<html lang="en">

<head>
    <meta charset="utf-8">

    <title>Index</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
</head>

<body>
    
    
       
<div class="container">
  <!-- Topper w/ logo -->
  <!-- End Topper -->
  <!-- Navigation -->
  <div class="row">
    <nav class="navbar navbar-inverse" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand visible-xs-inline-block nav-logo" href="/"><img src="/images/logo-dark-inset.png" class="img-responsive" alt=""></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav js-nav-add-active-class">
            <li><a href="#" active>Home</a></li>
            
            <li><a href="#">Videos</a></li>
            <li><a href="">Biographie</a></li>
            <li><a href="">About Us</a></li>
          
           
          </ul>
         
        </div><!-- /.navbar-collapse -->
      </div>
    </nav>
  </div>

        <form class="form-horizontal" role="form" method="post"action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <br>
 <h2 style="text-align: center">Voter must fill-up the form*</h2>
<br>



            <div class="row">
                <div class="col-sm-3"  style="background-color:lavender;">
                    <div class="form-group">
                        <label for="sex">Sex*</label>
                        <select class="form-control" name="sex" required>
                                        <option value="female" >Female</option>
                                        <option value="male">Male</option>
                                        <option value="others">Others</option>
                                    </select>
                    </div>

                </div>
                 <div class="col-sm-1"></div>
                <div class="col-sm-3" style="background-color:lavenderblush;">
                    <div class="form-group">
                        <label for="age">Age*</label>
                        <select class="form-control" name="age" required>
                                        <option value="18" >18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option>
                                        <option value="30">30</option>
                         <option value="31">31</option>
                         <option value="32">32</option>
                         <option value="33">33</option>
                         <option value="34">34</option>
                         <option value="35">35</option>
                         <option value="36">36</option>
                         <option value="37">37</option>
                         <option value="38">38</option>
                         <option value="39">39</option>
                         <option value="40">40</option> <option value="41">41</option> <option value="42">42</option> <option value="43">43</option> <option value="44">44</option> <option value="45">45</option> <option value="46">46</option> <option value="47">47</option> <option value="48">48</option> <option value="49">49</option> <option value="50">50</option>
                                         <option value="51">51</option>

                                         <option value="52">52</option>
                                         <option value="53">53</option>
                                         <option value="54">54</option>
                                         <option value="55">55</option>
                                         <option value="56">56</option>
                                         <option value="57">57</option>
                                         <option value="58">58</option>
                                         <option value="59">59</option>
                                         <option value="60">60</option>
                                         <option value="61">61</option>
                                         <option value="62">62</option>
                                         <option value="63">63</option>
                                         <option value="64">64</option>
                                         <option value="65">65</option>
                                         <option value="66">66</option>
                                         <option value="67">67</option>
                                         <option value="68">68</option>
                                         <option value="69">69</option>
                                         <option value="70">71</option>
                                         <option value="72">72</option>
                                         <option value="73">73</option>
                                         <option value="74">74</option>
                                         <option value="75">75</option>
                                         <option value="76">76</option>
                                         <option value="77">77</option>
                                         <option value="78">78</option>
                                         <option value="79">79</option>
                                         <option value="80">80</option>
                                         <option value="81">81</option>
                                         <option value="82">82</option>
                                         <option value="83">83</option>
                                         <option value="84">84</option>
                                         <option value="85">85</option>
                                         <option value="86">86</option>
  <option value="87">87</option>
  <option value="88">88</option>
  <option value="89">89</option>
  <option value="90">90</option>
 <option value="91">91</option>
 <option value="92">92</option>
 <option value="93">93</option>
 <option value="94">94</option>
 <option value="95">95</option>
 <option value="96">96</option>
 <option value="97">97</option>
 <option value="98">98</option>
 <option value="99">99</option>
 

                                            </select>
                    </div>
                </div>
                <div class="col-sm-1"></div>
                <div class="col-sm-3" style="background-color:lavender;">
                    <div class="form-group">
                        <label for="region">Region*</label>
                        <select class="form-control" name="region" required>  
                                        <option value=" Kayes "> Kayes </option> <option value=" Bamako "> Bamako </option> <option value=" Koulikoro "> Koulikoro </option> <option value=" Ségou "> Ségou </option> <option value=" Sikasso "> Sikasso </option><option value=" Mopti "> Mopti </option><option value=" GAO "> GAO </option><option value=" Tombouctou "> Tombouctou </option>><option value=" Kidal "> Kidal </option>
                                     </select>
                    </div>


                </div>
            
        
       
        </form>
    </div>
        <div class="col-sm-5"></div>
        <button class="btn-change1" name="submit">Submit</button>
    
    </div>
             
    

</body>

</html>