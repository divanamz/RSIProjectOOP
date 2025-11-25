<?php

include_once __DIR__ . "/../models/Model.php";

class Controller{

  public function loadModel($modelName){
    $modelClass = ucfirst($modelName);
    $modelFile = "models/{$modelName}.php";

    include_once __DIR__ . "/../" . $modelFile; // Path relatif dari Controller.php
    return new $modelClass();
  }

  public function loadView($viewName, $data = [], $layout = null){
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
    header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
    foreach ($data as $key => $value) {
      $$key = $value;
    }

    $viewFile = __DIR__ . "/../views/{$viewName}.php";

    if (!file_exists($viewFile)) {
      throw new NotFoundException("View file {$viewFile} not found.");
    }

    if ($layout === null) {
      include_once $viewFile;
      return;
    }

    $layoutPath = "views/layouts/{$layout}.php";

    if (!file_exists($layoutPath)) {
      throw new NotFoundException("Layout {$layout} not found.");
    }

    include_once $layoutPath;
  }
}