
<!DOCTYPE html>
<html>
  <head>
    <title>Add new media</title>
    <meta charset='utf-8'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>

  <body>
  <?php 

  function insert_home_key() {
    echo "<span><a href='../index.php'><button type='button' class='btn btn-info m-2'>Home</button></a></span>";
  }

  function insert_back_key() {
    echo "<span><a href='../create.php'><button type='button' class='btn btn-info m-2'>Back</button></a></span>";
  }


  require_once 'db_connect.php';

  if ($_POST) {
    $ISBN = $_POST['ISBN'];
    $type = $_POST['media_type'];
    $title = $_POST['media_title'];
    $image = $_POST['media_image'];
    $description = $_POST['media_description'];
    $publishDate = $_POST['media_publish_date'];
    $status = $_POST['media_status'];
    $firstName = $_POST['author_first_name'];
    $lastName = $_POST['author_lastname'];
    $publisherName = $_POST['publisher_name'];
    $publisherAddress = $_POST['publisher_address'];
    $publisherSize = $_POST['publisher_size'];

    //check if all fields are filled, if one of the fields is empty return
    if ($ISBN == '' || $type == '' || $title == '' || $image == '' || $description == '' || $publishDate == '' || $status == '' || $firstName == '' || $lastName == '' || $publisherName == '' || $publisherAddress == ''|| $publisherSize == '') {
      echo "<h2 class='m-2 bg-warning'>All fields must be filled!</h2>";
      insert_back_key();
      insert_home_key();
      return;
    }

    // check if the medium exists already
    $query = "SELECT * FROM media WHERE ISBN = '$ISBN'";
    $result = $connect->query($query);

    // if yes return
    if ($result->num_rows > 0) {
      echo "<h2 class='m-2 bg-warning'>Medium exists already!</h2>";
      insert_back_key();
      insert_home_key();
      return;
    }
    // if no

    // check if the author exists already
    $query = "SELECT * FROM authors WHERE author_first_name = '$firstName' AND author_lastname = '$lastName'";
    $result = $connect->query($query);

    // if yes: get id https://www.php.net/manual/en/mysqli.query.php
    if (($result != FALSE) && ($result->num_rows > 0)) {
      $row = $result->fetch_assoc();
      $author_id = $row["author_id"];
      echo "<h2 class='m-2 bg-warning'>Author exists already! ID = $author_id.</h2>";
    }

    // if no: create and get id
    else {
      $query = "INSERT INTO `authors`(`author_id`, `author_first_name`, `author_lastname`) VALUES (NULL, '$firstName', '$lastName')";
      if($connect->query($query) === TRUE) {
        // https://www.php.net/manual/en/function.mysql-insert-id.php
        $author_id = $connect->insert_id;
        echo "<h2 class='m-2 bg-success'>Created new author, ID = $author_id.</h2>";
      } else {
        echo "<h2 class='m-2 text-danger'>ERROR: Could not create author.</h2>";
        echo "Error " . $query . " " . $connect->connect_error;
        insert_back_key();
        insert_home_key();
        return;
      }
    }

    // check if publisher exists already
    $query = "SELECT * FROM publishers WHERE publisher_name = '$publisherName'";
    $result = $connect->query($query);
    // if yes: get id
    if (($result != FALSE) && ($result->num_rows > 0)) {
      $row = $result->fetch_assoc();
      $publisher_id = $row["publisher_id"];
      echo "<h2 class='m-2 bg-warning'>Publisher exists already! ID = $publisher_id.</h2>";
    }  
    // if no: create and get id
    else {
      $query = "INSERT INTO `publishers`(`publisher_id`, `publisher_name`,`publisher_adress`, `publisher_size`) VALUES (NULL, '$publisherName', '$publisherAddress','$publisherSize')";
      if($connect->query($query) === TRUE) {
        // https://www.php.net/manual/en/function.mysql-insert-id.php
        $publisher_id = $connect->insert_id;
        echo "<h2 class='m-2 bg-success'>Created new publisher, ID = $publisher_id.</h2>";
      } else {
        echo "<h2 class='m-2 text-danger'>ERROR: Could not create publisher.</h2>";
        echo "Error " . $query . " " . $connect->connect_error;
        insert_back_key();
        insert_home_key();
        return;
      }
    }
    // create medium

    $query = "INSERT INTO `media`(`ISBN`, `media_type`, `media_title`, `media_image`, `media_description`, `media_publish_date`, `media_status`, `fk_author_id`, `fk_publisher_id`) VALUES ('$ISBN','$type','$title','$image','$description','$publishDate','$status',$author_id,$publisher_id)";

    if($connect->query($query) === TRUE) { 
      echo "<h2 class='m-2 bg-success'>New Record Successfully Created</h2>";
      insert_back_key();
      insert_home_key();
    } else {
      echo "Error " . $query . ' ' . $connect->connect_error."<br>";
      insert_back_key();
      insert_home_key();
    }
    
    $connect->close();
  }

  ?>

  </body>
</html>