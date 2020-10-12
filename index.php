<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<script src="http://code.jquery.com/jquery-1.5.min.js"></script>

</head>
<body>
  <h1>Blog</h1>
<?php
$con=mysqli_connect("localhost","root","","blog");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


  $sql="SELECT * FROM posts";
  if ($result=mysqli_query($con,$sql))
  {
        //count number of rows in query result
      $rowcount=mysqli_num_rows($result);
        //if no rows returned show no news alert
      if ($rowcount==0) {
          
          echo 'No Blogs';
      }
        //if there are rows available display all the results
      foreach ($result as $titles => $rows) {
        
        /*
          echo 'Title: '.$rows['title'].'<BR>';
          echo 'Body: '.$rows['body'].'<BR>';
          echo '<BR><BR>';
          */
?>

          <div class="col-md-6 blog-grid-top">
			<div class="b-grid-top">
			
			<h3>
			<?php echo $rows['title'];?>
			</h3>
			</div>
			<ul class="blog-icons">
			<li>			
			<i class="fas fa-tags"></i><?php echo $rows['body'];?>
			</li>

			</ul>
            </div>
<?php
  
      }
  }

  mysqli_close($con);


 ?>

</body>
</html>