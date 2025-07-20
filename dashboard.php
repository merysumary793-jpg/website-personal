<?php
session_start();
if (!isset($_SESSION['user'])) {
    header('Location: login.php');
    exit();
}
?>

<?php include 'includes/header.php'; ?>

<div class="container mt-5">
    <h3>Selamat datang, <?php echo $_SESSION['user']; ?>!</h3>
    <p>Ini adalah halaman dashboard setelah login.</p>
    <a href="logout.php" class="btn btn-danger">Logout</a>
</div>

<?php include 'includes/footer.php'; ?>
