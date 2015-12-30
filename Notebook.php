<?php
session_start();
if(!isset($_SESSION) || !isset($_SESSION['myusername'])){
    header("Location:index.php");
}
?>

<!doctype html>
<html>

<head>
    <meta charset="utf-8" />
    <title>notebook</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,300italic,400italic,600italic,700,700italic,800italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/normalize.css">

    <?php
    if(isset($_GET["colorCode"])){
                                $jsVar = "
                                <script>
                                    window.colourSaved = true;
                                </script>
                                ";
                                echo $jsVar;
                                
    }
    
    ?>

    <script src="js/notebook.js"></script>

</head>

<body>

    <div class="header">
        <nav></nav>
        <a href="dashboard.php"><img src="img/logo-01.svg"></a>

        <img src="img/profile-01.svg">
         <a href="logout.php" class="logout">Log Out</a>
        <img src="img/hamburger-01.svg">

    </div>
    <!--    flex-->
    <div class="flexbox">

        <!--        left part-->

        <div class="left">
            <div class="leftBar">
                <img id="articleNote" src="img/notebook-07.svg">
                <img id="colorNote" src="img/notebook-08.svg">
                <img id="fontNote" src="img/notebook-09.svg">
            </div>


            <section class="articleFrame">
                <!--                articleNote-->
                <div class="articleSection">

                    <!--===============================================================================================-->
                    <?php
                            try{
                                $sql = "SELECT `ArticleName`, `Texts`FROM `Article`";
                                // create pdo conneciton
                                // INSERT CODE HERE
                                $db = new PDO('mysql:host=localhost; dbname=devgo; charset=utf8', "root", "root");
                                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                                $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                                
                                // prepare a statement for sanitization
                                // INSERT CODE HERE
                                $stmt = $db->query($sql);
                                $data = $stmt->fetchAll( PDO::FETCH_ASSOC );
//                                print_r($data[0]["ArticleName"]); 
                              
                                
                                
//                                echo "Done!"
                                    ;}
                            catch(PDOException $e)
                            {
                                echo "Error: " . $e->getMessage();
                            }     
      
                        ?>

                        <!--===============================================================================================-->

                        <form method="get" action="#">
                            <select name="seArticle">

                                <?php
                                     foreach($data as $key => $value){
//                                        print_r($key);
//                                        echo "<br>";
                                ?>
                                
                          
                                             
                                   
                                    <option value='<?php echo $key?>'>
                                        <?php echo ($key+1) ?>.
                                            <?php  echo $data[$key]["ArticleName"]?>
                                    </option>
                                    <?php
                                            
                                    }
                                ?>

                            </select>
<!--                            <input type='button' value='go'>-->
                        </form>
                

                        <h1 class="aticleTitle">1. THE FIRST RULE OF UX</h1>
                        <div class="line"></div>
                        <div class="line thin"></div>
                        <article>
                            “You cannot not communicate. Every behaviour is a kind of communication. Because behaviour does not have a counterpart (there is no anti-behaviour), it is not possible not to communicate.”—Paul Watzlawick’s First Axiom of Communication.
                            <br />
                            <br /> This is the first rule of UX. Everything a designer does affects the user experience. From the purposeful addition of a design element to the negligent omission of crucial messaging, every decision is molding the future of the people we design for.
                            <br />
                            <br /> As such, one of the primary goals of any good designer is communicating the intended message…the one that leads to a positive user experience. The copy-writing, the color of your text, the alignment of form labels, using all-caps or going lowercase on those navigation links—even the absence of a design pattern—are all part of this communication.
                            <br />
                            <br /> Knowing this, we can ask (and hopefully answer) the question, “Does this element support or contradict what I am trying to communicate to the user?” And by asking this you will find yourself refining and improving the little things; the things that often go unsaid or unnoticed, that ultimately make up the user’s experience.
                        </article>
                </div>



                <!--      colorNote-->
                <div class="colorSection">
                    <div>
                        <i id="addicon" class="fa fa-plus-square-o fa-4x"></i>
                        <form method="get" action="Notebook.php" id="coloraddForm">
                            <input type="text" name="colorCode" placeholder="type color code...">
                            
                            <input type="button" id="colorAddBtn" value="ADD">
                        </form>
                        <!--===============================================================================================-->
                        <?php 
                            if(isset($_GET["colorCode"])){
                                

                               try{
                                    $colorCode = $_GET["colorCode"];
                                   
                                $db = new PDO('mysql:host=localhost; dbname=devgo; charset=utf8','root','root');
                                $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
                                $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                                
                                $sql="INSERT INTO `ColorNotes` (`ColorCode`) VALUES (:colorCode)";
                                   
                                $stmt = $db->prepare($sql);
                                   
                                $stmt->bindParam(':colorCode', $colorCode);
                                   
                                $stmt->execute();
                                   
                                   
//                                echo 'done';
                               }catch(PDOException $e){
                               
                                   echo "Wrong!".$e->getMessage();
                               }
                               
                            }
                            
                        ?>
                            <!--===============================================================================================-->
                    </div>
                    <?php 
                               try{
                           
                        $db = new PDO('mysql:host=localhost; dbname=devgo; charset=utf8', 'root','root');
                        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                           
                        $sql="SELECT `ColorCode` FROM `ColorNotes";
                        
                        $stmt=$db->query($sql);
                        
                        $stmt->execute();
                    
                        $colors = $stmt->fetchAll(PDO::FETCH_ASSOC);
//                        var_dump($colors);
                        
                        foreach($colors as $key=>$value){
                        ?>
                            <div class='dragable' draggable="true" style='background:<?php echo $colors[$key]['ColorCode'] ?>'></div>
                           
                    <?php        
                        }
                           
//                        echo 'done';                       
                       }catch(PDOException $e){
                       
                       
                        echo"worng2!".$e->getMessage();
                       
                       }
                    
                    ?>

                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                </div>

                <!--                fontNote-->
                <div class="fontNoteSection">
                    <div class="fontTool">
                        <div>
                            <form method="get" action="Notebook.php">
                                <label>Font Name:</label>
                                <input name="FontName" type="text">
                                <label>Web address:</label>
                                <input name="WebAddress" type="text">
                                <label>Notes:</label>
                                <input name="FontNotes" type="text">
                                <input type="submit" id="fontsubmit">
                            </form>
                        </div>
                        <div>
                            <i id="fakefontsubmit" class="fa fa-plus-square-o fa-5x"></i>
                        </div>
                    </div>
                    <!--===============================================================================================-->
                    <?php
                    
                           
                           
                    
                          try{
                                $sql = "SELECT `FontName`, `WebAddress`, `Notes`FROM `FontNotes`";
                                // create pdo conneciton
                                // INSERT CODE HERE
                                $db = new PDO('mysql:host=localhost; dbname=devgo; charset=utf8', "root", "root");
                                $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                                $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
                                
                                // prepare a statement for sanitization
                                // INSERT CODE HERE
                                $stmt = $db->query($sql);
                                $Fontdata = $stmt->fetchAll( PDO::FETCH_ASSOC );
//                                print_r($Fontdata[0]["FontName"]); 
                                
//                                foreach($Fontdata as $key =>$value){
//                                
//                                    echo $Fontdata[$key]["FontName"]."<br/>";
//                                    
//                                    echo $Fontdata[$key]["WebAddress"]."<br/>";
//                                    echo $Fontdata[$key]["Notes"]."<br/>";
//
//                                
//                                
//                                }
                                
//                                echo "Done!"
                                    ;}
                            catch(PDOException $e)
                            {
                                echo "Error: " . $e->getMessage();
                            }     
                    
                    
                    
                    ?>
                        <!--===============================================================================================-->


                        <div class="fontnoootes">
                            <?php   foreach($Fontdata as $key =>$value){?>
                                <div>
                                    <section>
                                        <h4>Font Name<h6><?php echo $Fontdata[$key]["FontName"]?></h6></h4>

                                    </section>
                                    <section>
                                        <h4>Web address</h4>
                                        <h6 class="fontWebAddressFroIframe"><?php  echo $Fontdata[$key]["WebAddress"]?></h6>

                                    </section>
                                    <section>
                                        <h4>Notes</h4>
                                        <h6><?php  echo $Fontdata[$key]["Notes"]?></h6>
                                    </section>

                                </div>
                                <?php }
                                ?>

                        </div>
                </div>
            </section>
        </div>
        <!--===============================================================================================-->
        <?php
           
                        if(!empty($_GET['FontName'])||!empty($_GET['WebAddress'])||!empty($_GET['FontNotes'])){
                        
                         try{   
                        $FontName = $_GET['FontName'];
                        $WebAddress = $_GET['WebAddress'];
                        $FontNotes = $_GET['FontNotes'];
                        
                        
                                                
                           
                       $sql = "INSERT INTO `FontNotes` (`FontName`,`WebAddress`,`Notes`) VALUES (:FontName, :WebAddress, :FontNotes )";
                       // create pdo conneciton
                       // INSERT CODE HERE
                       $db = new PDO('mysql:host=localhost; dbname=devgo; charset=utf8', "root", "root");
                       $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                       $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
//                       var_dump($db);
                       // prepare a statement for sanitization
                       // INSERT CODE HERE
                       $stmt = $db->prepare($sql);
                       // bind parameters to the statement
                       // INSERT CODE HERE
                       $stmt->bindParam(':FontName', $FontName);
                       $stmt->bindParam(':WebAddress', $WebAddress);
                       $stmt->bindParam(':FontNotes', $FontNotes);
              
                       
                       // execute the statement
                       // INSERT CODE HERE
                       $stmt->execute();
                       
                       // done
//                       echo "Done!"
                           ;}catch(PDOException $e){
                                echo "Error: " . $e->getMessage();
                        }
                           
                           
                        }   
                    


        ?>
            <!--===============================================================================================-->

            <!--        right part-->

            <div class="right">
                <!--article note-->


                <section class="takenote">

                    <div class="line"></div>
                    <h1 class="aticleTitle">1. THE FIRST RULE OF UX</h1>

                    <div class="line thin"></div>
                    <div class="tagFrame">

                    </div>
                    <div class="typeArea">
                        <textarea id="articleNoteinp" placeholder="type the code here..."></textarea>
                    </div>
                </section>


                <!--color note-->
                <div class="colorSectionLayout">
                    <div class="chosseBcColor">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>
                    <div class="waitForColor">
                        <div>
                            <div class="dropable"></div>
                            <div class="dropable"></div>
                            <div class="dropable"></div>
                        </div>
                        <div class="dropable"></div>
                    </div>
                    <div id="colorTag" class="colorTag">
                        <p style='color:#e4e1ce; font-weight:300'>Drag the color on the left..</p>


                    </div>
                    <div class="clear"></div>
                    <form>
                        <input id="colorNoteIN" type="text" placeholder="describe them.." value="">
                    </form>
                </div>

                <!--            fontWebpage-->
                <iframe src="http://www.createjs.com" class="fontIframe" frameborder="0"></iframe>>
            </div>
    </div>

</body>


</html>