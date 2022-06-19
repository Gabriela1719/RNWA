<?php

function get_buildings($id=0)
{
	global $connection;
	$query="SELECT * FROM buildings";
	if($id != 0)
	{
		$query.=" WHERE building_UID=".$id." LIMIT 100";
	}
	$response=array();
	$result=mysqli_query($connection, $query);
	while($row=mysqli_fetch_array($result,MYSQLI_BOTH))
	{
		$response[]=$row;
	}
	header('Content-Type: application/json');
	echo json_encode($response);
}
function insert_building()
	{
		global $connection;

		$data = json_decode(file_get_contents('php://input'), true);
		$building_UID	=$data["building_UID"];
		$number		=$data["number"];
		$name = 	$data["name"];
		$levels	=$data["levels"];
		$notes	=$data["notes"];
		$address	=$data["address"];
		$long =$data["long"];
		$lat	=$data["lat"];
		$lastmodified =$data["lastmodified"];
		
		echo $query="INSERT INTO building VALUES (NULL, '".$building_UID."','".$nuber."','".$name."','".$levels."','".$notes."','".$address."','".$long."','".$lat."','".$lastmodified."',NOW())";
		if(mysqli_query($connection, $query))
		{
			$broj_redaka = mysqli_affected_rows($connection);
			$response=array(
				'status' => 1,
				'query' => $query,
				'broj_redaka' => $broj_redaka,
				'status_message' =>'Zgrada uspješno upisana.'
			);
		}
		else
		{
			$broj_redaka = mysqli_affected_rows($connection);
			$response=array(
				'status' => 0,
				'query' => $query,
				'broj_redaka' => $broj_redaka,
				'status_message' =>'Building Insertion failed.'
			);
		}
		header('Content-Type: application/json');
		echo json_encode($response);
	}
function update_building($id)
	{
		global $connection;
		$post_vars = json_decode(file_get_contents("php://input"),true);
		$building_UID	=$data["building_UID"];
		$number		=$data["number"];
		$name = 	$data["name"];
		$levels	=$data["levels"];
		$notes	=$data["notes"];
		$address	=$data["address"];
		$long =$data["long"];
		$lat	=$data["lat"];
		$lastmodified =$data["lastmodified"];
		
		$query="UPDATE building SET building_UID='".$building_UID."', number='".$number."',name='".$name."',levels = '".$levels."', notes = '".$notes."', address = '".$address."', long = '".$long."', lat = '".$lat."', lastmodified = '".$lastmodified."' WHERE building_UID=".$id;
		
		$result=mysqli_query($connection, $query);
		$broj_redaka = mysqli_affected_rows($connection);;
		
		if($result)
		{
			$response=array(
				'status' => 1,
				'query' => $query,
				'broj_redaka' => $broj_redaka,
				'status_message' =>'Building updated succesfully.'
			);
		}
		else
		{
			$response=array(
				'status' => 0,
				'query' => $query,
				'broj_redaka' => $broj_redaka,
				'status_message' =>'Building Updation Failed.'
			);
		}
		header('Content-Type: application/json');
		echo json_encode($response);
	}

function delete_building($id)
	{
	global $connection;
	$query="DELETE FROM building WHERE building_UID=".$id;
	if($result = mysqli_query($connection, $query))
	{
		$response=array(
			'status' => 1,
			'status_message' =>'Building Deleted Successfully.'
		);
	}
	else
	{
		$response=array(
			'status' => 0,
			'status_message' =>'Building Deletion Failed.'
		);
	}
	header('Content-Type: application/json');
	echo json_encode($response);
	}


?>
