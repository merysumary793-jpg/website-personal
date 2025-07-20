<?php
include 'config.php';
include 'includes/header.php';

$result = $conn->query("SELECT * FROM gallery ORDER BY created_at DESC");
?>

<div class="container mt-5">
    <h2>Event & Gallery</h2>

    <style>
        .gallery-public-img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 8px;
        }
    </style>

    <div class="row">
        <?php while($row = $result->fetch_assoc()): ?>
            <div class="col-md-3 mb-4">
                <img src="assets/uploads/gallery/<?php echo $row['filename']; ?>" class="gallery-public-img">
            </div>
        <?php endwhile; ?>
    </div>
</div>


<?php include 'includes/footer.php'; ?>
