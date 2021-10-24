function code($text, $password, $decode) {
    $passlen = strlen($password);
    if ($passlen == 0) exit;
    $sign = ($decode) ? -1 : 1;
    $result = '';
    for ($i = 1; $i < strlen($text) + 1; $i++){
        $result = $result.chr(ord(substr($text, ($i - 1), 1)) + $sign * ord(substr($password, (($i % $passlen + 1) - 1), 1)));
    }
    return $result;
}
