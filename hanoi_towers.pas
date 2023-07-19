program hanoi_towers;

procedure stack(source, target, interm, n: integer);
begin
    if n = 0 then
        exit;
    stack(source, interm, target, n-1);
    writeln(n, ': ',  source, ' -> ', target);
    stack(interm, target, source, n-1);
end;

var
    n, code: integer;

begin
    if ParamCount < 1 then
    begin
        writeln(ErrOutput, 'Enter a parameter');
        halt(1);
    end;
    val(ParamStr(1), n, code);
    if (code <> 0) or (n < 1) then
    begin
        writeln(ErrOutput, 'Wrong parameter');
        halt(1);
    end;
    stack(1, 3, 2, n);
end.
