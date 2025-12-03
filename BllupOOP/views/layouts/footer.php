<style>
.footer-wrapper {
    width: 100%;
    background-color: #113F67;
    padding: 40px 0 20px;
    color: white;
    font-family: 'Manrope', sans-serif;
    margin-top: 60px;
}

.footer-container {
    max-width: 1200px;
    margin: auto;
    padding: 0 40px;
    display: flex;
    justify-content: space-between;
    gap: 40px;
    flex-wrap: wrap;
}

.footer-section h3 {
    font-size: 22px;
    margin-bottom: 12px;
    font-weight: 700;
}

.footer-section h4 {
    font-size: 18px;
    margin-bottom: 10px;
    font-weight: 600;
}

.footer-section p,
.footer-section a {
    font-size: 15px;
    opacity: 0.9;
    color: white;
    text-decoration: none;
}

.footer-section a:hover {
    opacity: 1;
}

.footer-section ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

.footer-section ul li {
    margin-bottom: 8px;
}

.footer-bottom {
    text-align: center;
    margin-top: 25px;
    padding-top: 15px;
    border-top: 1px solid rgba(255,255,255,0.5);
    font-size: 14px;
    opacity: 0.9;
}

/* Responsive */
@media (max-width: 768px) {
    .footer-container {
        flex-direction: column;
        text-align: center;
    }
}
</style>

<footer class="footer-wrapper">
    <div class="footer-container">

        <div class="footer-section">
            <h3>Bllup</h3>
            <p>Platform sosial untuk volunteer, blog, forum, merchandise, dan kegiatan berbagi.</p>
        </div>

        <div class="footer-section">
            <h4>Menu</h4>
            <ul>
                <li><a href="?c=dashboard&m=index">Home</a></li>
                <li><a href="?c=volunteer&m=index">Volunteer</a></li>
                <li><a href="?c=donasi&m=index">Donasi</a></li>
            </ul>
        </div>

        <div class="footer-section">
            <h4>Kontak</h4>
            <p>Email: support@bllup.com</p>
            <p>Telepon: +62 812-3456-7890</p>
        </div>

    </div>

    <div class="footer-bottom">
        © <?= date("Y") ?> Bllup — All Rights Reserved.
    </div>
</footer>
