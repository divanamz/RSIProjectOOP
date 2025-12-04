<?php
// $stats sudah diterima dari controller
$totalDonors = $stats['total_donors'] ?? 0;
$totalAmount = $stats['total_amount'] ?? 0;
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Donasi</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
      <link rel="icon" href="style/assets/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="style/assets/favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="style/css/donasi.css">
</head>

<body>

<?php include_once __DIR__ . '/../layouts/header.php'; ?>

  <!-- ==================== HERO SECTION ==================== -->
  <header class="hero">
    <div class="overlay"></div>
    <div class="hero-container">
      <div class="hero-text">
        <h1>Harapan Baru</h1>
        <p>
          Mari bersama-sama memberikan bantuan darurat kepada mereka yang membutuhkan. Donasi Anda saat ini juga akan
          menyediakan makanan, air bersih, dan tempat tinggal sementara.
        </p>
        <button id="donateBtn" class="btn-primary">Donate Now</button>
      </div>

      <div class="donation-card">
        <p class="amount" id="totalAmount">Rp. <?= number_format($totalAmount, 0, ',', '.') ?></p>
        <div class="progress-container">
          <div class="progress">
            <div class="progress-bar" id="donationProgress" style="width: 60%;"></div>
          </div>
        </div>
        <div class="card-bottom">
          <span id="totalDonors"><?= $totalDonors ?> donatur</span>
          <span id="progressPercent">0%</span>
        </div>
      </div>
    </div>
  </header>

  <!-- ==================== INFO SECTION ==================== -->
  <section class="py-5 text-center">
    <div class="container">
      <div class="row justify-content-center align-items-center">
        <div class="col-md-6">
          <img src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f" class="img-fluid rounded"
            alt="Donasi" />
        </div>
        <div class="col-md-6">
          <h3 class="fw-bold">Your Donation is Really Powerful!</h3>
          <p class="text-muted">
            Every donation you make directly contributes to cleaning the ocean and preserving coral reefs.
            Let's act now to ensure a better future for marine ecosystems!
          </p>
        </div>
      </div>
    </div>
  </section>

  <!-- ==================== DONATION HISTORY ==================== -->
<section class="py-5 bg-light">
  <div class="container">
    <h3 class="fw-bold text-center mb-4">Riwayat Donasi Sebelumnya</h3>

    <p class="text-center mb-4 text-muted">
      Berikut adalah beberapa program yang telah berhasil dijalankan berkat dukungan para donatur sebelumnya.
    </p>

    <div class="row justify-content-center">

      <!-- PROGRAM 1 -->
      <div class="col-md-8 mb-4">
        <div class="card shadow-sm border-0 p-4">
          <h5 class="fw-bold">Program Pemulihan Pesisir Pantai 2024</h5>
          <p class="mb-1 text-muted">
            Fokus: Penanaman 2.500 bibit mangrove & pembersihan sampah pesisir.
          </p>
          <p class="mb-2">
            <strong>Total Dana Terkumpul:</strong> Rp 87.450.000
          </p>
          <p class="text-muted">
            Dana digunakan untuk logistik penanaman, peralatan relawan, serta edukasi lingkungan kepada
            masyarakat sekitar wilayah pesisir.
          </p>
        </div>
      </div>

      <!-- PROGRAM 2 -->
      <div class="col-md-8 mb-4">
        <div class="card shadow-sm border-0 p-4">
          <h5 class="fw-bold">Bantuan Air Bersih untuk Daerah Kekeringan 2023</h5>
          <p class="mb-1 text-muted">
            Fokus: Penyediaan tandon air dan distribusi air bersih harian.
          </p>
          <p class="mb-2">
            <strong>Total Dana Terkumpul:</strong> Rp 124.300.000
          </p>
          <p class="text-muted">
            Dana digunakan untuk penyewaan truk tangki air, pembelian selang distribusi, serta pembuatan titik
            penampungan air sementara di tiga desa.
          </p>
        </div>
      </div>

      <!-- PROGRAM 3 -->
      <div class="col-md-8 mb-4">
        <div class="card shadow-sm border-0 p-4">
          <h5 class="fw-bold">Program Bantuan Sosial Korban Banjir 2022</h5>
          <p class="mb-1 text-muted">
            Fokus: Paket sembako, obat-obatan, dan pakaian layak pakai.
          </p>
          <p class="mb-2">
            <strong>Total Dana Terkumpul:</strong> Rp 63.800.000
          </p>
          <p class="text-muted">
            Dana dialokasikan untuk pengadaan logistik, transportasi relawan, serta pendistribusian bantuan ke
            lebih dari 400 keluarga terdampak.
          </p>
        </div>
      </div>

    </div>
  </div>
</section>

  <!-- ==================== COMMUNITY SECTION ==================== -->
  <section class="community text-center py-3 bg-light">
    <div class="container">
      <h4 class="fw-semibold mb-2">Be The Part of Fundraisers With Over</h4>
      <h2 class="fw-bold display-6 mb-2">52K,+&nbsp;&nbsp;52K,+&nbsp;&nbsp;52K,+</h2>
      <p class="fw-medium mb-4">People From Around The World Joined</p>

      <button id="donateBtn2" class="btn btn-p mb-5 px-4 py-2">Donate Now</button>

      <!-- Gallery grid -->
      <div class="gallery">
        <div class="row g-3 justify-content-center">
          <!-- ========== BARIS 3 : Hanya 2 Foto Kanan - Kiri ========== -->
          <div class="row g-3 justify-content-between mt-2">

            <!-- Foto kiri -->
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
              <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
            </div>

            <!-- Foto kanan -->
            <div class="col-6 col-sm-4 col-md-3 col-lg-2">
              <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
            </div>

          </div>

          <!-- ========== BARIS 1 ========== -->
          <div class="col-6 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="gallery-img img-fluid" alt="">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>

          <!-- ========== BARIS 2 (copy saja baris 1) ========== -->
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>
          <div class="col-6 col-sm-4 col-md-3 col-lg-2">
            <img src="style/assets/gallery.jpg" class="img-fluid rounded-4 shadow-sm" alt="Gallery image">
          </div>

        </div>
      </div>

  </section>

  <!-- ==================== MODAL FORM DONASI ==================== -->
  <div class="modal fade" id="donasiModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
      <div class="modal-content p-4 border-0 shadow-lg">
        <h3 class="mb-3 fw-bold">Be a Donor</h3>
        <form id="formDonasi">
          <div class="row g-3">
            <div class="col-md-6">
              <label>First name</label>
              <input type="text" class="form-control" name="firstname" placeholder="First Name" required />
            </div>
            <div class="col-md-6">
              <label>Last name</label>
              <input type="text" class="form-control" name="lastname" placeholder="Last Name" required />
            </div>
            <div class="col-md-12">
              <label>Email</label>
              <input type="email" class="form-control" name="email" placeholder="Email" required />
            </div>
            <div class="col-md-6">
              <label>Country</label>
              <input type="text" class="form-control" name="country" placeholder="Country" required />
            </div>
            <div class="col-md-6">
              <label>Phone</label>
              <div class="input-group">
                <span class="input-group-text">+62</span>
                <input type="text" class="form-control" name="phone" placeholder="81234567890" required />
              </div>
            </div>
            <div class="col-md-12">
              <label>Donation amount*</label>
              <div class="input-group">
                <span class="input-group-text">Rp.</span>
                <input type="text" class="form-control" name="donation_amount" placeholder="0" required />
              </div>
            </div>
            <div class="col-md-12">
              <label>Payment Method*</label>
              <select class="form-select" name="payment_method" required>
                <option value="qris">QRIS</option>
              </select>
            </div>
            <div class="col-md-12 mt-3">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="anonymous_donation" name="anonymous_donation">
                <label class="form-check-label" for="anonymous_donation">
                  I would like to donate anonymously.
                </label>
              </div>
            </div>
          </div>

          <div class="mt-4 d-flex justify-content-end gap-2">
            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-p">Submit Donation</button>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="modal fade" id="qrisModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content p-4 text-center border-0 shadow-lg">
        <h4 class="fw-bold mb-2">Scan QRIS</h4>
        <img src="style/assets/gambar_qris.jpg" class="img-fluid rounded mb-3">
        <button class="btn btn-primary" data-bs-dismiss="modal">Selesai</button>
      </div>
    </div>
  </div>

  <!-- ==================== JS ==================== -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', () => {
      const endpoint = '?c=donasi&m=process';
      const donateBtn = document.getElementById('donateBtn');
      const donateBtn2 = document.getElementById('donateBtn2');
      const form = document.getElementById('formDonasi');

      const donasiModal = new bootstrap.Modal(document.getElementById('donasiModal'));
      const qrisModal = new bootstrap.Modal(document.getElementById('qrisModal'));

      const totalAmountEl = document.getElementById('totalAmount');
      const totalDonorsEl = document.getElementById('totalDonors');
      const progressBarEl = document.getElementById('donationProgress');
      const progressPercentEl = document.getElementById('progressPercent');
      // target untuk progress bar (ubah sesuai target kampanye)
      const TARGET_AMOUNT = 1000000; // contoh: 1.000.000

      function formatRp(num){
        return 'Rp. ' + (Number(num) || 0).toLocaleString('id-ID');
      }

      function applyStats(stats){
        if (!stats) return;
        const total = Number(stats.total_amount) || 0;
        const donors = Number(stats.total_donors) || 0;
        totalAmountEl.textContent = formatRp(total);
        totalDonorsEl.textContent = donors + ' investor';
        const percent = Math.min(100, Math.round((total / TARGET_AMOUNT) * 100));
        progressBarEl.style.width = percent + '%';
        progressPercentEl.textContent = percent + '%';
      }

      donateBtn?.addEventListener('click', () => donasiModal.show());
      donateBtn2?.addEventListener('click', () => donasiModal.show());

      form.addEventListener('submit', (e) => {
        e.preventDefault();

        const formData = new FormData(form);

        fetch(endpoint, {
          method: 'POST',
          body: formData,
        })
          .then((res) => res.json())
          .then((data) => {
            console.log('Response server:', data);

            if (data.status === 'success') {
              // update stats segera (server sudah mengembalikan stats)
              if (data.stats) applyStats(data.stats);

              donasiModal.hide();
              qrisModal.show();

              setTimeout(() => {
                const updateData = new FormData();
                updateData.append('action', 'update_status');
                updateData.append('donasi_id', data.donasi_id);

                fetch(endpoint, {
                  method: 'POST',
                  body: updateData,
                })
                  .then((res) => res.json())
                  .then((resp) => {
                    if (resp.status === 'success') {
                      // update stats setelah verifikasi
                      if (resp.stats) applyStats(resp.stats);

                      qrisModal.hide();
                      alert('Pembayaran berhasil diverifikasi!');
                      // optionally reload or just keep updated DOM
                    } else {
                      alert('Gagal update status pembayaran!');
                      console.error(resp);
                    }
                  });
              }, 5000);
            } else {
              alert('Gagal mengirim donasi! ' + data.error);
              console.error(data);
            }
          })
          .catch((err) => {
            alert('Error server! Lihat console');
            console.error(err);
          });
      });
    });
  </script>
<?php include_once __DIR__ . '/../layouts/footer.php'; ?>

</body>

</html>