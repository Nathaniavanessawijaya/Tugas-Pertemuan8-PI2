<?php
include 'model.php';
$model = new Model();
$index = 1;
?>
<!doctype html>
<html lang="en">


<head>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title>Data Peminjaman</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light "  style="background-color: #AFCBFF;">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php">Sistem Rental VCD</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="index.php">Data Rental VCD</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="anggota.php">Anggota</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="peminjaman.php">Peminjaman VCD</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
        <h1 align="center">Data Peminjaman</h1>
        <br>
        <a href="create_peminjaman.php"><input type="button" value="Tambah Data"></a>
        <a href="print_peminjaman.php" target="_blank"><input type="button" value="Cetak Data"></a>
        <br><br>
        <table class="table table-striped table-hover" border="1">
            <thead>
                <tr bgcolor="B0C4DE">
                    <th scope="col">No.</th>
                    <th scope="col">ID Peminjaman</th>
                    <th scope="col">ID Anggota</th>
                    <th scope="col">Nama VCD</th>
                    <th scope="col">Tanggal Pinjam</th>
                    <th scope="col">Tanggal Kembali</th>
                    <th scope="col">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $result = $model->tampil_data_pjm();
                if (!empty($result)) {
                    foreach ($result as $data) : ?>
                        <tr>
                            <td><?= $index++ ?></td>
                            <td><?= $data->id_pjm ?></td>
                            <td><?= $data->id_anggota ?></td>
                            <td><?= $data->nama_vcd ?></td> 
                            <td><?= $data->tgl_pjm ?></td>
                            <td><?= $data->tgl_kmbl ?></td>
                            <td>
                              
                                <a name="edit" id="edit" href="edit_peminjaman.php?id=<?= $data->id_pjm ?>"><input type="button" value="Edit"></a>
                                <a name="hapus" id="hapus" href="proses.php?pjm_id=<?= $data->id_pjm ?>"><input type="button" value="Delete"></a> 
                            </td>
                        </tr>
                    <?php endforeach;
                } else { ?>
                <tr>
                    <td colspan="9">Belum ada data pada tabel peminjaman.</td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>

</html>