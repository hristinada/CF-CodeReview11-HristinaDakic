
<?php require_once 'actions/db_connect.php'; ?>

<!DOCTYPE html>
<html>
<head>
   <title>Big Library</title>
    <meta charset='utf-8'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style type ="text/css">

      .description div {
        overflow: hidden;
        width: 200px;
        height: 200px;
      }

      .description div:hover {
        overflow: scroll;
      }

      .btn-xs {
        width: 100%;
        padding: .30rem .6rem;
        font-size: .875rem;
        line-height: .5;
        border-radius: .2rem;
      }

    </style>

</head>
<body>

<div>
   <h1 class="m-2 text-info">Library Register</h1>
   <a href="create.php"><button type="button" class="btn btn-info m-2">Add new media</button></a>
   
   <table  class='table table-striped' border="1" cellspacing= "0" cellpadding="0">
       <thead class='thead-dark'>
           <tr>
              <th>Image</th>
              <th>ISBN</th>
              <th>Type</th>
              <th>Title</th>
              <th>Author</th>
              <th>Description</th>
              <th>Publisher</th>
              <th>Publish date</th>
              <th>Manage books</th>

           </tr>
       </thead>
       <tbody>
           <?php
           $sql = "SELECT media.media_image, media.ISBN, media.media_type, media.media_title, authors.author_first_name, authors.author_lastname, media.media_description, publishers.publisher_name, media.media_publish_date FROM `media` JOIN `authors` ON authors.author_id = media.fk_author_id JOIN `publishers` ON publishers.publisher_id = media.fk_publisher_id";
           $result = $connect->query($sql);

            if($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) { 
                echo  "<tr>
                       <td><img class='img-thumbnail img-fluid' src=".$row['media_image']."></td>
                       <td>" .$row['ISBN']."</td>
                       <td>" .$row['media_type']."</td>
                       <td>" .$row['media_title']."</td>
                       <td>" .$row['author_first_name']."<br>".$row['author_lastname']."</td>
                       <td class='description'><div>" .$row['media_description']."</div></td>
                       <td>" .$row['publisher_name']."</td>
                       <td>" .$row['media_publish_date']."</td>
                       <td>
                           <a href='update.php?id=" .$row['ISBN']."'><button type='button' class='btn btn-info btn-xs'>Edit</button></a>
                           <a href='delete.php?id=" .$row['ISBN']."'><button type='button' class='btn btn-info btn-xs'>Delete</button></a>
                       </td>
                      </tr>" ;
              }
            } else {
               echo  "<tr><td colspan='5'><center>No Data Avaliable</center></td></tr>";
            }
            ?>
       </tbody>
   </table>
</div>

</body>
</html>