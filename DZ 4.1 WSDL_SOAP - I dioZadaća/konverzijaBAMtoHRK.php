<?php

if(!extension_loaded("soap")){
  dl("php_soap.dll");
}


ini_set("soap.wsdl_cache_enabled","0");

$server = new SoapServer("konverzija.wsdl");


function konverzijaBAMtoHRK($yourValue){
  return $yourValue * 3.85 . " HRK";
}

$server->AddFunction("konverzijaBAMtoHRK");
$server->handle();
?>