<?php 
include('connection.php');

$start=$_POST['starting'];
$perpage=3;

$sql="select * from comments limit $start,$perpage";
$result=mysqli_query($conn,$sql);

$output='';

while($data=mysqli_fetch_array($result))
{
$output.='<div class="col-xl-7">
  <div class="card mb-3">
    <div class="card-body">
      <h4 class="card-title">'.$data['name'].'</h4>
      <p class="card-text">'.$data['description'].'</p>
      
    </div>
  </div>
 </div>';
}

 echo $output;


?>