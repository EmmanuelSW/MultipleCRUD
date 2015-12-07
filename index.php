<?php
	$mysqli = new mysqli('localhost','root','','asamurat');
	if(isset($_POST['cekhapus'])){
		$hasil = $mysqli->query("delete from tbl_surat_masuk where id in ('".implode("','",array_values($_POST['checkbox']))."')");
		if($hasil){
			?>
			<script>alert('Success delete data');location.href='index.php'</script>
			<?php
		} else{
			?>
			<script>alert('Failed delete data');location.href='index.php'</script>
			<?php
		}
	}
?>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MultipleCRUD</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="dataTables.bootstrap.min.css" rel="stylesheet">
  </head>
  <body>

	<div class="container">
		<form method="post">
		<h1>Tabel Data Select All! 
			<button type="submit" name="cekhapus" class="btn btn-danger">Delete Selected</button>
		</h1>
		
		<table class="table table-bordered table-striped" id="tabeldata">
		<thead>
			<tr>
				<th><input type="checkbox" id="select-all"/></th>
				<th>ID</th>
				<th>No Surat</th>
				<th>Pengiriman</th>
				<th>Surat Masuk</th>
				<th>Asal</th>
				<th>Perihal</th>
				<th>Aksi</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<th><input type="checkbox" id="select-all2"/></th>
				<th>No Surat</th>
				<th>Pengiriman</th>
				<th>Surat Masuk</th>
				<th>Asal</th>
				<th>Perihal</th>
				<th>Aksi</th>
			</tr>
		</tfoot>
		<tbody>
		<?php
		$res = $mysqli->query("select * from tbl_surat_masuk");
		while($row=$res->fetch_assoc()){
		?>
			<tr>
				<td><input type="checkbox" name="checkbox[]" value="<?php echo $row['id'] ?>"/></td>
				<td><?php echo $row['id'] ?></td>
				<td><?php echo $row['no_surat'] ?></td>
				<td><?php echo $row['tgl_pengiriman'] ?></td>
				<td><?php echo $row['tgl_masuk'] ?></td>
				<td><?php echo $row['asal'] ?></td>
				<td><?php echo $row['perihal'] ?></td>
				<td><?php echo $row['aksi'] ?></td>
			</tr>
		
		<?php
		}
		?>
		</tbody>
		</table>
		</form>
	</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="jquery.dataTables.min.js"></script>
    <script src="dataTables.bootstrap.min.js"></script>

    <script>
	$(document).ready(function(){
		$('#tabeldata').dataTable();
		$('#select-all').click(function(){
			if(this.checked){
				$(':checkbox').each(function(){
					this.checked = true;
				});
			} else{
				$(':checkbox').each(function(){
					this.checked = false;
				});
			}
		});
		$('#select-all2').click(function(){
			if(this.checked){
				$(':checkbox').each(function(){
					this.checked = true;
				});
			} else{
				$(':checkbox').each(function(){
					this.checked = false;
				});
			}
		});
	});
	</script>
	
  </body>
</html>