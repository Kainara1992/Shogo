<?
session_start();
require_once('header.php');
require_once('classes.php');
$products = Product::GetItems();
foreach($products as $product){
	$product->Draw();
}	
require_once('footer.php');