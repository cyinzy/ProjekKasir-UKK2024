<div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Daftar Barang</h4>
                        <p class="card-description">
                        <!-- Add class <code>.table</code> -->
                            <a href="?page=tambahbarang" title="Tambah Produk" class="btn btn-primary btn-icon-split btn-sm">
                                    <span class="icon text-white-50"><i class="fas fa-plus"></i></span>
                                    <span class="text">Tambah Barang</span>
                            </a>
                        </p>

                        <div class="table-responsive">
                            <table class="table" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Foto</th>
                                        <th>Nama Produk</th>
                                        <th>Harga</th>
                                        <th>Stok</th>
                                        <th>Terjual</th>
                                        <th></th>
                                        <th></th>
                                        <th>Opsi</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                <?php 
                                    $no = 1;
                                    $sql = $con->query("SELECT * FROM produk");
                                    while ($data= $sql->fetch_assoc()) {
                                        
                                ?>
                                <tr>
                                    <td><?php echo $no++ ?></td>
                                    <td><?php echo "<img src='../foto/".$data['foto']."' width='70' height='70'>" ?></td>
                                    <td><?php echo $data['NamaProduk']?></td>
                                    <td><?php echo $data['Harga']?></td>
                                    <td><?php echo $data['Stok']?></td>
                                    <td><?php echo $data['terjual']?></td>
                                    <td></td>
                                    <td></td>
                                    <td align="center" width="12%"><a href="?page=edit-brg&ProdukID=<?= $data['ProdukID']; ?>" class="badge badge-primary p-2 edit-data" title="Edit"><i class="">Edit</i></a> | <a href="?page=hapusbarang&ProdukID=<?= $data['ProdukID']; ?>" class="badge badge-danger p-2 delete-data" title='Delete'><i class="">Hapus</i></a> </td>
                                    <td></td>
                                    <td>
                                        
                                    </td>
                                </tr>
                                <?php } ?>
                            
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>