<?php
class Config {
	
	public static $maintenance = 0;
	public static $con;

	// Production
  	public static $domain = 'localhost:80/hunts';
  	public static $domain_cookie = 'localhost:80/hunts';
  	public static $context = '';	
  	public static $cache_mode = 'files';
	
	// Others
  	public static $cookie_game_lang = 'glang';
	public static $cookie_web_lang = 'wlang';
	public static $cookie_last_expansion = 'last_expansion';
	public static $cookie_last_option = 'last_option';
	
	public static $precalculated_paths_arr = 'precalculated_paths_arr';
	public static $precalculated_paths_hw = 'precalculated_paths_hw';
	public static $precalculated_paths_sb = 'precalculated_paths_sb';
	public static $precalculated_paths_shb = 'precalculated_paths_shb';
	
	public static function getDbConnection() {
		if (!Config::$con || !Config::checkDbConnection(Config::$con)) {
			if (Config::$con) {
				mysqli_close(Config::$con);
			}
			Config::$con = mysqli_connect(getenv('DB_CONNECTION'), getenv('DB_USER'), getenv('DB_PASS'), getenv('DB_SCHEMA'), 3306) or die("Connection error with database server");
			Config::$con->set_charset("utf8");
			
			return Config::$con;
		}
		return Config::$con;
	}

	public static function checkDbConnection($conn) {
		if (!$conn) {
			return false;
		}
		if(!mysqli_query($conn, "SELECT 1")) {
			return false;
		}
		return true;
	}
}