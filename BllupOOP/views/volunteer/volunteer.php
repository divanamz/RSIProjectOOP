<?php
// $programs sudah diterima dari controller
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Volunteer</title>
    <link rel="icon" href="style/assets/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="style/assets/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/css/vol.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">

</head>

<body>
<?php include_once __DIR__ . '/../layouts/header.php'; ?>

    <!-- SEARCH -->
    <div class="search-section">
        <input 
            type="text" 
            id="searchInput" 
            placeholder="Cari program volunteer..."
            onkeyup="searchCards()"
        >
    </div>

    <!-- CARD GRID -->
    <div class="blog-grid-container" id="cardContainer">

        <?php if (!empty($programs)): ?>
            <?php foreach ($programs as $row): ?>
                <div 
                    class="blog-card" 
                    onclick="window.location='?c=volunteer&m=detail&id=<?= $row['activity_id']; ?>'"
                    data-title="<?= strtolower($row['program_name']); ?>"
                >
                    <div class="image-wrapper">
                        <img src="style/assets/vol.png" alt="Gambar Program">
                    </div>

                    <div class="card-body">
                    <h3 class="title"><?= htmlspecialchars($row['program_name']); ?></h3>
                    <p><i class="bi bi-calendar-event me-2" aria-hidden="true"></i><?= htmlspecialchars($row['date']); ?></p>
                    <p><i class="bi bi-geo-alt me-2" aria-hidden="true"></i><?= htmlspecialchars($row['location']); ?></p>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <p style="text-align:center; width:100%;">Belum ada program volunteer.</p>
        <?php endif; ?>

    </div>

    <!-- JAVASCRIPT SEARCH -->
    <script>
        function searchCards() {
            let input = document.getElementById("searchInput").value.toLowerCase();
            let cards = document.querySelectorAll(".blog-card");

            cards.forEach(card => {
                let title = card.dataset.title;
                card.style.display = title.includes(input) ? "block" : "none";
            });
        }
    </script>

<?php include_once __DIR__ . '/../layouts/footer.php'; ?>

</body>
</html>