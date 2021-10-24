function code(text, key, decode) {
    var sign;
    var result = "";
    if (key.length == 0) return;
    (decode) ? sign = -1 : sign = 1;
    for (let i = 0; i < text.length; i++) {
        result = result + String.fromCharCode(text[i].charCodeAt(0) + sign * key[i % key.length].charCodeAt(0));
    }
    return result;
}
