<?php
class DashboardController extends Controller
{

  public function __construct()
  {
    parent::__construct();
    // pastikan user login
    if (!isset($_SESSION['user']['id'])) {
      header("Location:?c=auth&m=login");
      exit();
    }
  }

  public function index()
  {
    $model = $this->loadModel('DashboardModel');

    $volunteer = $model->getLatestVolunteers(3);
    $blogs     = $model->getLatestBlogs(3);
    $forums    = $model->getLatestForums(3);
    $merch     = $model->getLatestMerch(3);

    $this->loadView("dashboard/index", [
      'title' => 'Dashboard',
      'user' => $_SESSION['user'],
      'volunteer' => $volunteer,
      'blogs' => $blogs,
      'forums' => $forums,
      'merch' => $merch
    ]);
  }

  public function profile()
  {
    header("Location:?c=profile&m=index");
    exit();
  }

}