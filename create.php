
<!DOCTYPE html>
<html>
  <head>
    <title>Add new media</title>
    <meta charset='utf-8'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type= "text/css">
       fieldset {
          margin: auto;
          margin-top: 50px;
          width: 50%;
       }
       input {
          width: 400px;
       }
    </style>
  </head>

  <body>

  <fieldset>
    <h1 class="text-info">Add New Media</h1>

    <form action="actions/a_create.php" method= "post">
        <table class="table">
           <tr>
               <th>ISBN</th>
               <td><input  type="text" name="ISBN"  placeholder="ISBN" /></td>
           </tr>    
           <tr>
               <th>Media Type</th>
               <td><select name="media_type">
                <option value="book">book</option>
                <option value="cd">cd</option>
                <option value="dvd">dvd</option>
               </select></td>
           </tr>
           <tr>
               <th>Image</th>
               <td><input type="text"  name="media_image" placeholder ="insert html link" /></td>
           </tr>
           <tr>
               <th>Title</th>
               <td><input type="text"  name="media_title" placeholder ="add title" /></td>
           </tr>
           <tr>
               <th>Author's First Name</th>
               <td><input type="text"  name="author_first_name" placeholder ="add author's first name" /></td>
           </tr>
           <th>Author's Last Name</th>
               <td><input type="text"  name="author_lastname" placeholder ="add author's last name" /></td>
           </tr>
           <tr>
               <th>Description</th>
               <td><textarea type="text"  name="media_description" placeholder ="add description" style="height: 200px; width: 400px;"></textarea></td>
           </tr>
           <tr>
               <th>Publish Date</th>
               <td><input type="date"  name="media_publish_date"/></td>
           </tr>
           <tr>
               <th>Status</th>
               <td><select name="media_status">
                <option value="available">available</option>
                <option value="reserved">reserved</option>
               </select></td>
           </tr>
           <tr>
               <th>Publisher</th>
               <td><input type="text"  name="publisher_name"/></td>
           </tr>
           <tr>
               <th>Publisher Address</th>
               <td><input type="text"  name="publisher_address"/></td>
           </tr>
           <tr>
               <th>Publisher Size</th>
               <td><select name="publisher_size">
                <option value="big">big</option>
                <option value="medium">medium</option>
                <option value="small">small</option>
               </select></td>
           </tr>                     
           <tr>
               <td><button type ="submit" class="btn btn-info m-2">Insert</button></td>
               <td><a href= "index.php"><button type="button" class="btn btn-info m-2">Back</button></a></td>
           </tr>
       </table>
    </form>

  </fieldset>

  </body>
</html>