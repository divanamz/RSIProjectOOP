<?php

class DonasiController extends Controller {
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index() {
        $model = $this->loadModel('DonasiModel');
        $stats = $model->getDonationStats(true); // show success-only on page load
        $this->loadView('donasi/donasi', ['stats' => $stats]);
    }

    public function process() {
        header('Content-Type: application/json; charset=UTF-8');

        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            echo json_encode(['status' => 'fail', 'error' => 'Invalid method']);
            exit;
        }

        // update status flow (verification)
        if (isset($_POST['action']) && $_POST['action'] === 'update_status') {
            $donasi_id = (int)($_POST['donasi_id'] ?? 0);
            if (!$donasi_id) {
                echo json_encode(['status' => 'fail', 'error' => 'Invalid donasi_id']);
                exit;
            }
            $model = $this->loadModel('DonasiModel');
            $res = $model->updateDonasiStatus($donasi_id, 'success');
            echo json_encode($res);
            exit;
        }

        // create donasi
        $firstname = trim($_POST['firstname'] ?? '');
        $lastname  = trim($_POST['lastname'] ?? '');
        $email     = trim($_POST['email'] ?? '');
        $country   = trim($_POST['country'] ?? '');
        $phone     = trim($_POST['phone'] ?? '');
        $amount    = (float)($_POST['donation_amount'] ?? 0);
        $method    = trim($_POST['payment_method'] ?? '');
        $anonymous = isset($_POST['anonymous_donation']) ? 1 : 0;

        // basic validation
        if (!$firstname || !$lastname || !$email || !$country || $amount <= 0) {
            echo json_encode(['status' => 'fail', 'error' => 'Missing/invalid fields']);
            exit;
        }

        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo json_encode(['status' => 'fail', 'error' => 'Invalid email']);
            exit;
        }

        $model = $this->loadModel('DonasiModel');
        $result = $model->createDonasi($firstname, $lastname, $email, $country, $phone, $amount, $method, $anonymous);

        echo json_encode($result);
        exit;
    }
}