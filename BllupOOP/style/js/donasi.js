document.addEventListener('DOMContentLoaded', () => {
  const endpoint = '?c=donasi&m=process'; // gunakan endpoint controller
  const donateBtn = document.getElementById('donateBtn');
  const donateBtn2 = document.getElementById('donateBtn2');
  const form = document.getElementById('formDonasi');

  const donasiModal = new bootstrap.Modal(document.getElementById('donasiModal'));
  const qrisModal = new bootstrap.Modal(document.getElementById('qrisModal'));

  const totalAmountEl = document.getElementById('totalAmount');
  const totalDonorsEl = document.getElementById('totalDonors');
  const progressBarEl = document.getElementById('donationProgress');
  const progressPercentEl = document.getElementById('progressPercent');
  const TARGET_AMOUNT = 1000000; // ubah sesuai target

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
          // update stats segera (server returns stats including pending after create)
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
                  if (resp.stats) applyStats(resp.stats); // update with success-only stats
                  qrisModal.hide();
                  alert('Pembayaran berhasil diverifikasi!');
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