const {spawnSync}=require('child_process'); const path=require('path');
const p=__dirname, lib='C:\\Users\\PC\\Documents\\SIMRS Khanza Update 2026\\lib';
const cp=[p,path.join(lib,'KhanzaSecurity16bit.jar'),path.join(lib,'commons-codec-1.12.jar')].join(';');
function oracle(mode,value,encoding){let r=spawnSync('java',['-Dfile.encoding='+encoding,'-cp',cp,'Oracle',mode,Buffer.from(value,'utf8').toString('base64')]); if(r.status!==0) throw Error(r.stderr); return r.stdout.toString('utf8');}
function app(choice,value,utf8){let r=spawnSync(path.join(p,'khanza-decrypt.exe'),utf8?['--utf8']:[],{input:Buffer.from(choice+'\r\n'+value+'\r\n0\r\n','utf16le'),timeout:10000}); if(r.status!==0) throw Error('app failed '+r.status+' '+r.error); return r.stdout.toString('utf16le').replace(/\r\n/g,'\n');}
for(const [encoding,utf8,values] of [['windows-1252',false,['','dummy-password','1234567890123456','café']],['UTF-8',true,['dummy-password','tes café 漢字']]]) for(const value of values){let encrypted=oracle('e',value,encoding); if(!app('1',value,utf8).includes(encrypted)) throw Error('encrypt mismatch '+value); if(oracle('d',encrypted,encoding)!==value || !app('2',encrypted,utf8).includes('\n'+value+'\n')) throw Error('decrypt mismatch '+value); console.log('PASS',encoding,JSON.stringify(value));}
if(!app('2','invalid',false).includes('tidak valid') || !app('9','ignored',false).includes('tidak valid')) throw Error('invalid input'); console.log('PASS invalid input');


