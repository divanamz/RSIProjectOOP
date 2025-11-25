<?php

class ProfileController extends Controller {

    public function __construct()
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        // cek user login yang benar
        if (!isset($_SESSION['user_id'])) {
            header("Location:?c=auth&m=login");
            exit;
        }
    }

    public function index() {

        $user_id = $_SESSION['user_id'];

        // Load model
        $profileModel = $this->loadModel("profile");
        
        $profile = $profileModel->getProfileByUserId($user_id);

        // If profile not found, create one automatically
        if (!$profile) {
            $profileModel->createProfile($user_id, $_SESSION['email']);
            $profile = $profileModel->getProfileByUserId($user_id);
        }

        // Load view
        $this->loadView("profile/index", [
            'title' => 'Profile',
            'profile' => $profile
        ]);
    }

    public function update() {

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {

            $profileModel = $this->loadModel("profile");

            $data = [
                "user_id" => $_SESSION['user_id'],
                "fullname" => $_POST['fullname'],
                "nickname" => $_POST['nickname'],
                "email" => $_POST['email'],
                "gender" => $_POST['gender'],
                "date_of_birth" => $_POST['date_of_birth'],
                "phone_number" => $_POST['phone_number'],
                "country" => $_POST['country'],
                "address" => $_POST['address']
            ];

            $profileModel->updateProfile($data);

            header("Location:?c=profile&m=index");
            exit;
        }
    }
}
