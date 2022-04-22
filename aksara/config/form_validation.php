<?php

/*
 * class Form validation generator by Almazari
 * Fungsi-fungsi validasi ini terinspirasi dengan Framework Codeigniter
 */
class form_validation{
    
        
    function xss_clean($data)
    {
        // Fix &entity\n;
        $data = str_replace(array('&amp;','&lt;','&gt;'), array('&amp;amp;','&amp;lt;','&amp;gt;'), $data);
        $data = preg_replace('/(&#*\w+)[\x00-\x20]+;/u', '$1;', $data);
        $data = preg_replace('/(&#x*[0-9A-F]+);*/iu', '$1;', $data);
        $data = html_entity_decode($data, ENT_COMPAT, 'UTF-8');

        // Remove any attribute starting with "on" or xmlns
        $data = preg_replace('#(<[^>]+?[\x00-\x20"\'])(?:on|xmlns)[^>]*+>#iu', '$1>', $data);

        // Remove javascript: and vbscript: protocols
        $data = preg_replace('#([a-z]*)[\x00-\x20]*=[\x00-\x20]*([`\'"]*)[\x00-\x20]*j[\x00-\x20]*a[\x00-\x20]*v[\x00-\x20]*a[\x00-\x20]*s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:#iu', '$1=$2nojavascript...', $data);
        $data = preg_replace('#([a-z]*)[\x00-\x20]*=([\'"]*)[\x00-\x20]*v[\x00-\x20]*b[\x00-\x20]*s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:#iu', '$1=$2novbscript...', $data);
        $data = preg_replace('#([a-z]*)[\x00-\x20]*=([\'"]*)[\x00-\x20]*-moz-binding[\x00-\x20]*:#u', '$1=$2nomozbinding...', $data);

        // Only works in IE: <span style="width: expression(alert('Ping!'));"></span>
        $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?expression[\x00-\x20]*\([^>]*+>#i', '$1>', $data);
        $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?behaviour[\x00-\x20]*\([^>]*+>#i', '$1>', $data);
        $data = preg_replace('#(<[^>]+?)style[\x00-\x20]*=[\x00-\x20]*[`\'"]*.*?s[\x00-\x20]*c[\x00-\x20]*r[\x00-\x20]*i[\x00-\x20]*p[\x00-\x20]*t[\x00-\x20]*:*[^>]*+>#iu', '$1>', $data);

        // Remove namespaced elements (we do not need them)
        $data = preg_replace('#</*\w+:\w[^>]*+>#i', '', $data);

        do
        {
                // Remove really unwanted tags
                $old_data = $data;
                $data = preg_replace('#</*(?:applet|b(?:ase|gsound|link)|embed|frame(?:set)?|i(?:frame|layer)|l(?:ayer|ink)|meta|object|s(?:cript|tyle)|title|xml)[^>]*+>#i', '', $data);
        }
        while ($old_data !== $data);

        // we are done...
        return $data;
    }
    
    function required($str=""){
        if(empty($str) OR $str == ""){
            return FALSE;
        }
        else{
            return TRUE;
        }
    }

    function min_length($str="",$val){
        if($str== ""){
            return FALSE;
        }
        else{
            if(strlen(trim($str)) < $val){
                return FALSE;
            }
            else{
                return TRUE;
            }
        }
    }

    function max_length($str="",$val){
        if(strlen(trim($str)) > $val){
            return FALSE;
        }
        else{
            return TRUE;
        }
    }

    function alpa($str=""){
        if($str== ""){
            return FALSE;
        }
        else{
            return ( ! preg_match("/^([a-z])+$/i", $str)) ? FALSE : TRUE;
        }
    }

    function alpha_numeric($str=""){
        if($str== ""){
            return FALSE;
        }
        else{
            return ( ! preg_match("/^([a-z0-9])+$/i", $str)) ? FALSE : TRUE;
        }
    }

    function numeric($str=""){
        if($str== ""){
            return FALSE;
        }
        else{
            return (bool)preg_match( '/^[\-+]?[0-9]*\.?[0-9]+$/', $str);
        }
    }

    function decimal($str=""){
        if($str== ""){
            return FALSE;
        }
        else{
            return (bool) preg_match('/^[\-+]?[0-9]+\.[0-9]+$/', $str);
        }
    }

    function valid_email($str=""){
        if($str== ""){
            return FALSE;
        }
        else{
            return ( ! preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $str)) ? FALSE : TRUE;
        }
    }
    
    
}
?>
