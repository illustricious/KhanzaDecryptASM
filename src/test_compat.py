import subprocess, pathlib
p=pathlib.Path(__file__).parent
lib=r'C:\Users\PC\Documents\SIMRS Khanza Update 2026\lib'
cp=str(p)+';'+lib+r'\KhanzaSecurity16bit.jar;'+lib+r'\commons-codec-1.12.jar'
def oracle(mode,value,encoding):
 return subprocess.check_output(['java','-Dfile.encoding='+encoding,'-cp',cp,'Oracle',mode,value]).decode(encoding)
def app(choice,value,utf8=False):
 command=[str(p/'khanza-decrypt.exe')]+(['--utf8'] if utf8 else [])
 result=subprocess.run(command,input=(choice+'\r\n'+value+'\r\n0\r\n').encode('utf-16le'),stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=10)
 assert result.returncode==0, result.returncode
 return result.stdout.decode('utf-16le')
for encoding,utf8,values in [('windows-1252',False,['','dummy-password','1234567890123456','café']),('UTF-8',True,['dummy-password','tes café 漢字'])]:
 for value in values:
  encrypted=oracle('e',value,encoding)
  output=app('1',value,utf8)
  assert encrypted in output, (encoding,repr(value),repr(output),encrypted)
  assert oracle('d',encrypted,encoding)==value
  assert '\n'+value+'\n' in app('2',encrypted,utf8), (encoding,repr(value))
  print('PASS',encoding,repr(value))
assert 'tidak valid' in app('2','invalid')
assert 'tidak valid' in app('9','ignored')
print('PASS invalid input')
