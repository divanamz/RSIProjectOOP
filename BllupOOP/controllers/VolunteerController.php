<?php

class VolunteerController extends Controller {
    public function __construct() {
        parent::__construct();
        // pastikan user login
        if (!isset($_SESSION['user']['id'])) {
            header("Location:?c=auth&m=login");
            exit();
        }
    }

    public function index() {
        $model = $this->loadModel('VolunteerModel');
        $programs = $model->getAllPrograms();
        $this->loadView('volunteer/volunteer', ['programs' => $programs]);
    }

    public function detail() {
        if (!isset($_GET['id'])) {
            header("Location:?c=volunteer&m=index");
            exit();
        }

        $activity_id = (int)$_GET['id'];
        $model = $this->loadModel('VolunteerModel');
        $program = $model->getProgramById($activity_id);

        if (!$program) {
            die("Program tidak ditemukan.");
        }

        $this->loadView('volunteer/detail', ['program' => $program]);
    }

    public function register() {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST' || !isset($_POST['activity_id'])) {
            header("Location:?c=volunteer&m=index");
            exit();
        }

        $activity_id = (int)$_POST['activity_id'];
        $user_id = $_SESSION['user']['id'];

        // Ambil data dari form
        $fullname = htmlspecialchars(trim($_POST['fullname'] ?? ''));
        $email = filter_var(trim($_POST['email'] ?? ''), FILTER_VALIDATE_EMAIL);
        $phone = htmlspecialchars(trim($_POST['phone'] ?? ''));
        $address = htmlspecialchars(trim($_POST['address'] ?? ''));
        $motivation = htmlspecialchars(trim($_POST['motivation'] ?? ''));

        // Validasi
        if (!$fullname || !$email || !$phone || !$address || !$motivation) {
            $_SESSION['error_message'] = "Semua field wajib diisi!";
            header("Location:?c=volunteer&m=detail&id={$activity_id}");
            exit();
        }

        // Handle file upload
        $fileName = null;
        if (!empty($_FILES['file_support']['name']) && $_FILES['file_support']['error'] === UPLOAD_ERR_OK) {
            $uploadDir = __DIR__ . '/../../uploads/volunteer/';
            if (!is_dir($uploadDir)) {
                mkdir($uploadDir, 0755, true);
            }

            $origName = $_FILES['file_support']['name'];
            $ext = pathinfo($origName, PATHINFO_EXTENSION);
            $fileName = time() . "_" . rand(1000, 9999) . "." . $ext;
            $dest = $uploadDir . $fileName;

            if (!move_uploaded_file($_FILES['file_support']['tmp_name'], $dest)) {
                $fileName = null;
            }
        }

        $model = $this->loadModel('VolunteerModel');
        if ($model->registerVolunteer($user_id, $activity_id, $fullname, $email, $phone, $address, $motivation, $fileName)) {
            $_SESSION['success_message'] = "Pendaftaran berhasil!";
            header("Location:?c=volunteer&m=index");
            exit();
        } else {
            $_SESSION['error_message'] = "Pendaftaran gagal. Silakan coba lagi.";
            header("Location:?c=volunteer&m=detail&id={$activity_id}");
            exit();
        }
    }
}