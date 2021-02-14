<?php
class Database
{
    private $servername = 'MERITONGASHI\SQLEXPRESS';
    private $user = 'Meriton';
    private $password = '1234567899';
    private $databaseName = 'eShop';

    public $pdo;
  
    public function __construct()
    {
        
        try {
            if(!isset($_SESSION)) 
            { 
                session_start(); 
            }
            $link = new PDO("sqlsrv:Server=$this->servername;Database=$this->databaseName", $this->user, $this->password);
            $this->pdo=$link;
        } catch (PDOException $e) {
            die("ERROR ".$e.getMessage());
            
        }
        
    }
}



