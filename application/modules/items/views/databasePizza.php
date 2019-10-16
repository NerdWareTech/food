                   <?php         /*  Arslan Bhai kee requiremenets hain pizza k liye (Gandu)   */
                   
                   
                   $servername = "localhost";
                   $username = "root";
                   $password = "";
                   $dbname = "food";
                   if(isset ($_POST['_name']))
                   {
                       $name = $_POST['_name'];
                       $item_id = $_POST['id'];
                   }
                   
                   // Create connection
                   $conn = new mysqli($servername, $username, $password, $dbname);
                   // Check connection
                   if ($conn->connect_error) {
                       die("Connection failed: " . $conn->connect_error);
                   }
                   
                   $sql = "INSERT INTO cr_pizzacategories ( item_id, name)
                   VALUES ($item_id, $name)";
                   
                   if ($conn->query($sql) === TRUE) {
                       echo "New record created successfully";
                   } else {
                       echo "Error: " . $sql . "<br>" . $conn->error;
                   }
                   
                   $conn->close();






?>



