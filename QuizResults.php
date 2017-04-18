<?php
include('Templates/EditorPageHeader.php'); ?>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	
	<title>PHP Quiz</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

<body>

	<div id="page-wrap">

		<h1>Your Level of GrandmaLife!</h1>
		
        <?php
            
            $answer1 = $_POST['question-1-answers'];
            $answer2 = $_POST['question-2-answers'];
            $answer3 = $_POST['question-3-answers'];
            $answer4 = $_POST['question-4-answers'];
            $answer5 = $_POST['question-5-answers'];
        
       /*$totalCorrect1 = 0;
        $totalCorrect2 = 0;
         $totalCorrect3 = 0;
             $totalCorrect4 = 0;
              $totalCorrect5 = 0;*/
              
          switch($answer1) {
           case "A":
               $totalCorrect1= 0;
               break;
           case "B":
               $totalCorrect1 = 1;
                 break;
           case "C":
               $totalCorrect1 = 2;
                 break;
           case "D":
               $totalCorrect1 = 3;
                 break;
          };
           switch($answer2) {
           case "A":
               $totalCorrect2 = 0;
                 break;
           case "B":
               $totalCorrect2 = 1;
                 break;
           case "C":
               $totalCorrect2 = 2;
                 break;
           case "D":
               $totalCorrect2 = 3;
                 break;
          };
           switch($answer3) {
           case "A":
               $totalCorrect3 = 0;
                 break;
           case "B":
               $totalCorrect3 = 1;
                 break;
           case "C":
               $totalCorrect3 = 2;
                 break;
           case "D":
               $totalCorrect3 = 3;
                 break;
          };
          
           switch($answer4) {
           case "A":
               $totalCorrect4 = 0;
                 break;
           case "B":
               $totalCorrect4 = 1;
                 break;
           case "C":
               $totalCorrect4 = 2;
                 break;
           case "D":
               $totalCorrect4 = 3;
                 break;
          };
          
           switch($answer5) {
           case "A":
               $totalCorrect5 = 0;
                 break;
           case "B":
               $totalCorrect5 = 1;
                 break;
           case "C":
               $totalCorrect5 = 2;
                 break;
           case "D":
               $totalCorrect5 = 3;
                 break;
          };
            
          
          $totalCorrect = $totalCorrect1+$totalCorrect2+$totalCorrect3+$totalCorrect4+$totalCorrect5;
          
         if ($totalCorrect <=4) {
                  echo "You can have too much of a good thing, and you are living too much GrandmaLife!  Your whole hearted embrace of GrandmaLife has led to some selfish and financially irresponsible decisions.  Grandma has to live within her means you know. 
";
         }
         else if ($totalCorrect <=8) {
                  echo "Like Goldilocks when she finally discovers the little bear's bed is the best to squat in, you've got GrandmaLife just right.  You are enjoying being you, but also being considerate of others and your bank account.  In fact we may need to recruit you as a GrandmaLife role model (that's a future section)! 
";
         }
         else if ($totalCorrect <=12) {
                  echo " Sounds like you could use a little bit of GrandmaLife in yours!  Its great you have a career and active life, but what good is it if you aren't looking after you and your happiness? 
!";
         }
         
         else {
            
                  echo "Oh no!  Its a GLE (Grandma Life Emergency)!!  You need GrandmaLife stat.  Take yourself to Fortnum and Masons with a good friend, and reflect on how you could better be a better Grandma.  Not literally, if you happen to have grand children (ironically Grandma Life is decidedly not interested in those little critters).  As a starting point, why not check out our Furry Friends section and see what cat you could get.  I'd recommend a Maine Coone- friendly but placid! ";
              
          }
            
        ?>
	
	</div>
	
	<script type="text/javascript">
	var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
	document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script type="text/javascript">
	var pageTracker = _gat._getTracker("UA-68528-29");
	pageTracker._initData();
	pageTracker._trackPageview();
	</script>

</body>

</html>

<?php 
include('Templates/EditorPageFooter.php');
?>