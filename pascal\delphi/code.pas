function code(text: string; password: string; decode: boolean):string;
var
    i, sign: integer;
begin
    if length(password) = 0 then exit;
    if decode then sign := -1 else sign := 1;
    for i := 1 to length(text) do
    begin
        result := result + chr(ord(text[i]) + sign * ord(password[i mod length(password) + 1]));
    end;
end;
