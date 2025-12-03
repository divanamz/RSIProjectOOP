<?php
// view menerima: $title, $user, $volunteer, $blogs, $forums, $merch
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?= htmlspecialchars($title ?? 'Dashboard') ?></title>
  <link rel="stylesheet" href="style/css/dashboard.css">
      <link rel="icon" href="style/assets/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="style/assets/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

</head>
<body>
<?php include_once __DIR__ . '/../layouts/header.php'; ?>

<section class="hero">
  <div class="overlay"></div>
  <div class="hero-content">
<h1>Welcome, <?= htmlspecialchars($user['nickname'] ?? 'User') ?></h1>

            <p>
                Setiap tindakan kecilmu membantu menjaga kelestarian alam untuk generasi berikutnya.
            </p>

             <div class="stats">
            <div class="stat-box">
                <h2>100+</h2>
                <p>Volunteers</p>
            </div>
            <div class="stat-box">
                <h2>100+</h2>
                <p>Activities</p>
            </div>
            <div class="stat-box">
                <h2>100+</h2>
                <p>Donations</p>
            </div>
  </div>
</section>

<section class="dashboard-sections">
  <div class="section-block">
    <div class="section-header">
      <h2>Kegiatan Volunteer Terbaru</h2>
      <a href="?c=volunteer&m=index" class="more-link">Jelajahi lebih jauh →</a>
    </div>
    <div class="card-list">
      <?php foreach ($volunteer as $v): ?>
        <a href="?c=volunteer&m=detail&id=<?= (int)($v['activity_id'] ?? $v['id'] ?? 0) ?>" class="card">
          <img src="style/assets/vol.png" class="card-img" alt="">
          <div class="card-title"><?= htmlspecialchars($v['program_name'] ?? 'Untitled') ?></div>
          <p><i class="bi bi-calendar-event me-2"></i><?= htmlspecialchars($v['date'] ?? '') ?></p>
          <p><i class="bi bi-geo-alt me-2"></i><?= htmlspecialchars($v['location'] ?? '') ?></p>
        </a>
      <?php endforeach; ?>
    </div>
  </div>


<?php include_once __DIR__ . '/../layouts/footer.php'; ?>
</body>
</html>