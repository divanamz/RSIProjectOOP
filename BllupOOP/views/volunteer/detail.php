<?php
// $program sudah diterima dari controller
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title><?= htmlspecialchars($program['program_name'] ?? 'Detail Program'); ?></title>
      <link rel="icon" href="style/assets/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="style/assets/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style/css/vol.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
</head>
<body class="detail-body">


<div class="detail-container">
    <img src="style/assets/vol.png" class="detail-image" alt="program image">
    <div class="detail-content">
        <h1 class="detail-title"><?= htmlspecialchars($program['program_name']); ?></h1>
        <div class="detail-meta">
            <span><i class="bi bi-calendar-event me-2" aria-hidden="true"></i><?= htmlspecialchars($program['date'] ?? ''); ?></span>
            <span><i class="bi bi-clock me-2" aria-hidden="true"></i><?= htmlspecialchars($program['time'] ?? ''); ?></span>
            <span><i class="bi bi-geo-alt me-2" aria-hidden="true"></i><?= htmlspecialchars($program['location'] ?? ''); ?></span>
        </div>
        <p class="detail-description"><?= nl2br(htmlspecialchars($program['description'] ?? '')); ?></p>
        <button class="detail-btn" id="openPopup">Daftar Sekarang</button>
    </div>
</div>

<!-- POPUP FORM -->
<div class="popup-overlay" id="popupForm">
  <div class="popup-box">
    <span class="popup-close" id="closePopup">&times;</span>

    <h2 style="margin-bottom:10px;">Daftar Volunteer – <?= htmlspecialchars($program['program_name']); ?></h2>

    <?php if (isset($_SESSION['error_message'])): ?>
        <div class="alert alert-danger">
            <?= htmlspecialchars($_SESSION['error_message']); ?>
        </div>
        <?php unset($_SESSION['error_message']); ?>
    <?php endif; ?>

    <form action="?c=volunteer&m=register" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="activity_id" value="<?= htmlspecialchars($program['activity_id']); ?>">

      <label>Nama Lengkap</label>
      <input type="text" name="fullname" required>

      <label>Email</label>
      <input type="email" name="email" required>

      <label>No Telepon</label>
      <input type="text" name="phone" required>

      <label>Alamat</label>
      <textarea name="address" rows="3" required></textarea>

      <label>Motivasi Mengikuti Event</label>
      <textarea name="motivation" rows="4" required></textarea>

      <label>Upload Berkas (Opsional)</label>
      <input type="file" name="file_support">

      <br><br>
      <button type="submit" class="detail-btn" style="width:100%;">Kirim Pendaftaran</button>
    </form>
  </div>
</div>

<script>
const popup = document.getElementById("popupForm");
const openBtn = document.getElementById("openPopup");
const closeBtn = document.getElementById("closePopup");
openBtn.onclick = () => popup.style.display = "flex";
closeBtn.onclick = () => popup.style.display = "none";
window.onclick = (e) => { if (e.target === popup) popup.style.display = "none"; }
</script>


</body>
</html>