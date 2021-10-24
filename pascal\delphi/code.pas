function Code(text: string; password: string; decode: boolean):string;
var
    i, sign: integer;
begin
    if length(password) = 0 then Exit;
    if decode then sign := -1 else sign := 1;
    for i := 1 to Length(text) do
    begin
        result :=result+ chr(ord(text[i]) + sign * ord(password[i mod length(password) + 1]));
    end;
end;
