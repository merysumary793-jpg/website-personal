<?php
include 'config.php';
include 'includes/header.php';

$type = 'about-us';

// Ambil konten berdasarkan type
$stmt = $conn->prepare("SELECT content FROM dynamic_contents WHERE type = ? LIMIT 1");
$stmt->bind_param("s", $type);
$stmt->execute();
$result = $stmt->get_result();
$data = $result->fetch_assoc();

$content = $data['content'] ?? '<em>Konten belum tersedia.</em>';
?>

<h2>Kontak Kami</h2>
<p><?php echo nl2br($content); ?></p>

<?php include 'includes/footer.php'; ?>
