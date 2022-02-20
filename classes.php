<?	
class Tools
{
	static function connect(
		 $host="localhost:3306",
		 $user="root",
		 $pass="",
		 $dbname="shogo_test")
		{
		 $cs = 'mysql:host='.$host.';dbname='.$dbname.';charset=utf8;';
		 $options = array(
			 PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION,
			 PDO::ATTR_DEFAULT_FETCH_MODE=>PDO::FETCH_ASSOC,
			 PDO::MYSQL_ATTR_INIT_COMMAND=>'SET NAMES UTF8'
		 );
		 try {
			 $pdo = new PDO($cs,$user,$pass,$options);
			 return $pdo;
		 }
		 catch(PDOException $e) 
		 {
		 	echo $e->getMessage();
		 	return false;
		 }
	}

	static function createView(){
		$db = Tools::connect();
		$sql = 'CREATE VIEW products AS SELECT product.position, product.url, product.name, product.articul, product.price, product.currency_id, product.price_old, product.notice, product.content, currency.ID, currency.NAME AS CURRENCY_NAME, product_assignment.product_id, product_assignment.section_id, product_assignment.type_id, product_section.id AS PRODUCT_SECTION_ID, product_section.section_name, product_type.id AS PRODUCT_TYPE_ID, product_type.type_name FROM product, currency, product_assignment, product_section, product_type WHERE product.currency_id = currency.id AND product.id = product_assignment.product_id AND product_assignment.section_id = product_section.id AND product_assignment.type_id = product_type.id';
		$result = $db->query($sql);
		$res = $result->fetchAll(PDO::FETCH_ASSOC);
	}
}

class Product 
{
	protected $id;
	protected $position;
	protected $url;
	protected $name;
	protected $articul;
	protected $price;
	protected $currency;
	protected $oldPrice;
	protected $notice;
	protected $content;

	public function __construct($id, $position, $url, $name, $articul, $price, $currency, $oldPrice, $notice, $content)
	{
		$this->id = $id;
		$this->position = $position;
		$this->url = $url;
		$this->name = $name;
		$this->articul = $articul;
		$this->price = $price;
		$this->currency = $currency;
		$this->oldPrice = $oldPrice;
		$this->notice = $notice;
		$this->content = $content;
	}

	static function intoDb()
	{
		 try{
			 $pdo=Tools::connect();
			 $ps=$pdo->prepare("INSERT INTO product (position,url,name,articul,price,currency_id,price_old,notice,content) VALUES (:position,:url,:name,:articul,:price,:currency,:oldPrice,:notice,:content)");
			 $ar=(array)$this;
			 array_shift($ar);
			 $ps->execute($ar);
		 }
		 catch(PDOException $e) 
		 {
			 $err=$e->getMessage();
			 if(substr($err,0,strrpos($err,":"))=='SQLSTATE[23000]:Integrity constraint violation')
			 	return 1062;
			 else
			 	return $e->getMessage();
		 }
	}

	static function fromDb($id)
	{
		 $product = null;
		 try{
			 $pdo = Tools::connect();
			 $ps = $pdo->prepare(("SELECT * FROM product WHERE id =?"));
			 $res = $ps->execute(array($id));
			 $row = $res->fetch();
			 $product = new Product($row['position'], $row['url'], $row['name'], $row['articul'], $row['price'], $row['currency_id'], $row['price_old'], $row['notice'], $row['content']);
			 return $product;
		 }
		 catch(PDOException $e) 
		 {
			 echo $e->getMessage();
			 return false;
		 }
	}

	static function GetItems()
	{
		$ps = null;
		$items = null;
		try
		{
			$pdo = Tools::connect();
			$ps = $pdo->prepare('SELECT * FROM product, currency WHERE product.currency_id = currency.ID');
			$ps->execute();

		 	while ($row = $ps->fetch())
			{
				$item=new Product($row['id'], $row['position'], $row['url'], $row['name'], $row['articul'], $row['price'], $row['NAME'], $row['price_old'], $row['notice'], $row['content']);
				$items[] = $item;
			}
		 	return $items;
		}
		catch(PDOException $e) 
		{
		 echo $e->getMessage();
		 return false;
		}
	}
	public function Draw(){
		echo '<div class="item-card col-xlg-2 col-lg-3 col-md-12 col-sm-12 col-xs-12 m-2 ms-1 p-3" style="border: 1px solid silver; border-radius: 10px;">';
			echo '<div style="float: right">'.$this->position.'</div>';
			echo '<h4><a href="itemInfo.php?itemId='.$this->id.'" style="text-decoration: none;">'.$this->name.'</a></h4><p>'.$this->notice.'</p>';
			echo '<p>Стоимость: <b style="color: red; font-size: 20px">'.$this->price.'&nbsp;'.$this->currency.'</b>&nbsp;<s>.'.$this->oldPrice.'</s></p>';
			echo '<a href="itemInfo.php?itemId='.$this->id.'" class="btn btn-primary" name="more_info">Подробнее</a>';
		echo '</div>';
	}

	static function GetProductById($id){
		$db = Tools::connect();
		$sql = $db->prepare(("SELECT * FROM product, currency WHERE product.currency_id = currency.ID AND product.id =".$id));
		$sql->execute();
		$result = $sql->fetch(PDO::FETCH_ASSOC);
		echo '<div class="col-xlg-9 col-lg-12 col-md-12 col-sm-12 col-xs-12 m-2 ms-1 p-3 mx-auto">';
			echo '<div style="float: right">'.$result['position'].'</div>';
			echo '<h4 style="text-decoration: underline";>'.$result['name'].'</h4><p>'.$result['notice'].'</p>';
			echo '<img src="images/'.$result['id'].'.jpg">';
			echo '<p>Стоимость: <b style="color: red; font-size: 20px">'.$result['price'].'&nbsp;'.$result['NAME'].'</b>&nbsp;<s>.'.$result['price_old'].'</s></p>';
			echo '<p>'.$result['content'].'</p>';
			echo '<p>Подробное описание модели, её характеристики, а также ознакомиться с отзывами покупателей вы можете ознакомиться по ссылке: <a href="'.$result['url'].'">'.$result['url'].'</a></p>';
			echo '<a href="index.php" class="btn btn-primary mt-3" name="back">Назад</a>';
		echo '</div>';
	}

}