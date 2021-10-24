function code($text, $password, $decode) {
    $passlen = iconv_strlen($password, 'UTF-8');
    if ($passlen == 0) exit;
    $sign = ($decode) ? -1 : 1;
    $result = '';
    for ($i = 1; $i < iconv_strlen($text, 'UTF-8') + 1; $i++){
        $result = $result.chr(ord(mb_substr($text, ($i - 1), 1, 'UTF-8')) + $sign * ord(mb_substr($password, (($i % $passlen + 1) - 1), 1, 'UTF-8')));
    }
    return $result; 
}
