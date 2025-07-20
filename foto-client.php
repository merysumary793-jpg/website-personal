<?php
include 'config.php';
include 'includes/header.php';

$result = $conn->query("SELECT * FROM clients ORDER BY created_at DESC");
?>

<div class="container mt-5">
    <h2>Clients</h2>

    <style>
        .clients-public-img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }
    </style>

    <div class="row">
        <?php while($row = $result->fetch_assoc()): ?>
            <div class="col-md-3 mb-4">
                <img src="assets/uploads/clients/<?php echo $row['filename']; ?>" class="clients-public-img">
            </div>
        <?php endwhile; ?>
    </div>
</div>


<?php include 'includes/footer.php'; ?>
