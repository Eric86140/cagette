package db;
import sys.db.Object;
import sys.db.Types;
/**
 * ...
 * @author fbarbut
 */
class TxpSubCategory extends Object
{

	public var id : SId;
	public var name : SString<128>;	
	@:relation(categoryId) public var category:db.TxpCategory;
	
	
	public function getProducts(){
		
		return db.TxpProduct.manager.search($subCategory == this, false);
	
		
	}
	
	override public function toString(){
		return '#$id-$name';
	}
}