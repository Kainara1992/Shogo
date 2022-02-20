<?
require_once('header.php');
require_once('classes.php');

$id = isset($_GET['itemId']) ? $_GET['itemId'] : die('ERROR: отсутствует ID.');
$product = Tools::connect();
$product = Product::GetProductById($id);

require_once('footer.php');