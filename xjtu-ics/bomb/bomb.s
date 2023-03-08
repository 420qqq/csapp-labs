
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 ca 3e 00 00    	pushq  0x3eca(%rip)        # 4ef0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 cb 3e 00 00 	bnd jmpq *0x3ecb(%rip)        # 4ef8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	pushq  $0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	pushq  $0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	pushq  $0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	pushq  $0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	pushq  $0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	pushq  $0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	pushq  $0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	pushq  $0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	pushq  $0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	pushq  $0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	pushq  $0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	pushq  $0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmpq 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	pushq  $0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	pushq  $0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	pushq  $0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	pushq  $0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	pushq  $0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	pushq  $0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	pushq  $0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	pushq  $0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	pushq  $0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	pushq  $0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	pushq  $0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    11cf:	90                   	nop
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	68 1a 00 00 00       	pushq  $0x1a
    11d9:	f2 e9 41 fe ff ff    	bnd jmpq 1020 <_init+0x20>
    11df:	90                   	nop

Disassembly of section .plt.got:

00000000000011e0 <__cxa_finalize@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 3e 00 00 	bnd jmpq *0x3e0d(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    11eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000011f0 <getenv@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 3d 00 00 	bnd jmpq *0x3d05(%rip)        # 4f00 <getenv@GLIBC_2.2.5>
    11fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001200 <__errno_location@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 3c 00 00 	bnd jmpq *0x3cfd(%rip)        # 4f08 <__errno_location@GLIBC_2.2.5>
    120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001210 <strcpy@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 3c 00 00 	bnd jmpq *0x3cf5(%rip)        # 4f10 <strcpy@GLIBC_2.2.5>
    121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001220 <puts@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 3c 00 00 	bnd jmpq *0x3ced(%rip)        # 4f18 <puts@GLIBC_2.2.5>
    122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001230 <write@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 3c 00 00 	bnd jmpq *0x3ce5(%rip)        # 4f20 <write@GLIBC_2.2.5>
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <strlen@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 3c 00 00 	bnd jmpq *0x3cdd(%rip)        # 4f28 <strlen@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001250 <__stack_chk_fail@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 3c 00 00 	bnd jmpq *0x3cd5(%rip)        # 4f30 <__stack_chk_fail@GLIBC_2.4>
    125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001260 <alarm@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 3c 00 00 	bnd jmpq *0x3ccd(%rip)        # 4f38 <alarm@GLIBC_2.2.5>
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001270 <close@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 3c 00 00 	bnd jmpq *0x3cc5(%rip)        # 4f40 <close@GLIBC_2.2.5>
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001280 <read@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 3c 00 00 	bnd jmpq *0x3cbd(%rip)        # 4f48 <read@GLIBC_2.2.5>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <fgets@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 3c 00 00 	bnd jmpq *0x3cb5(%rip)        # 4f50 <fgets@GLIBC_2.2.5>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <strcmp@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 3c 00 00 	bnd jmpq *0x3cad(%rip)        # 4f58 <strcmp@GLIBC_2.2.5>
    12ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012b0 <signal@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 3c 00 00 	bnd jmpq *0x3ca5(%rip)        # 4f60 <signal@GLIBC_2.2.5>
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <gethostbyname@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 3c 00 00 	bnd jmpq *0x3c9d(%rip)        # 4f68 <gethostbyname@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012d0 <__memmove_chk@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 3c 00 00 	bnd jmpq *0x3c95(%rip)        # 4f70 <__memmove_chk@GLIBC_2.3.4>
    12db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012e0 <strtol@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 3c 00 00 	bnd jmpq *0x3c8d(%rip)        # 4f78 <strtol@GLIBC_2.2.5>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <fflush@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 3c 00 00 	bnd jmpq *0x3c85(%rip)        # 4f80 <fflush@GLIBC_2.2.5>
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__isoc99_sscanf@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 3c 00 00 	bnd jmpq *0x3c7d(%rip)        # 4f88 <__isoc99_sscanf@GLIBC_2.7>
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001310 <__printf_chk@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 3c 00 00 	bnd jmpq *0x3c75(%rip)        # 4f90 <__printf_chk@GLIBC_2.3.4>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <fopen@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 3c 00 00 	bnd jmpq *0x3c6d(%rip)        # 4f98 <fopen@GLIBC_2.2.5>
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001330 <exit@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 3c 00 00 	bnd jmpq *0x3c65(%rip)        # 4fa0 <exit@GLIBC_2.2.5>
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001340 <connect@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 3c 00 00 	bnd jmpq *0x3c5d(%rip)        # 4fa8 <connect@GLIBC_2.2.5>
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <__fprintf_chk@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 3c 00 00 	bnd jmpq *0x3c55(%rip)        # 4fb0 <__fprintf_chk@GLIBC_2.3.4>
    135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001360 <sleep@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 3c 00 00 	bnd jmpq *0x3c4d(%rip)        # 4fb8 <sleep@GLIBC_2.2.5>
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <__ctype_b_loc@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 3c 00 00 	bnd jmpq *0x3c45(%rip)        # 4fc0 <__ctype_b_loc@GLIBC_2.3>
    137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001380 <__sprintf_chk@plt>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	f2 ff 25 3d 3c 00 00 	bnd jmpq *0x3c3d(%rip)        # 4fc8 <__sprintf_chk@GLIBC_2.3.4>
    138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001390 <socket@plt>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	f2 ff 25 35 3c 00 00 	bnd jmpq *0x3c35(%rip)        # 4fd0 <socket@GLIBC_2.2.5>
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000013a0 <_start>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	31 ed                	xor    %ebp,%ebp
    13a6:	49 89 d1             	mov    %rdx,%r9
    13a9:	5e                   	pop    %rsi
    13aa:	48 89 e2             	mov    %rsp,%rdx
    13ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    13b1:	50                   	push   %rax
    13b2:	54                   	push   %rsp
    13b3:	45 31 c0             	xor    %r8d,%r8d
    13b6:	31 c9                	xor    %ecx,%ecx
    13b8:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1489 <main>
    13bf:	ff 15 13 3c 00 00    	callq  *0x3c13(%rip)        # 4fd8 <__libc_start_main@GLIBC_2.34>
    13c5:	f4                   	hlt    
    13c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13cd:	00 00 00 

00000000000013d0 <deregister_tm_clones>:
    13d0:	48 8d 3d 89 42 00 00 	lea    0x4289(%rip),%rdi        # 5660 <stdout@@GLIBC_2.2.5>
    13d7:	48 8d 05 82 42 00 00 	lea    0x4282(%rip),%rax        # 5660 <stdout@@GLIBC_2.2.5>
    13de:	48 39 f8             	cmp    %rdi,%rax
    13e1:	74 15                	je     13f8 <deregister_tm_clones+0x28>
    13e3:	48 8b 05 f6 3b 00 00 	mov    0x3bf6(%rip),%rax        # 4fe0 <_ITM_deregisterTMCloneTable@Base>
    13ea:	48 85 c0             	test   %rax,%rax
    13ed:	74 09                	je     13f8 <deregister_tm_clones+0x28>
    13ef:	ff e0                	jmpq   *%rax
    13f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13f8:	c3                   	retq   
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <register_tm_clones>:
    1400:	48 8d 3d 59 42 00 00 	lea    0x4259(%rip),%rdi        # 5660 <stdout@@GLIBC_2.2.5>
    1407:	48 8d 35 52 42 00 00 	lea    0x4252(%rip),%rsi        # 5660 <stdout@@GLIBC_2.2.5>
    140e:	48 29 fe             	sub    %rdi,%rsi
    1411:	48 89 f0             	mov    %rsi,%rax
    1414:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1418:	48 c1 f8 03          	sar    $0x3,%rax
    141c:	48 01 c6             	add    %rax,%rsi
    141f:	48 d1 fe             	sar    %rsi
    1422:	74 14                	je     1438 <register_tm_clones+0x38>
    1424:	48 8b 05 c5 3b 00 00 	mov    0x3bc5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable@Base>
    142b:	48 85 c0             	test   %rax,%rax
    142e:	74 08                	je     1438 <register_tm_clones+0x38>
    1430:	ff e0                	jmpq   *%rax
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1438:	c3                   	retq   
    1439:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001440 <__do_global_dtors_aux>:
    1440:	f3 0f 1e fa          	endbr64 
    1444:	80 3d 3d 42 00 00 00 	cmpb   $0x0,0x423d(%rip)        # 5688 <completed.0>
    144b:	75 2b                	jne    1478 <__do_global_dtors_aux+0x38>
    144d:	55                   	push   %rbp
    144e:	48 83 3d a2 3b 00 00 	cmpq   $0x0,0x3ba2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1455:	00 
    1456:	48 89 e5             	mov    %rsp,%rbp
    1459:	74 0c                	je     1467 <__do_global_dtors_aux+0x27>
    145b:	48 8b 3d a6 3b 00 00 	mov    0x3ba6(%rip),%rdi        # 5008 <__dso_handle>
    1462:	e8 79 fd ff ff       	callq  11e0 <__cxa_finalize@plt>
    1467:	e8 64 ff ff ff       	callq  13d0 <deregister_tm_clones>
    146c:	c6 05 15 42 00 00 01 	movb   $0x1,0x4215(%rip)        # 5688 <completed.0>
    1473:	5d                   	pop    %rbp
    1474:	c3                   	retq   
    1475:	0f 1f 00             	nopl   (%rax)
    1478:	c3                   	retq   
    1479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001480 <frame_dummy>:
    1480:	f3 0f 1e fa          	endbr64 
    1484:	e9 77 ff ff ff       	jmpq   1400 <register_tm_clones>

0000000000001489 <main>:
    1489:	f3 0f 1e fa          	endbr64 
    148d:	53                   	push   %rbx
    148e:	83 ff 01             	cmp    $0x1,%edi
    1491:	0f 84 bc 00 00 00    	je     1553 <main+0xca>
    1497:	48 89 f3             	mov    %rsi,%rbx
    149a:	83 ff 02             	cmp    $0x2,%edi
    149d:	0f 85 e5 00 00 00    	jne    1588 <main+0xff>
    14a3:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    14a7:	48 8d 35 56 1b 00 00 	lea    0x1b56(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    14ae:	e8 6d fe ff ff       	callq  1320 <fopen@plt>
    14b3:	48 89 05 d6 41 00 00 	mov    %rax,0x41d6(%rip)        # 5690 <infile>
    14ba:	48 85 c0             	test   %rax,%rax
    14bd:	0f 84 a3 00 00 00    	je     1566 <main+0xdd>
    14c3:	e8 cb 06 00 00       	callq  1b93 <initialize_bomb>
    14c8:	48 8d 3d 71 1b 00 00 	lea    0x1b71(%rip),%rdi        # 3040 <_IO_stdin_used+0x40>
    14cf:	e8 4c fd ff ff       	callq  1220 <puts@plt>
    14d4:	48 8d 3d a5 1b 00 00 	lea    0x1ba5(%rip),%rdi        # 3080 <_IO_stdin_used+0x80>
    14db:	e8 40 fd ff ff       	callq  1220 <puts@plt>
    14e0:	e8 ff 07 00 00       	callq  1ce4 <read_line>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 be 00 00 00       	callq  15ab <phase_1>
    14ed:	e8 46 09 00 00       	callq  1e38 <phase_defused>
    14f2:	e8 ed 07 00 00       	callq  1ce4 <read_line>
    14f7:	48 89 c7             	mov    %rax,%rdi
    14fa:	e8 d0 00 00 00       	callq  15cf <phase_2>
    14ff:	e8 34 09 00 00       	callq  1e38 <phase_defused>
    1504:	e8 db 07 00 00       	callq  1ce4 <read_line>
    1509:	48 89 c7             	mov    %rax,%rdi
    150c:	e8 30 01 00 00       	callq  1641 <phase_3>
    1511:	e8 22 09 00 00       	callq  1e38 <phase_defused>
    1516:	e8 c9 07 00 00       	callq  1ce4 <read_line>
    151b:	48 89 c7             	mov    %rax,%rdi
    151e:	e8 da 02 00 00       	callq  17fd <phase_4>
    1523:	e8 10 09 00 00       	callq  1e38 <phase_defused>
    1528:	e8 b7 07 00 00       	callq  1ce4 <read_line>
    152d:	48 89 c7             	mov    %rax,%rdi
    1530:	e8 3d 03 00 00       	callq  1872 <phase_5>
    1535:	e8 fe 08 00 00       	callq  1e38 <phase_defused>
    153a:	e8 a5 07 00 00       	callq  1ce4 <read_line>
    153f:	48 89 c7             	mov    %rax,%rdi
    1542:	e8 77 03 00 00       	callq  18be <phase_6>
    1547:	e8 ec 08 00 00       	callq  1e38 <phase_defused>
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	5b                   	pop    %rbx
    1552:	c3                   	retq   
    1553:	48 8b 05 16 41 00 00 	mov    0x4116(%rip),%rax        # 5670 <stdin@@GLIBC_2.2.5>
    155a:	48 89 05 2f 41 00 00 	mov    %rax,0x412f(%rip)        # 5690 <infile>
    1561:	e9 5d ff ff ff       	jmpq   14c3 <main+0x3a>
    1566:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    156a:	48 8b 13             	mov    (%rbx),%rdx
    156d:	48 8d 35 92 1a 00 00 	lea    0x1a92(%rip),%rsi        # 3006 <_IO_stdin_used+0x6>
    1574:	bf 01 00 00 00       	mov    $0x1,%edi
    1579:	e8 92 fd ff ff       	callq  1310 <__printf_chk@plt>
    157e:	bf 08 00 00 00       	mov    $0x8,%edi
    1583:	e8 a8 fd ff ff       	callq  1330 <exit@plt>
    1588:	48 8b 16             	mov    (%rsi),%rdx
    158b:	48 8d 35 91 1a 00 00 	lea    0x1a91(%rip),%rsi        # 3023 <_IO_stdin_used+0x23>
    1592:	bf 01 00 00 00       	mov    $0x1,%edi
    1597:	b8 00 00 00 00       	mov    $0x0,%eax
    159c:	e8 6f fd ff ff       	callq  1310 <__printf_chk@plt>
    15a1:	bf 08 00 00 00       	mov    $0x8,%edi
    15a6:	e8 85 fd ff ff       	callq  1330 <exit@plt>

00000000000015ab <phase_1>:
    15ab:	f3 0f 1e fa          	endbr64 
    15af:	48 83 ec 08          	sub    $0x8,%rsp
    15b3:	48 8d 35 f6 1a 00 00 	lea    0x1af6(%rip),%rsi        # 30b0 <_IO_stdin_used+0xb0>
    15ba:	e8 74 05 00 00       	callq  1b33 <strings_not_equal>
    15bf:	85 c0                	test   %eax,%eax
    15c1:	75 05                	jne    15c8 <phase_1+0x1d>
    15c3:	48 83 c4 08          	add    $0x8,%rsp
    15c7:	c3                   	retq   
    15c8:	e8 7a 06 00 00       	callq  1c47 <explode_bomb>
    15cd:	eb f4                	jmp    15c3 <phase_1+0x18>

00000000000015cf <phase_2>:
    15cf:	f3 0f 1e fa          	endbr64 
    15d3:	55                   	push   %rbp
    15d4:	53                   	push   %rbx
    15d5:	48 83 ec 28          	sub    $0x28,%rsp
    15d9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    15e0:	00 00 
    15e2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    15e7:	31 c0                	xor    %eax,%eax
    15e9:	48 89 e6             	mov    %rsp,%rsi
    15ec:	e8 ae 06 00 00       	callq  1c9f <read_six_numbers>
    15f1:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    15f5:	78 0a                	js     1601 <phase_2+0x32>
    15f7:	48 89 e5             	mov    %rsp,%rbp
    15fa:	bb 01 00 00 00       	mov    $0x1,%ebx
    15ff:	eb 13                	jmp    1614 <phase_2+0x45>
    1601:	e8 41 06 00 00       	callq  1c47 <explode_bomb>
    1606:	eb ef                	jmp    15f7 <phase_2+0x28>
    1608:	83 c3 01             	add    $0x1,%ebx
    160b:	48 83 c5 04          	add    $0x4,%rbp
    160f:	83 fb 06             	cmp    $0x6,%ebx
    1612:	74 11                	je     1625 <phase_2+0x56>
    1614:	89 d8                	mov    %ebx,%eax
    1616:	03 45 00             	add    0x0(%rbp),%eax
    1619:	39 45 04             	cmp    %eax,0x4(%rbp)
    161c:	74 ea                	je     1608 <phase_2+0x39>
    161e:	e8 24 06 00 00       	callq  1c47 <explode_bomb>
    1623:	eb e3                	jmp    1608 <phase_2+0x39>
    1625:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    162a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1631:	00 00 
    1633:	75 07                	jne    163c <phase_2+0x6d>
    1635:	48 83 c4 28          	add    $0x28,%rsp
    1639:	5b                   	pop    %rbx
    163a:	5d                   	pop    %rbp
    163b:	c3                   	retq   
    163c:	e8 0f fc ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001641 <phase_3>:
    1641:	f3 0f 1e fa          	endbr64 
    1645:	48 83 ec 28          	sub    $0x28,%rsp
    1649:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1650:	00 00 
    1652:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    1657:	31 c0                	xor    %eax,%eax
    1659:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    165e:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    1663:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    1668:	48 8d 35 8f 1a 00 00 	lea    0x1a8f(%rip),%rsi        # 30fe <_IO_stdin_used+0xfe>
    166f:	e8 8c fc ff ff       	callq  1300 <__isoc99_sscanf@plt>
    1674:	83 f8 02             	cmp    $0x2,%eax
    1677:	7e 20                	jle    1699 <phase_3+0x58>
    1679:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    167e:	0f 87 0d 01 00 00    	ja     1791 <phase_3+0x150>
    1684:	8b 44 24 10          	mov    0x10(%rsp),%eax
    1688:	48 8d 15 91 1a 00 00 	lea    0x1a91(%rip),%rdx        # 3120 <_IO_stdin_used+0x120>
    168f:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1693:	48 01 d0             	add    %rdx,%rax
    1696:	3e ff e0             	notrack jmpq *%rax
    1699:	e8 a9 05 00 00       	callq  1c47 <explode_bomb>
    169e:	eb d9                	jmp    1679 <phase_3+0x38>
    16a0:	b8 65 00 00 00       	mov    $0x65,%eax
    16a5:	81 7c 24 14 a4 02 00 	cmpl   $0x2a4,0x14(%rsp)
    16ac:	00 
    16ad:	0f 84 e8 00 00 00    	je     179b <phase_3+0x15a>
    16b3:	e8 8f 05 00 00       	callq  1c47 <explode_bomb>
    16b8:	b8 65 00 00 00       	mov    $0x65,%eax
    16bd:	e9 d9 00 00 00       	jmpq   179b <phase_3+0x15a>
    16c2:	b8 61 00 00 00       	mov    $0x61,%eax
    16c7:	81 7c 24 14 17 02 00 	cmpl   $0x217,0x14(%rsp)
    16ce:	00 
    16cf:	0f 84 c6 00 00 00    	je     179b <phase_3+0x15a>
    16d5:	e8 6d 05 00 00       	callq  1c47 <explode_bomb>
    16da:	b8 61 00 00 00       	mov    $0x61,%eax
    16df:	e9 b7 00 00 00       	jmpq   179b <phase_3+0x15a>
    16e4:	b8 63 00 00 00       	mov    $0x63,%eax
    16e9:	81 7c 24 14 41 03 00 	cmpl   $0x341,0x14(%rsp)
    16f0:	00 
    16f1:	0f 84 a4 00 00 00    	je     179b <phase_3+0x15a>
    16f7:	e8 4b 05 00 00       	callq  1c47 <explode_bomb>
    16fc:	b8 63 00 00 00       	mov    $0x63,%eax
    1701:	e9 95 00 00 00       	jmpq   179b <phase_3+0x15a>
    1706:	b8 6d 00 00 00       	mov    $0x6d,%eax
    170b:	81 7c 24 14 59 02 00 	cmpl   $0x259,0x14(%rsp)
    1712:	00 
    1713:	0f 84 82 00 00 00    	je     179b <phase_3+0x15a>
    1719:	e8 29 05 00 00       	callq  1c47 <explode_bomb>
    171e:	b8 6d 00 00 00       	mov    $0x6d,%eax
    1723:	eb 76                	jmp    179b <phase_3+0x15a>
    1725:	b8 7a 00 00 00       	mov    $0x7a,%eax
    172a:	81 7c 24 14 f4 00 00 	cmpl   $0xf4,0x14(%rsp)
    1731:	00 
    1732:	74 67                	je     179b <phase_3+0x15a>
    1734:	e8 0e 05 00 00       	callq  1c47 <explode_bomb>
    1739:	b8 7a 00 00 00       	mov    $0x7a,%eax
    173e:	eb 5b                	jmp    179b <phase_3+0x15a>
    1740:	b8 65 00 00 00       	mov    $0x65,%eax
    1745:	81 7c 24 14 3e 03 00 	cmpl   $0x33e,0x14(%rsp)
    174c:	00 
    174d:	74 4c                	je     179b <phase_3+0x15a>
    174f:	e8 f3 04 00 00       	callq  1c47 <explode_bomb>
    1754:	b8 65 00 00 00       	mov    $0x65,%eax
    1759:	eb 40                	jmp    179b <phase_3+0x15a>
    175b:	b8 6c 00 00 00       	mov    $0x6c,%eax
    1760:	81 7c 24 14 53 01 00 	cmpl   $0x153,0x14(%rsp)
    1767:	00 
    1768:	74 31                	je     179b <phase_3+0x15a>
    176a:	e8 d8 04 00 00       	callq  1c47 <explode_bomb>
    176f:	b8 6c 00 00 00       	mov    $0x6c,%eax
    1774:	eb 25                	jmp    179b <phase_3+0x15a>
    1776:	b8 65 00 00 00       	mov    $0x65,%eax
    177b:	81 7c 24 14 8d 01 00 	cmpl   $0x18d,0x14(%rsp)
    1782:	00 
    1783:	74 16                	je     179b <phase_3+0x15a>
    1785:	e8 bd 04 00 00       	callq  1c47 <explode_bomb>
    178a:	b8 65 00 00 00       	mov    $0x65,%eax
    178f:	eb 0a                	jmp    179b <phase_3+0x15a>
    1791:	e8 b1 04 00 00       	callq  1c47 <explode_bomb>
    1796:	b8 75 00 00 00       	mov    $0x75,%eax
    179b:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    179f:	75 15                	jne    17b6 <phase_3+0x175>
    17a1:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    17a6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    17ad:	00 00 
    17af:	75 0c                	jne    17bd <phase_3+0x17c>
    17b1:	48 83 c4 28          	add    $0x28,%rsp
    17b5:	c3                   	retq   
    17b6:	e8 8c 04 00 00       	callq  1c47 <explode_bomb>
    17bb:	eb e4                	jmp    17a1 <phase_3+0x160>
    17bd:	e8 8e fa ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000017c2 <func4>:
    17c2:	f3 0f 1e fa          	endbr64 
    17c6:	b8 00 00 00 00       	mov    $0x0,%eax
    17cb:	85 ff                	test   %edi,%edi
    17cd:	7e 2d                	jle    17fc <func4+0x3a>
    17cf:	41 54                	push   %r12
    17d1:	55                   	push   %rbp
    17d2:	53                   	push   %rbx
    17d3:	89 fb                	mov    %edi,%ebx
    17d5:	89 f5                	mov    %esi,%ebp
    17d7:	89 f0                	mov    %esi,%eax
    17d9:	83 ff 01             	cmp    $0x1,%edi
    17dc:	74 19                	je     17f7 <func4+0x35>
    17de:	8d 7f ff             	lea    -0x1(%rdi),%edi
    17e1:	e8 dc ff ff ff       	callq  17c2 <func4>
    17e6:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
    17ea:	8d 7b fe             	lea    -0x2(%rbx),%edi
    17ed:	89 ee                	mov    %ebp,%esi
    17ef:	e8 ce ff ff ff       	callq  17c2 <func4>
    17f4:	44 01 e0             	add    %r12d,%eax
    17f7:	5b                   	pop    %rbx
    17f8:	5d                   	pop    %rbp
    17f9:	41 5c                	pop    %r12
    17fb:	c3                   	retq   
    17fc:	c3                   	retq   

00000000000017fd <phase_4>:
    17fd:	f3 0f 1e fa          	endbr64 
    1801:	48 83 ec 18          	sub    $0x18,%rsp
    1805:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    180c:	00 00 
    180e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1813:	31 c0                	xor    %eax,%eax
    1815:	48 89 e1             	mov    %rsp,%rcx
    1818:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
    181d:	48 8d 35 2c 1b 00 00 	lea    0x1b2c(%rip),%rsi        # 3350 <array.0+0x210>
    1824:	e8 d7 fa ff ff       	callq  1300 <__isoc99_sscanf@plt>
    1829:	83 f8 02             	cmp    $0x2,%eax
    182c:	75 0b                	jne    1839 <phase_4+0x3c>
    182e:	8b 04 24             	mov    (%rsp),%eax
    1831:	83 e8 02             	sub    $0x2,%eax
    1834:	83 f8 02             	cmp    $0x2,%eax
    1837:	76 05                	jbe    183e <phase_4+0x41>
    1839:	e8 09 04 00 00       	callq  1c47 <explode_bomb>
    183e:	8b 34 24             	mov    (%rsp),%esi
    1841:	bf 07 00 00 00       	mov    $0x7,%edi
    1846:	e8 77 ff ff ff       	callq  17c2 <func4>
    184b:	39 44 24 04          	cmp    %eax,0x4(%rsp)
    184f:	75 15                	jne    1866 <phase_4+0x69>
    1851:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1856:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    185d:	00 00 
    185f:	75 0c                	jne    186d <phase_4+0x70>
    1861:	48 83 c4 18          	add    $0x18,%rsp
    1865:	c3                   	retq   
    1866:	e8 dc 03 00 00       	callq  1c47 <explode_bomb>
    186b:	eb e4                	jmp    1851 <phase_4+0x54>
    186d:	e8 de f9 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001872 <phase_5>:
    1872:	f3 0f 1e fa          	endbr64 
    1876:	53                   	push   %rbx
    1877:	48 89 fb             	mov    %rdi,%rbx
    187a:	e8 93 02 00 00       	callq  1b12 <string_length>
    187f:	83 f8 06             	cmp    $0x6,%eax
    1882:	75 2c                	jne    18b0 <phase_5+0x3e>
    1884:	48 89 d8             	mov    %rbx,%rax
    1887:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    188b:	b9 00 00 00 00       	mov    $0x0,%ecx
    1890:	48 8d 35 a9 18 00 00 	lea    0x18a9(%rip),%rsi        # 3140 <array.0>
    1897:	0f b6 10             	movzbl (%rax),%edx
    189a:	83 e2 0f             	and    $0xf,%edx
    189d:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    18a0:	48 83 c0 01          	add    $0x1,%rax
    18a4:	48 39 f8             	cmp    %rdi,%rax
    18a7:	75 ee                	jne    1897 <phase_5+0x25>
    18a9:	83 f9 3f             	cmp    $0x3f,%ecx
    18ac:	75 09                	jne    18b7 <phase_5+0x45>
    18ae:	5b                   	pop    %rbx
    18af:	c3                   	retq   
    18b0:	e8 92 03 00 00       	callq  1c47 <explode_bomb>
    18b5:	eb cd                	jmp    1884 <phase_5+0x12>
    18b7:	e8 8b 03 00 00       	callq  1c47 <explode_bomb>
    18bc:	eb f0                	jmp    18ae <phase_5+0x3c>

00000000000018be <phase_6>:
    18be:	f3 0f 1e fa          	endbr64 
    18c2:	41 56                	push   %r14
    18c4:	41 55                	push   %r13
    18c6:	41 54                	push   %r12
    18c8:	55                   	push   %rbp
    18c9:	53                   	push   %rbx
    18ca:	48 83 ec 60          	sub    $0x60,%rsp
    18ce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18d5:	00 00 
    18d7:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    18dc:	31 c0                	xor    %eax,%eax
    18de:	49 89 e5             	mov    %rsp,%r13
    18e1:	4c 89 ee             	mov    %r13,%rsi
    18e4:	e8 b6 03 00 00       	callq  1c9f <read_six_numbers>
    18e9:	41 be 01 00 00 00    	mov    $0x1,%r14d
    18ef:	49 89 e4             	mov    %rsp,%r12
    18f2:	eb 28                	jmp    191c <phase_6+0x5e>
    18f4:	e8 4e 03 00 00       	callq  1c47 <explode_bomb>
    18f9:	eb 30                	jmp    192b <phase_6+0x6d>
    18fb:	48 83 c3 01          	add    $0x1,%rbx
    18ff:	83 fb 05             	cmp    $0x5,%ebx
    1902:	7f 10                	jg     1914 <phase_6+0x56>
    1904:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    1908:	39 45 00             	cmp    %eax,0x0(%rbp)
    190b:	75 ee                	jne    18fb <phase_6+0x3d>
    190d:	e8 35 03 00 00       	callq  1c47 <explode_bomb>
    1912:	eb e7                	jmp    18fb <phase_6+0x3d>
    1914:	49 83 c6 01          	add    $0x1,%r14
    1918:	49 83 c5 04          	add    $0x4,%r13
    191c:	4c 89 ed             	mov    %r13,%rbp
    191f:	41 8b 45 00          	mov    0x0(%r13),%eax
    1923:	83 e8 01             	sub    $0x1,%eax
    1926:	83 f8 05             	cmp    $0x5,%eax
    1929:	77 c9                	ja     18f4 <phase_6+0x36>
    192b:	41 83 fe 05          	cmp    $0x5,%r14d
    192f:	7f 05                	jg     1936 <phase_6+0x78>
    1931:	4c 89 f3             	mov    %r14,%rbx
    1934:	eb ce                	jmp    1904 <phase_6+0x46>
    1936:	be 00 00 00 00       	mov    $0x0,%esi
    193b:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    193e:	b8 01 00 00 00       	mov    $0x1,%eax
    1943:	48 8d 15 c6 38 00 00 	lea    0x38c6(%rip),%rdx        # 5210 <node1>
    194a:	83 f9 01             	cmp    $0x1,%ecx
    194d:	7e 0b                	jle    195a <phase_6+0x9c>
    194f:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    1953:	83 c0 01             	add    $0x1,%eax
    1956:	39 c8                	cmp    %ecx,%eax
    1958:	75 f5                	jne    194f <phase_6+0x91>
    195a:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    195f:	48 83 c6 01          	add    $0x1,%rsi
    1963:	48 83 fe 06          	cmp    $0x6,%rsi
    1967:	75 d2                	jne    193b <phase_6+0x7d>
    1969:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    196e:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1973:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1977:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    197c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1980:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1985:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1989:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    198e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1992:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1997:	48 89 42 08          	mov    %rax,0x8(%rdx)
    199b:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    19a2:	00 
    19a3:	bd 05 00 00 00       	mov    $0x5,%ebp
    19a8:	eb 09                	jmp    19b3 <phase_6+0xf5>
    19aa:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    19ae:	83 ed 01             	sub    $0x1,%ebp
    19b1:	74 11                	je     19c4 <phase_6+0x106>
    19b3:	48 8b 43 08          	mov    0x8(%rbx),%rax
    19b7:	8b 00                	mov    (%rax),%eax
    19b9:	39 03                	cmp    %eax,(%rbx)
    19bb:	7e ed                	jle    19aa <phase_6+0xec>
    19bd:	e8 85 02 00 00       	callq  1c47 <explode_bomb>
    19c2:	eb e6                	jmp    19aa <phase_6+0xec>
    19c4:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    19c9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    19d0:	00 00 
    19d2:	75 0d                	jne    19e1 <phase_6+0x123>
    19d4:	48 83 c4 60          	add    $0x60,%rsp
    19d8:	5b                   	pop    %rbx
    19d9:	5d                   	pop    %rbp
    19da:	41 5c                	pop    %r12
    19dc:	41 5d                	pop    %r13
    19de:	41 5e                	pop    %r14
    19e0:	c3                   	retq   
    19e1:	e8 6a f8 ff ff       	callq  1250 <__stack_chk_fail@plt>

00000000000019e6 <fun7>:
    19e6:	f3 0f 1e fa          	endbr64 
    19ea:	48 85 ff             	test   %rdi,%rdi
    19ed:	74 32                	je     1a21 <fun7+0x3b>
    19ef:	48 83 ec 08          	sub    $0x8,%rsp
    19f3:	8b 17                	mov    (%rdi),%edx
    19f5:	39 f2                	cmp    %esi,%edx
    19f7:	7f 0c                	jg     1a05 <fun7+0x1f>
    19f9:	b8 00 00 00 00       	mov    $0x0,%eax
    19fe:	75 12                	jne    1a12 <fun7+0x2c>
    1a00:	48 83 c4 08          	add    $0x8,%rsp
    1a04:	c3                   	retq   
    1a05:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1a09:	e8 d8 ff ff ff       	callq  19e6 <fun7>
    1a0e:	01 c0                	add    %eax,%eax
    1a10:	eb ee                	jmp    1a00 <fun7+0x1a>
    1a12:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1a16:	e8 cb ff ff ff       	callq  19e6 <fun7>
    1a1b:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1a1f:	eb df                	jmp    1a00 <fun7+0x1a>
    1a21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1a26:	c3                   	retq   

0000000000001a27 <secret_phase>:
    1a27:	f3 0f 1e fa          	endbr64 
    1a2b:	53                   	push   %rbx
    1a2c:	e8 b3 02 00 00       	callq  1ce4 <read_line>
    1a31:	48 89 c7             	mov    %rax,%rdi
    1a34:	ba 0a 00 00 00       	mov    $0xa,%edx
    1a39:	be 00 00 00 00       	mov    $0x0,%esi
    1a3e:	e8 9d f8 ff ff       	callq  12e0 <strtol@plt>
    1a43:	89 c3                	mov    %eax,%ebx
    1a45:	83 e8 01             	sub    $0x1,%eax
    1a48:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1a4d:	77 26                	ja     1a75 <secret_phase+0x4e>
    1a4f:	89 de                	mov    %ebx,%esi
    1a51:	48 8d 3d d8 36 00 00 	lea    0x36d8(%rip),%rdi        # 5130 <n1>
    1a58:	e8 89 ff ff ff       	callq  19e6 <fun7>
    1a5d:	83 f8 07             	cmp    $0x7,%eax
    1a60:	75 1a                	jne    1a7c <secret_phase+0x55>
    1a62:	48 8d 3d 6f 16 00 00 	lea    0x166f(%rip),%rdi        # 30d8 <_IO_stdin_used+0xd8>
    1a69:	e8 b2 f7 ff ff       	callq  1220 <puts@plt>
    1a6e:	e8 c5 03 00 00       	callq  1e38 <phase_defused>
    1a73:	5b                   	pop    %rbx
    1a74:	c3                   	retq   
    1a75:	e8 cd 01 00 00       	callq  1c47 <explode_bomb>
    1a7a:	eb d3                	jmp    1a4f <secret_phase+0x28>
    1a7c:	e8 c6 01 00 00       	callq  1c47 <explode_bomb>
    1a81:	eb df                	jmp    1a62 <secret_phase+0x3b>

0000000000001a83 <sig_handler>:
    1a83:	f3 0f 1e fa          	endbr64 
    1a87:	50                   	push   %rax
    1a88:	58                   	pop    %rax
    1a89:	48 83 ec 08          	sub    $0x8,%rsp
    1a8d:	48 8d 3d ec 16 00 00 	lea    0x16ec(%rip),%rdi        # 3180 <array.0+0x40>
    1a94:	e8 87 f7 ff ff       	callq  1220 <puts@plt>
    1a99:	bf 03 00 00 00       	mov    $0x3,%edi
    1a9e:	e8 bd f8 ff ff       	callq  1360 <sleep@plt>
    1aa3:	48 8d 35 70 18 00 00 	lea    0x1870(%rip),%rsi        # 331a <array.0+0x1da>
    1aaa:	bf 01 00 00 00       	mov    $0x1,%edi
    1aaf:	b8 00 00 00 00       	mov    $0x0,%eax
    1ab4:	e8 57 f8 ff ff       	callq  1310 <__printf_chk@plt>
    1ab9:	48 8b 3d a0 3b 00 00 	mov    0x3ba0(%rip),%rdi        # 5660 <stdout@@GLIBC_2.2.5>
    1ac0:	e8 2b f8 ff ff       	callq  12f0 <fflush@plt>
    1ac5:	bf 01 00 00 00       	mov    $0x1,%edi
    1aca:	e8 91 f8 ff ff       	callq  1360 <sleep@plt>
    1acf:	48 8d 3d 4c 18 00 00 	lea    0x184c(%rip),%rdi        # 3322 <array.0+0x1e2>
    1ad6:	e8 45 f7 ff ff       	callq  1220 <puts@plt>
    1adb:	bf 10 00 00 00       	mov    $0x10,%edi
    1ae0:	e8 4b f8 ff ff       	callq  1330 <exit@plt>

0000000000001ae5 <invalid_phase>:
    1ae5:	f3 0f 1e fa          	endbr64 
    1ae9:	50                   	push   %rax
    1aea:	58                   	pop    %rax
    1aeb:	48 83 ec 08          	sub    $0x8,%rsp
    1aef:	48 89 fa             	mov    %rdi,%rdx
    1af2:	48 8d 35 31 18 00 00 	lea    0x1831(%rip),%rsi        # 332a <array.0+0x1ea>
    1af9:	bf 01 00 00 00       	mov    $0x1,%edi
    1afe:	b8 00 00 00 00       	mov    $0x0,%eax
    1b03:	e8 08 f8 ff ff       	callq  1310 <__printf_chk@plt>
    1b08:	bf 08 00 00 00       	mov    $0x8,%edi
    1b0d:	e8 1e f8 ff ff       	callq  1330 <exit@plt>

0000000000001b12 <string_length>:
    1b12:	f3 0f 1e fa          	endbr64 
    1b16:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b19:	74 12                	je     1b2d <string_length+0x1b>
    1b1b:	b8 00 00 00 00       	mov    $0x0,%eax
    1b20:	48 83 c7 01          	add    $0x1,%rdi
    1b24:	83 c0 01             	add    $0x1,%eax
    1b27:	80 3f 00             	cmpb   $0x0,(%rdi)
    1b2a:	75 f4                	jne    1b20 <string_length+0xe>
    1b2c:	c3                   	retq   
    1b2d:	b8 00 00 00 00       	mov    $0x0,%eax
    1b32:	c3                   	retq   

0000000000001b33 <strings_not_equal>:
    1b33:	f3 0f 1e fa          	endbr64 
    1b37:	41 54                	push   %r12
    1b39:	55                   	push   %rbp
    1b3a:	53                   	push   %rbx
    1b3b:	48 89 fb             	mov    %rdi,%rbx
    1b3e:	48 89 f5             	mov    %rsi,%rbp
    1b41:	e8 cc ff ff ff       	callq  1b12 <string_length>
    1b46:	41 89 c4             	mov    %eax,%r12d
    1b49:	48 89 ef             	mov    %rbp,%rdi
    1b4c:	e8 c1 ff ff ff       	callq  1b12 <string_length>
    1b51:	89 c2                	mov    %eax,%edx
    1b53:	b8 01 00 00 00       	mov    $0x1,%eax
    1b58:	41 39 d4             	cmp    %edx,%r12d
    1b5b:	75 31                	jne    1b8e <strings_not_equal+0x5b>
    1b5d:	0f b6 13             	movzbl (%rbx),%edx
    1b60:	84 d2                	test   %dl,%dl
    1b62:	74 1e                	je     1b82 <strings_not_equal+0x4f>
    1b64:	b8 00 00 00 00       	mov    $0x0,%eax
    1b69:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    1b6d:	75 1a                	jne    1b89 <strings_not_equal+0x56>
    1b6f:	48 83 c0 01          	add    $0x1,%rax
    1b73:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1b77:	84 d2                	test   %dl,%dl
    1b79:	75 ee                	jne    1b69 <strings_not_equal+0x36>
    1b7b:	b8 00 00 00 00       	mov    $0x0,%eax
    1b80:	eb 0c                	jmp    1b8e <strings_not_equal+0x5b>
    1b82:	b8 00 00 00 00       	mov    $0x0,%eax
    1b87:	eb 05                	jmp    1b8e <strings_not_equal+0x5b>
    1b89:	b8 01 00 00 00       	mov    $0x1,%eax
    1b8e:	5b                   	pop    %rbx
    1b8f:	5d                   	pop    %rbp
    1b90:	41 5c                	pop    %r12
    1b92:	c3                   	retq   

0000000000001b93 <initialize_bomb>:
    1b93:	f3 0f 1e fa          	endbr64 
    1b97:	48 83 ec 08          	sub    $0x8,%rsp
    1b9b:	48 8d 35 e1 fe ff ff 	lea    -0x11f(%rip),%rsi        # 1a83 <sig_handler>
    1ba2:	bf 02 00 00 00       	mov    $0x2,%edi
    1ba7:	e8 04 f7 ff ff       	callq  12b0 <signal@plt>
    1bac:	48 83 c4 08          	add    $0x8,%rsp
    1bb0:	c3                   	retq   

0000000000001bb1 <initialize_bomb_solve>:
    1bb1:	f3 0f 1e fa          	endbr64 
    1bb5:	c3                   	retq   

0000000000001bb6 <blank_line>:
    1bb6:	f3 0f 1e fa          	endbr64 
    1bba:	55                   	push   %rbp
    1bbb:	53                   	push   %rbx
    1bbc:	48 83 ec 08          	sub    $0x8,%rsp
    1bc0:	48 89 fd             	mov    %rdi,%rbp
    1bc3:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1bc7:	84 db                	test   %bl,%bl
    1bc9:	74 1e                	je     1be9 <blank_line+0x33>
    1bcb:	e8 a0 f7 ff ff       	callq  1370 <__ctype_b_loc@plt>
    1bd0:	48 83 c5 01          	add    $0x1,%rbp
    1bd4:	48 0f be db          	movsbq %bl,%rbx
    1bd8:	48 8b 00             	mov    (%rax),%rax
    1bdb:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1be0:	75 e1                	jne    1bc3 <blank_line+0xd>
    1be2:	b8 00 00 00 00       	mov    $0x0,%eax
    1be7:	eb 05                	jmp    1bee <blank_line+0x38>
    1be9:	b8 01 00 00 00       	mov    $0x1,%eax
    1bee:	48 83 c4 08          	add    $0x8,%rsp
    1bf2:	5b                   	pop    %rbx
    1bf3:	5d                   	pop    %rbp
    1bf4:	c3                   	retq   

0000000000001bf5 <skip>:
    1bf5:	f3 0f 1e fa          	endbr64 
    1bf9:	55                   	push   %rbp
    1bfa:	53                   	push   %rbx
    1bfb:	48 83 ec 08          	sub    $0x8,%rsp
    1bff:	48 8d 2d fa 3a 00 00 	lea    0x3afa(%rip),%rbp        # 5700 <input_strings>
    1c06:	48 63 05 e7 3a 00 00 	movslq 0x3ae7(%rip),%rax        # 56f4 <num_input_strings>
    1c0d:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1c11:	48 c1 e7 04          	shl    $0x4,%rdi
    1c15:	48 01 ef             	add    %rbp,%rdi
    1c18:	48 8b 15 71 3a 00 00 	mov    0x3a71(%rip),%rdx        # 5690 <infile>
    1c1f:	be 50 00 00 00       	mov    $0x50,%esi
    1c24:	e8 67 f6 ff ff       	callq  1290 <fgets@plt>
    1c29:	48 89 c3             	mov    %rax,%rbx
    1c2c:	48 85 c0             	test   %rax,%rax
    1c2f:	74 0c                	je     1c3d <skip+0x48>
    1c31:	48 89 c7             	mov    %rax,%rdi
    1c34:	e8 7d ff ff ff       	callq  1bb6 <blank_line>
    1c39:	85 c0                	test   %eax,%eax
    1c3b:	75 c9                	jne    1c06 <skip+0x11>
    1c3d:	48 89 d8             	mov    %rbx,%rax
    1c40:	48 83 c4 08          	add    $0x8,%rsp
    1c44:	5b                   	pop    %rbx
    1c45:	5d                   	pop    %rbp
    1c46:	c3                   	retq   

0000000000001c47 <explode_bomb>:
    1c47:	f3 0f 1e fa          	endbr64 
    1c4b:	50                   	push   %rax
    1c4c:	58                   	pop    %rax
    1c4d:	48 83 ec 08          	sub    $0x8,%rsp
    1c51:	48 8d 3d e3 16 00 00 	lea    0x16e3(%rip),%rdi        # 333b <array.0+0x1fb>
    1c58:	e8 c3 f5 ff ff       	callq  1220 <puts@plt>
    1c5d:	8b 15 91 3a 00 00    	mov    0x3a91(%rip),%edx        # 56f4 <num_input_strings>
    1c63:	48 8d 35 4e 15 00 00 	lea    0x154e(%rip),%rsi        # 31b8 <array.0+0x78>
    1c6a:	bf 01 00 00 00       	mov    $0x1,%edi
    1c6f:	b8 00 00 00 00       	mov    $0x0,%eax
    1c74:	e8 97 f6 ff ff       	callq  1310 <__printf_chk@plt>
    1c79:	8b 15 71 3a 00 00    	mov    0x3a71(%rip),%edx        # 56f0 <score>
    1c7f:	48 8d 35 5a 15 00 00 	lea    0x155a(%rip),%rsi        # 31e0 <array.0+0xa0>
    1c86:	bf 01 00 00 00       	mov    $0x1,%edi
    1c8b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c90:	e8 7b f6 ff ff       	callq  1310 <__printf_chk@plt>
    1c95:	bf 08 00 00 00       	mov    $0x8,%edi
    1c9a:	e8 91 f6 ff ff       	callq  1330 <exit@plt>

0000000000001c9f <read_six_numbers>:
    1c9f:	f3 0f 1e fa          	endbr64 
    1ca3:	48 83 ec 08          	sub    $0x8,%rsp
    1ca7:	48 89 f2             	mov    %rsi,%rdx
    1caa:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1cae:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1cb2:	50                   	push   %rax
    1cb3:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1cb7:	50                   	push   %rax
    1cb8:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1cbc:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1cc0:	48 8d 35 7d 16 00 00 	lea    0x167d(%rip),%rsi        # 3344 <array.0+0x204>
    1cc7:	b8 00 00 00 00       	mov    $0x0,%eax
    1ccc:	e8 2f f6 ff ff       	callq  1300 <__isoc99_sscanf@plt>
    1cd1:	48 83 c4 10          	add    $0x10,%rsp
    1cd5:	83 f8 05             	cmp    $0x5,%eax
    1cd8:	7e 05                	jle    1cdf <read_six_numbers+0x40>
    1cda:	48 83 c4 08          	add    $0x8,%rsp
    1cde:	c3                   	retq   
    1cdf:	e8 63 ff ff ff       	callq  1c47 <explode_bomb>

0000000000001ce4 <read_line>:
    1ce4:	f3 0f 1e fa          	endbr64 
    1ce8:	55                   	push   %rbp
    1ce9:	53                   	push   %rbx
    1cea:	48 83 ec 08          	sub    $0x8,%rsp
    1cee:	b8 00 00 00 00       	mov    $0x0,%eax
    1cf3:	e8 fd fe ff ff       	callq  1bf5 <skip>
    1cf8:	48 85 c0             	test   %rax,%rax
    1cfb:	74 5d                	je     1d5a <read_line+0x76>
    1cfd:	8b 2d f1 39 00 00    	mov    0x39f1(%rip),%ebp        # 56f4 <num_input_strings>
    1d03:	48 63 c5             	movslq %ebp,%rax
    1d06:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1d0a:	48 c1 e3 04          	shl    $0x4,%rbx
    1d0e:	48 8d 05 eb 39 00 00 	lea    0x39eb(%rip),%rax        # 5700 <input_strings>
    1d15:	48 01 c3             	add    %rax,%rbx
    1d18:	48 89 df             	mov    %rbx,%rdi
    1d1b:	e8 20 f5 ff ff       	callq  1240 <strlen@plt>
    1d20:	83 f8 4e             	cmp    $0x4e,%eax
    1d23:	0f 8f c5 00 00 00    	jg     1dee <read_line+0x10a>
    1d29:	83 e8 01             	sub    $0x1,%eax
    1d2c:	48 98                	cltq   
    1d2e:	48 63 d5             	movslq %ebp,%rdx
    1d31:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1d35:	48 c1 e1 04          	shl    $0x4,%rcx
    1d39:	48 8d 15 c0 39 00 00 	lea    0x39c0(%rip),%rdx        # 5700 <input_strings>
    1d40:	48 01 ca             	add    %rcx,%rdx
    1d43:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d47:	83 c5 01             	add    $0x1,%ebp
    1d4a:	89 2d a4 39 00 00    	mov    %ebp,0x39a4(%rip)        # 56f4 <num_input_strings>
    1d50:	48 89 d8             	mov    %rbx,%rax
    1d53:	48 83 c4 08          	add    $0x8,%rsp
    1d57:	5b                   	pop    %rbx
    1d58:	5d                   	pop    %rbp
    1d59:	c3                   	retq   
    1d5a:	48 8b 05 0f 39 00 00 	mov    0x390f(%rip),%rax        # 5670 <stdin@@GLIBC_2.2.5>
    1d61:	48 39 05 28 39 00 00 	cmp    %rax,0x3928(%rip)        # 5690 <infile>
    1d68:	74 1b                	je     1d85 <read_line+0xa1>
    1d6a:	48 8d 3d 03 16 00 00 	lea    0x1603(%rip),%rdi        # 3374 <array.0+0x234>
    1d71:	e8 7a f4 ff ff       	callq  11f0 <getenv@plt>
    1d76:	48 85 c0             	test   %rax,%rax
    1d79:	74 3c                	je     1db7 <read_line+0xd3>
    1d7b:	bf 00 00 00 00       	mov    $0x0,%edi
    1d80:	e8 ab f5 ff ff       	callq  1330 <exit@plt>
    1d85:	48 8d 3d ca 15 00 00 	lea    0x15ca(%rip),%rdi        # 3356 <array.0+0x216>
    1d8c:	e8 8f f4 ff ff       	callq  1220 <puts@plt>
    1d91:	8b 15 59 39 00 00    	mov    0x3959(%rip),%edx        # 56f0 <score>
    1d97:	48 8d 35 72 14 00 00 	lea    0x1472(%rip),%rsi        # 3210 <array.0+0xd0>
    1d9e:	bf 01 00 00 00       	mov    $0x1,%edi
    1da3:	b8 00 00 00 00       	mov    $0x0,%eax
    1da8:	e8 63 f5 ff ff       	callq  1310 <__printf_chk@plt>
    1dad:	bf 08 00 00 00       	mov    $0x8,%edi
    1db2:	e8 79 f5 ff ff       	callq  1330 <exit@plt>
    1db7:	48 8b 05 b2 38 00 00 	mov    0x38b2(%rip),%rax        # 5670 <stdin@@GLIBC_2.2.5>
    1dbe:	48 89 05 cb 38 00 00 	mov    %rax,0x38cb(%rip)        # 5690 <infile>
    1dc5:	b8 00 00 00 00       	mov    $0x0,%eax
    1dca:	e8 26 fe ff ff       	callq  1bf5 <skip>
    1dcf:	48 85 c0             	test   %rax,%rax
    1dd2:	0f 85 25 ff ff ff    	jne    1cfd <read_line+0x19>
    1dd8:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 3356 <array.0+0x216>
    1ddf:	e8 3c f4 ff ff       	callq  1220 <puts@plt>
    1de4:	bf 00 00 00 00       	mov    $0x0,%edi
    1de9:	e8 42 f5 ff ff       	callq  1330 <exit@plt>
    1dee:	48 8d 3d 8a 15 00 00 	lea    0x158a(%rip),%rdi        # 337f <array.0+0x23f>
    1df5:	e8 26 f4 ff ff       	callq  1220 <puts@plt>
    1dfa:	8b 05 f4 38 00 00    	mov    0x38f4(%rip),%eax        # 56f4 <num_input_strings>
    1e00:	8d 50 01             	lea    0x1(%rax),%edx
    1e03:	89 15 eb 38 00 00    	mov    %edx,0x38eb(%rip)        # 56f4 <num_input_strings>
    1e09:	48 98                	cltq   
    1e0b:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1e0f:	48 8d 15 ea 38 00 00 	lea    0x38ea(%rip),%rdx        # 5700 <input_strings>
    1e16:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1e1d:	75 6e 63 
    1e20:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1e27:	2a 2a 00 
    1e2a:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1e2e:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1e33:	e8 0f fe ff ff       	callq  1c47 <explode_bomb>

0000000000001e38 <phase_defused>:
    1e38:	f3 0f 1e fa          	endbr64 
    1e3c:	48 83 ec 78          	sub    $0x78,%rsp
    1e40:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1e47:	00 00 
    1e49:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1e4e:	31 c0                	xor    %eax,%eax
    1e50:	8b 15 9e 38 00 00    	mov    0x389e(%rip),%edx        # 56f4 <num_input_strings>
    1e56:	83 fa 03             	cmp    $0x3,%edx
    1e59:	7f 5b                	jg     1eb6 <phase_defused+0x7e>
    1e5b:	83 05 8e 38 00 00 1e 	addl   $0x1e,0x388e(%rip)        # 56f0 <score>
    1e62:	48 8d 35 31 15 00 00 	lea    0x1531(%rip),%rsi        # 339a <array.0+0x25a>
    1e69:	bf 01 00 00 00       	mov    $0x1,%edi
    1e6e:	b8 00 00 00 00       	mov    $0x0,%eax
    1e73:	e8 98 f4 ff ff       	callq  1310 <__printf_chk@plt>
    1e78:	8b 15 72 38 00 00    	mov    0x3872(%rip),%edx        # 56f0 <score>
    1e7e:	48 8d 35 8b 13 00 00 	lea    0x138b(%rip),%rsi        # 3210 <array.0+0xd0>
    1e85:	bf 01 00 00 00       	mov    $0x1,%edi
    1e8a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e8f:	e8 7c f4 ff ff       	callq  1310 <__printf_chk@plt>
    1e94:	83 3d 59 38 00 00 06 	cmpl   $0x6,0x3859(%rip)        # 56f4 <num_input_strings>
    1e9b:	74 27                	je     1ec4 <phase_defused+0x8c>
    1e9d:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1ea2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ea9:	00 00 
    1eab:	0f 85 9e 00 00 00    	jne    1f4f <phase_defused+0x117>
    1eb1:	48 83 c4 78          	add    $0x78,%rsp
    1eb5:	c3                   	retq   
    1eb6:	83 fa 04             	cmp    $0x4,%edx
    1eb9:	75 a7                	jne    1e62 <phase_defused+0x2a>
    1ebb:	83 05 2e 38 00 00 0a 	addl   $0xa,0x382e(%rip)        # 56f0 <score>
    1ec2:	eb 9e                	jmp    1e62 <phase_defused+0x2a>
    1ec4:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1ec9:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1ece:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1ed3:	48 8d 35 de 14 00 00 	lea    0x14de(%rip),%rsi        # 33b8 <array.0+0x278>
    1eda:	48 8d 3d 0f 39 00 00 	lea    0x390f(%rip),%rdi        # 57f0 <input_strings+0xf0>
    1ee1:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee6:	e8 15 f4 ff ff       	callq  1300 <__isoc99_sscanf@plt>
    1eeb:	83 f8 03             	cmp    $0x3,%eax
    1eee:	74 1a                	je     1f0a <phase_defused+0xd2>
    1ef0:	48 8d 3d f9 13 00 00 	lea    0x13f9(%rip),%rdi        # 32f0 <array.0+0x1b0>
    1ef7:	e8 24 f3 ff ff       	callq  1220 <puts@plt>
    1efc:	48 8d 3d c5 14 00 00 	lea    0x14c5(%rip),%rdi        # 33c8 <array.0+0x288>
    1f03:	e8 18 f3 ff ff       	callq  1220 <puts@plt>
    1f08:	eb 93                	jmp    1e9d <phase_defused+0x65>
    1f0a:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1f0f:	48 8d 35 ab 14 00 00 	lea    0x14ab(%rip),%rsi        # 33c1 <array.0+0x281>
    1f16:	e8 18 fc ff ff       	callq  1b33 <strings_not_equal>
    1f1b:	85 c0                	test   %eax,%eax
    1f1d:	75 d1                	jne    1ef0 <phase_defused+0xb8>
    1f1f:	48 8d 3d 12 13 00 00 	lea    0x1312(%rip),%rdi        # 3238 <array.0+0xf8>
    1f26:	e8 f5 f2 ff ff       	callq  1220 <puts@plt>
    1f2b:	48 8d 3d 2e 13 00 00 	lea    0x132e(%rip),%rdi        # 3260 <array.0+0x120>
    1f32:	e8 e9 f2 ff ff       	callq  1220 <puts@plt>
    1f37:	b8 00 00 00 00       	mov    $0x0,%eax
    1f3c:	e8 e6 fa ff ff       	callq  1a27 <secret_phase>
    1f41:	48 8d 3d 50 13 00 00 	lea    0x1350(%rip),%rdi        # 3298 <array.0+0x158>
    1f48:	e8 d3 f2 ff ff       	callq  1220 <puts@plt>
    1f4d:	eb a1                	jmp    1ef0 <phase_defused+0xb8>
    1f4f:	e8 fc f2 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000001f54 <sigalrm_handler>:
    1f54:	f3 0f 1e fa          	endbr64 
    1f58:	50                   	push   %rax
    1f59:	58                   	pop    %rax
    1f5a:	48 83 ec 08          	sub    $0x8,%rsp
    1f5e:	b9 00 00 00 00       	mov    $0x0,%ecx
    1f63:	48 8d 15 d6 14 00 00 	lea    0x14d6(%rip),%rdx        # 3440 <array.0+0x300>
    1f6a:	be 01 00 00 00       	mov    $0x1,%esi
    1f6f:	48 8b 3d 0a 37 00 00 	mov    0x370a(%rip),%rdi        # 5680 <stderr@@GLIBC_2.2.5>
    1f76:	b8 00 00 00 00       	mov    $0x0,%eax
    1f7b:	e8 d0 f3 ff ff       	callq  1350 <__fprintf_chk@plt>
    1f80:	bf 01 00 00 00       	mov    $0x1,%edi
    1f85:	e8 a6 f3 ff ff       	callq  1330 <exit@plt>

0000000000001f8a <rio_readlineb>:
    1f8a:	41 56                	push   %r14
    1f8c:	41 55                	push   %r13
    1f8e:	41 54                	push   %r12
    1f90:	55                   	push   %rbp
    1f91:	53                   	push   %rbx
    1f92:	49 89 f4             	mov    %rsi,%r12
    1f95:	48 83 fa 01          	cmp    $0x1,%rdx
    1f99:	0f 86 92 00 00 00    	jbe    2031 <rio_readlineb+0xa7>
    1f9f:	48 89 fb             	mov    %rdi,%rbx
    1fa2:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1fa7:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1fad:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1fb1:	eb 56                	jmp    2009 <rio_readlineb+0x7f>
    1fb3:	e8 48 f2 ff ff       	callq  1200 <__errno_location@plt>
    1fb8:	83 38 04             	cmpl   $0x4,(%rax)
    1fbb:	75 55                	jne    2012 <rio_readlineb+0x88>
    1fbd:	ba 00 20 00 00       	mov    $0x2000,%edx
    1fc2:	48 89 ee             	mov    %rbp,%rsi
    1fc5:	8b 3b                	mov    (%rbx),%edi
    1fc7:	e8 b4 f2 ff ff       	callq  1280 <read@plt>
    1fcc:	89 c2                	mov    %eax,%edx
    1fce:	89 43 04             	mov    %eax,0x4(%rbx)
    1fd1:	85 c0                	test   %eax,%eax
    1fd3:	78 de                	js     1fb3 <rio_readlineb+0x29>
    1fd5:	85 c0                	test   %eax,%eax
    1fd7:	74 42                	je     201b <rio_readlineb+0x91>
    1fd9:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1fdd:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1fe1:	0f b6 08             	movzbl (%rax),%ecx
    1fe4:	48 83 c0 01          	add    $0x1,%rax
    1fe8:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1fec:	83 ea 01             	sub    $0x1,%edx
    1fef:	89 53 04             	mov    %edx,0x4(%rbx)
    1ff2:	49 83 c4 01          	add    $0x1,%r12
    1ff6:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1ffb:	80 f9 0a             	cmp    $0xa,%cl
    1ffe:	74 3c                	je     203c <rio_readlineb+0xb2>
    2000:	41 83 c5 01          	add    $0x1,%r13d
    2004:	4d 39 f4             	cmp    %r14,%r12
    2007:	74 30                	je     2039 <rio_readlineb+0xaf>
    2009:	8b 53 04             	mov    0x4(%rbx),%edx
    200c:	85 d2                	test   %edx,%edx
    200e:	7e ad                	jle    1fbd <rio_readlineb+0x33>
    2010:	eb cb                	jmp    1fdd <rio_readlineb+0x53>
    2012:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2019:	eb 05                	jmp    2020 <rio_readlineb+0x96>
    201b:	b8 00 00 00 00       	mov    $0x0,%eax
    2020:	85 c0                	test   %eax,%eax
    2022:	75 29                	jne    204d <rio_readlineb+0xc3>
    2024:	b8 00 00 00 00       	mov    $0x0,%eax
    2029:	41 83 fd 01          	cmp    $0x1,%r13d
    202d:	75 0d                	jne    203c <rio_readlineb+0xb2>
    202f:	eb 13                	jmp    2044 <rio_readlineb+0xba>
    2031:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    2037:	eb 03                	jmp    203c <rio_readlineb+0xb2>
    2039:	4d 89 f4             	mov    %r14,%r12
    203c:	41 c6 04 24 00       	movb   $0x0,(%r12)
    2041:	49 63 c5             	movslq %r13d,%rax
    2044:	5b                   	pop    %rbx
    2045:	5d                   	pop    %rbp
    2046:	41 5c                	pop    %r12
    2048:	41 5d                	pop    %r13
    204a:	41 5e                	pop    %r14
    204c:	c3                   	retq   
    204d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2054:	eb ee                	jmp    2044 <rio_readlineb+0xba>

0000000000002056 <submitr>:
    2056:	f3 0f 1e fa          	endbr64 
    205a:	41 57                	push   %r15
    205c:	41 56                	push   %r14
    205e:	41 55                	push   %r13
    2060:	41 54                	push   %r12
    2062:	55                   	push   %rbp
    2063:	53                   	push   %rbx
    2064:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    206b:	ff 
    206c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    2073:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    2078:	4c 39 dc             	cmp    %r11,%rsp
    207b:	75 ef                	jne    206c <submitr+0x16>
    207d:	48 83 ec 78          	sub    $0x78,%rsp
    2081:	49 89 fd             	mov    %rdi,%r13
    2084:	89 f5                	mov    %esi,%ebp
    2086:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    208b:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2090:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2095:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    209a:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    20a1:	00 
    20a2:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    20a9:	00 
    20aa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    20b1:	00 00 
    20b3:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    20ba:	00 
    20bb:	31 c0                	xor    %eax,%eax
    20bd:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    20c4:	00 
    20c5:	ba 00 00 00 00       	mov    $0x0,%edx
    20ca:	be 01 00 00 00       	mov    $0x1,%esi
    20cf:	bf 02 00 00 00       	mov    $0x2,%edi
    20d4:	e8 b7 f2 ff ff       	callq  1390 <socket@plt>
    20d9:	85 c0                	test   %eax,%eax
    20db:	0f 88 12 01 00 00    	js     21f3 <submitr+0x19d>
    20e1:	41 89 c4             	mov    %eax,%r12d
    20e4:	4c 89 ef             	mov    %r13,%rdi
    20e7:	e8 d4 f1 ff ff       	callq  12c0 <gethostbyname@plt>
    20ec:	48 85 c0             	test   %rax,%rax
    20ef:	0f 84 4e 01 00 00    	je     2243 <submitr+0x1ed>
    20f5:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    20fa:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    2101:	00 00 
    2103:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    210a:	00 00 
    210c:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    2113:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2117:	48 8b 40 18          	mov    0x18(%rax),%rax
    211b:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    2120:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2125:	48 8b 30             	mov    (%rax),%rsi
    2128:	e8 a3 f1 ff ff       	callq  12d0 <__memmove_chk@plt>
    212d:	66 c1 c5 08          	rol    $0x8,%bp
    2131:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    2136:	ba 10 00 00 00       	mov    $0x10,%edx
    213b:	4c 89 ee             	mov    %r13,%rsi
    213e:	44 89 e7             	mov    %r12d,%edi
    2141:	e8 fa f1 ff ff       	callq  1340 <connect@plt>
    2146:	85 c0                	test   %eax,%eax
    2148:	0f 88 60 01 00 00    	js     22ae <submitr+0x258>
    214e:	48 89 df             	mov    %rbx,%rdi
    2151:	e8 ea f0 ff ff       	callq  1240 <strlen@plt>
    2156:	48 89 c5             	mov    %rax,%rbp
    2159:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    215e:	e8 dd f0 ff ff       	callq  1240 <strlen@plt>
    2163:	49 89 c6             	mov    %rax,%r14
    2166:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    216b:	e8 d0 f0 ff ff       	callq  1240 <strlen@plt>
    2170:	49 89 c5             	mov    %rax,%r13
    2173:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2178:	e8 c3 f0 ff ff       	callq  1240 <strlen@plt>
    217d:	48 89 c2             	mov    %rax,%rdx
    2180:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    2187:	00 
    2188:	48 01 d0             	add    %rdx,%rax
    218b:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    2190:	48 01 d0             	add    %rdx,%rax
    2193:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2199:	0f 87 6c 01 00 00    	ja     230b <submitr+0x2b5>
    219f:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    21a6:	00 
    21a7:	b9 00 04 00 00       	mov    $0x400,%ecx
    21ac:	b8 00 00 00 00       	mov    $0x0,%eax
    21b1:	48 89 d7             	mov    %rdx,%rdi
    21b4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    21b7:	48 89 df             	mov    %rbx,%rdi
    21ba:	e8 81 f0 ff ff       	callq  1240 <strlen@plt>
    21bf:	85 c0                	test   %eax,%eax
    21c1:	0f 84 07 05 00 00    	je     26ce <submitr+0x678>
    21c7:	8d 40 ff             	lea    -0x1(%rax),%eax
    21ca:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    21cf:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    21d6:	00 
    21d7:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    21de:	00 
    21df:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    21e4:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    21eb:	00 20 00 
    21ee:	e9 a6 01 00 00       	jmpq   2399 <submitr+0x343>
    21f3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21fa:	3a 20 43 
    21fd:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2204:	20 75 6e 
    2207:	49 89 07             	mov    %rax,(%r15)
    220a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    220e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2215:	74 6f 20 
    2218:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    221f:	65 20 73 
    2222:	49 89 47 10          	mov    %rax,0x10(%r15)
    2226:	49 89 57 18          	mov    %rdx,0x18(%r15)
    222a:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    2231:	65 
    2232:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    2239:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    223e:	e9 03 03 00 00       	jmpq   2546 <submitr+0x4f0>
    2243:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    224a:	3a 20 44 
    224d:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2254:	20 75 6e 
    2257:	49 89 07             	mov    %rax,(%r15)
    225a:	49 89 57 08          	mov    %rdx,0x8(%r15)
    225e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2265:	74 6f 20 
    2268:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    226f:	76 65 20 
    2272:	49 89 47 10          	mov    %rax,0x10(%r15)
    2276:	49 89 57 18          	mov    %rdx,0x18(%r15)
    227a:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2281:	72 20 61 
    2284:	49 89 47 20          	mov    %rax,0x20(%r15)
    2288:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    228f:	65 
    2290:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2297:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    229c:	44 89 e7             	mov    %r12d,%edi
    229f:	e8 cc ef ff ff       	callq  1270 <close@plt>
    22a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22a9:	e9 98 02 00 00       	jmpq   2546 <submitr+0x4f0>
    22ae:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    22b5:	3a 20 55 
    22b8:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    22bf:	20 74 6f 
    22c2:	49 89 07             	mov    %rax,(%r15)
    22c5:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22c9:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    22d0:	65 63 74 
    22d3:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    22da:	68 65 20 
    22dd:	49 89 47 10          	mov    %rax,0x10(%r15)
    22e1:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22e5:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    22ec:	76 
    22ed:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    22f4:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    22f9:	44 89 e7             	mov    %r12d,%edi
    22fc:	e8 6f ef ff ff       	callq  1270 <close@plt>
    2301:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2306:	e9 3b 02 00 00       	jmpq   2546 <submitr+0x4f0>
    230b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2312:	3a 20 52 
    2315:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    231c:	20 73 74 
    231f:	49 89 07             	mov    %rax,(%r15)
    2322:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2326:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    232d:	74 6f 6f 
    2330:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    2337:	65 2e 20 
    233a:	49 89 47 10          	mov    %rax,0x10(%r15)
    233e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2342:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    2349:	61 73 65 
    234c:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    2353:	49 54 52 
    2356:	49 89 47 20          	mov    %rax,0x20(%r15)
    235a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    235e:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    2365:	55 46 00 
    2368:	49 89 47 30          	mov    %rax,0x30(%r15)
    236c:	44 89 e7             	mov    %r12d,%edi
    236f:	e8 fc ee ff ff       	callq  1270 <close@plt>
    2374:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2379:	e9 c8 01 00 00       	jmpq   2546 <submitr+0x4f0>
    237e:	49 0f a3 c6          	bt     %rax,%r14
    2382:	73 21                	jae    23a5 <submitr+0x34f>
    2384:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    2388:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    238c:	48 83 c3 01          	add    $0x1,%rbx
    2390:	4c 39 eb             	cmp    %r13,%rbx
    2393:	0f 84 35 03 00 00    	je     26ce <submitr+0x678>
    2399:	44 0f b6 03          	movzbl (%rbx),%r8d
    239d:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    23a1:	3c 35                	cmp    $0x35,%al
    23a3:	76 d9                	jbe    237e <submitr+0x328>
    23a5:	44 89 c0             	mov    %r8d,%eax
    23a8:	83 e0 df             	and    $0xffffffdf,%eax
    23ab:	83 e8 41             	sub    $0x41,%eax
    23ae:	3c 19                	cmp    $0x19,%al
    23b0:	76 d2                	jbe    2384 <submitr+0x32e>
    23b2:	41 80 f8 20          	cmp    $0x20,%r8b
    23b6:	74 60                	je     2418 <submitr+0x3c2>
    23b8:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    23bc:	3c 5f                	cmp    $0x5f,%al
    23be:	76 0a                	jbe    23ca <submitr+0x374>
    23c0:	41 80 f8 09          	cmp    $0x9,%r8b
    23c4:	0f 85 77 02 00 00    	jne    2641 <submitr+0x5eb>
    23ca:	45 0f b6 c0          	movzbl %r8b,%r8d
    23ce:	48 8d 0d 41 11 00 00 	lea    0x1141(%rip),%rcx        # 3516 <array.0+0x3d6>
    23d5:	ba 08 00 00 00       	mov    $0x8,%edx
    23da:	be 01 00 00 00       	mov    $0x1,%esi
    23df:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    23e4:	b8 00 00 00 00       	mov    $0x0,%eax
    23e9:	e8 92 ef ff ff       	callq  1380 <__sprintf_chk@plt>
    23ee:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    23f5:	00 
    23f6:	88 45 00             	mov    %al,0x0(%rbp)
    23f9:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    2400:	00 
    2401:	88 45 01             	mov    %al,0x1(%rbp)
    2404:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    240b:	00 
    240c:	88 45 02             	mov    %al,0x2(%rbp)
    240f:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    2413:	e9 74 ff ff ff       	jmpq   238c <submitr+0x336>
    2418:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    241c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2420:	e9 67 ff ff ff       	jmpq   238c <submitr+0x336>
    2425:	48 01 c5             	add    %rax,%rbp
    2428:	48 29 c3             	sub    %rax,%rbx
    242b:	0f 84 08 03 00 00    	je     2739 <submitr+0x6e3>
    2431:	48 89 da             	mov    %rbx,%rdx
    2434:	48 89 ee             	mov    %rbp,%rsi
    2437:	44 89 e7             	mov    %r12d,%edi
    243a:	e8 f1 ed ff ff       	callq  1230 <write@plt>
    243f:	48 85 c0             	test   %rax,%rax
    2442:	7f e1                	jg     2425 <submitr+0x3cf>
    2444:	e8 b7 ed ff ff       	callq  1200 <__errno_location@plt>
    2449:	83 38 04             	cmpl   $0x4,(%rax)
    244c:	0f 85 90 01 00 00    	jne    25e2 <submitr+0x58c>
    2452:	4c 89 e8             	mov    %r13,%rax
    2455:	eb ce                	jmp    2425 <submitr+0x3cf>
    2457:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    245e:	3a 20 43 
    2461:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2468:	20 75 6e 
    246b:	49 89 07             	mov    %rax,(%r15)
    246e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2472:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2479:	74 6f 20 
    247c:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2483:	66 69 72 
    2486:	49 89 47 10          	mov    %rax,0x10(%r15)
    248a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    248e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2495:	61 64 65 
    2498:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    249f:	6d 20 73 
    24a2:	49 89 47 20          	mov    %rax,0x20(%r15)
    24a6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24aa:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    24b1:	65 
    24b2:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    24b9:	44 89 e7             	mov    %r12d,%edi
    24bc:	e8 af ed ff ff       	callq  1270 <close@plt>
    24c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24c6:	eb 7e                	jmp    2546 <submitr+0x4f0>
    24c8:	4c 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%r9
    24cf:	00 
    24d0:	48 8d 0d 91 0f 00 00 	lea    0xf91(%rip),%rcx        # 3468 <array.0+0x328>
    24d7:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    24de:	be 01 00 00 00       	mov    $0x1,%esi
    24e3:	4c 89 ff             	mov    %r15,%rdi
    24e6:	b8 00 00 00 00       	mov    $0x0,%eax
    24eb:	e8 90 ee ff ff       	callq  1380 <__sprintf_chk@plt>
    24f0:	44 89 e7             	mov    %r12d,%edi
    24f3:	e8 78 ed ff ff       	callq  1270 <close@plt>
    24f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24fd:	eb 47                	jmp    2546 <submitr+0x4f0>
    24ff:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2506:	00 
    2507:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    250c:	ba 00 20 00 00       	mov    $0x2000,%edx
    2511:	e8 74 fa ff ff       	callq  1f8a <rio_readlineb>
    2516:	48 85 c0             	test   %rax,%rax
    2519:	7e 54                	jle    256f <submitr+0x519>
    251b:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2522:	00 
    2523:	4c 89 ff             	mov    %r15,%rdi
    2526:	e8 e5 ec ff ff       	callq  1210 <strcpy@plt>
    252b:	44 89 e7             	mov    %r12d,%edi
    252e:	e8 3d ed ff ff       	callq  1270 <close@plt>
    2533:	48 8d 35 f7 0f 00 00 	lea    0xff7(%rip),%rsi        # 3531 <array.0+0x3f1>
    253a:	4c 89 ff             	mov    %r15,%rdi
    253d:	e8 5e ed ff ff       	callq  12a0 <strcmp@plt>
    2542:	f7 d8                	neg    %eax
    2544:	19 c0                	sbb    %eax,%eax
    2546:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    254d:	00 
    254e:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    2555:	00 00 
    2557:	0f 85 f8 02 00 00    	jne    2855 <submitr+0x7ff>
    255d:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    2564:	5b                   	pop    %rbx
    2565:	5d                   	pop    %rbp
    2566:	41 5c                	pop    %r12
    2568:	41 5d                	pop    %r13
    256a:	41 5e                	pop    %r14
    256c:	41 5f                	pop    %r15
    256e:	c3                   	retq   
    256f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2576:	3a 20 43 
    2579:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2580:	20 75 6e 
    2583:	49 89 07             	mov    %rax,(%r15)
    2586:	49 89 57 08          	mov    %rdx,0x8(%r15)
    258a:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2591:	74 6f 20 
    2594:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    259b:	73 74 61 
    259e:	49 89 47 10          	mov    %rax,0x10(%r15)
    25a2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    25a6:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    25ad:	65 73 73 
    25b0:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    25b7:	72 6f 6d 
    25ba:	49 89 47 20          	mov    %rax,0x20(%r15)
    25be:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25c2:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    25c9:	65 72 00 
    25cc:	49 89 47 30          	mov    %rax,0x30(%r15)
    25d0:	44 89 e7             	mov    %r12d,%edi
    25d3:	e8 98 ec ff ff       	callq  1270 <close@plt>
    25d8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25dd:	e9 64 ff ff ff       	jmpq   2546 <submitr+0x4f0>
    25e2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    25e9:	3a 20 43 
    25ec:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    25f3:	20 75 6e 
    25f6:	49 89 07             	mov    %rax,(%r15)
    25f9:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2604:	74 6f 20 
    2607:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    260e:	20 74 6f 
    2611:	49 89 47 10          	mov    %rax,0x10(%r15)
    2615:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2619:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    2620:	73 65 72 
    2623:	49 89 47 20          	mov    %rax,0x20(%r15)
    2627:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    262e:	00 
    262f:	44 89 e7             	mov    %r12d,%edi
    2632:	e8 39 ec ff ff       	callq  1270 <close@plt>
    2637:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    263c:	e9 05 ff ff ff       	jmpq   2546 <submitr+0x4f0>
    2641:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2648:	3a 20 52 
    264b:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    2652:	20 73 74 
    2655:	49 89 07             	mov    %rax,(%r15)
    2658:	49 89 57 08          	mov    %rdx,0x8(%r15)
    265c:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    2663:	63 6f 6e 
    2666:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    266d:	20 61 6e 
    2670:	49 89 47 10          	mov    %rax,0x10(%r15)
    2674:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2678:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    267f:	67 61 6c 
    2682:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2689:	6e 70 72 
    268c:	49 89 47 20          	mov    %rax,0x20(%r15)
    2690:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2694:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    269b:	6c 65 20 
    269e:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    26a5:	63 74 65 
    26a8:	49 89 47 30          	mov    %rax,0x30(%r15)
    26ac:	49 89 57 38          	mov    %rdx,0x38(%r15)
    26b0:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    26b7:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    26bc:	44 89 e7             	mov    %r12d,%edi
    26bf:	e8 ac eb ff ff       	callq  1270 <close@plt>
    26c4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    26c9:	e9 78 fe ff ff       	jmpq   2546 <submitr+0x4f0>
    26ce:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    26d5:	00 
    26d6:	48 83 ec 08          	sub    $0x8,%rsp
    26da:	48 8d 84 24 68 40 00 	lea    0x4068(%rsp),%rax
    26e1:	00 
    26e2:	50                   	push   %rax
    26e3:	ff 74 24 28          	pushq  0x28(%rsp)
    26e7:	ff 74 24 38          	pushq  0x38(%rsp)
    26eb:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    26f0:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    26f5:	48 8d 0d 9c 0d 00 00 	lea    0xd9c(%rip),%rcx        # 3498 <array.0+0x358>
    26fc:	ba 00 20 00 00       	mov    $0x2000,%edx
    2701:	be 01 00 00 00       	mov    $0x1,%esi
    2706:	48 89 df             	mov    %rbx,%rdi
    2709:	b8 00 00 00 00       	mov    $0x0,%eax
    270e:	e8 6d ec ff ff       	callq  1380 <__sprintf_chk@plt>
    2713:	48 83 c4 20          	add    $0x20,%rsp
    2717:	48 89 df             	mov    %rbx,%rdi
    271a:	e8 21 eb ff ff       	callq  1240 <strlen@plt>
    271f:	48 89 c3             	mov    %rax,%rbx
    2722:	48 8d ac 24 60 20 00 	lea    0x2060(%rsp),%rbp
    2729:	00 
    272a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2730:	48 85 c0             	test   %rax,%rax
    2733:	0f 85 f8 fc ff ff    	jne    2431 <submitr+0x3db>
    2739:	44 89 64 24 50       	mov    %r12d,0x50(%rsp)
    273e:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2745:	00 
    2746:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    274b:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    2750:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2755:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    275c:	00 
    275d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2762:	e8 23 f8 ff ff       	callq  1f8a <rio_readlineb>
    2767:	48 85 c0             	test   %rax,%rax
    276a:	0f 8e e7 fc ff ff    	jle    2457 <submitr+0x401>
    2770:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2775:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    277c:	00 
    277d:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2784:	00 
    2785:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    278c:	00 
    278d:	48 8d 35 89 0d 00 00 	lea    0xd89(%rip),%rsi        # 351d <array.0+0x3dd>
    2794:	b8 00 00 00 00       	mov    $0x0,%eax
    2799:	e8 62 eb ff ff       	callq  1300 <__isoc99_sscanf@plt>
    279e:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
    27a3:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    27aa:	0f 85 18 fd ff ff    	jne    24c8 <submitr+0x472>
    27b0:	48 8d 1d 77 0d 00 00 	lea    0xd77(%rip),%rbx        # 352e <array.0+0x3ee>
    27b7:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    27be:	00 
    27bf:	48 89 de             	mov    %rbx,%rsi
    27c2:	e8 d9 ea ff ff       	callq  12a0 <strcmp@plt>
    27c7:	85 c0                	test   %eax,%eax
    27c9:	0f 84 30 fd ff ff    	je     24ff <submitr+0x4a9>
    27cf:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    27d6:	00 
    27d7:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    27dc:	ba 00 20 00 00       	mov    $0x2000,%edx
    27e1:	e8 a4 f7 ff ff       	callq  1f8a <rio_readlineb>
    27e6:	48 85 c0             	test   %rax,%rax
    27e9:	7f cc                	jg     27b7 <submitr+0x761>
    27eb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27f2:	3a 20 43 
    27f5:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27fc:	20 75 6e 
    27ff:	49 89 07             	mov    %rax,(%r15)
    2802:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2806:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    280d:	74 6f 20 
    2810:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2817:	68 65 61 
    281a:	49 89 47 10          	mov    %rax,0x10(%r15)
    281e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2822:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2829:	66 72 6f 
    282c:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    2833:	76 65 72 
    2836:	49 89 47 20          	mov    %rax,0x20(%r15)
    283a:	49 89 57 28          	mov    %rdx,0x28(%r15)
    283e:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2843:	44 89 e7             	mov    %r12d,%edi
    2846:	e8 25 ea ff ff       	callq  1270 <close@plt>
    284b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2850:	e9 f1 fc ff ff       	jmpq   2546 <submitr+0x4f0>
    2855:	e8 f6 e9 ff ff       	callq  1250 <__stack_chk_fail@plt>

000000000000285a <init_timeout>:
    285a:	f3 0f 1e fa          	endbr64 
    285e:	85 ff                	test   %edi,%edi
    2860:	75 01                	jne    2863 <init_timeout+0x9>
    2862:	c3                   	retq   
    2863:	53                   	push   %rbx
    2864:	89 fb                	mov    %edi,%ebx
    2866:	48 8d 35 e7 f6 ff ff 	lea    -0x919(%rip),%rsi        # 1f54 <sigalrm_handler>
    286d:	bf 0e 00 00 00       	mov    $0xe,%edi
    2872:	e8 39 ea ff ff       	callq  12b0 <signal@plt>
    2877:	85 db                	test   %ebx,%ebx
    2879:	b8 00 00 00 00       	mov    $0x0,%eax
    287e:	0f 49 c3             	cmovns %ebx,%eax
    2881:	89 c7                	mov    %eax,%edi
    2883:	e8 d8 e9 ff ff       	callq  1260 <alarm@plt>
    2888:	5b                   	pop    %rbx
    2889:	c3                   	retq   

000000000000288a <init_driver>:
    288a:	f3 0f 1e fa          	endbr64 
    288e:	41 54                	push   %r12
    2890:	55                   	push   %rbp
    2891:	53                   	push   %rbx
    2892:	48 83 ec 20          	sub    $0x20,%rsp
    2896:	48 89 fd             	mov    %rdi,%rbp
    2899:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    28a0:	00 00 
    28a2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    28a7:	31 c0                	xor    %eax,%eax
    28a9:	be 01 00 00 00       	mov    $0x1,%esi
    28ae:	bf 0d 00 00 00       	mov    $0xd,%edi
    28b3:	e8 f8 e9 ff ff       	callq  12b0 <signal@plt>
    28b8:	be 01 00 00 00       	mov    $0x1,%esi
    28bd:	bf 1d 00 00 00       	mov    $0x1d,%edi
    28c2:	e8 e9 e9 ff ff       	callq  12b0 <signal@plt>
    28c7:	be 01 00 00 00       	mov    $0x1,%esi
    28cc:	bf 1d 00 00 00       	mov    $0x1d,%edi
    28d1:	e8 da e9 ff ff       	callq  12b0 <signal@plt>
    28d6:	ba 00 00 00 00       	mov    $0x0,%edx
    28db:	be 01 00 00 00       	mov    $0x1,%esi
    28e0:	bf 02 00 00 00       	mov    $0x2,%edi
    28e5:	e8 a6 ea ff ff       	callq  1390 <socket@plt>
    28ea:	85 c0                	test   %eax,%eax
    28ec:	0f 88 9c 00 00 00    	js     298e <init_driver+0x104>
    28f2:	89 c3                	mov    %eax,%ebx
    28f4:	48 8d 3d 39 0c 00 00 	lea    0xc39(%rip),%rdi        # 3534 <array.0+0x3f4>
    28fb:	e8 c0 e9 ff ff       	callq  12c0 <gethostbyname@plt>
    2900:	48 85 c0             	test   %rax,%rax
    2903:	0f 84 d1 00 00 00    	je     29da <init_driver+0x150>
    2909:	49 89 e4             	mov    %rsp,%r12
    290c:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    2913:	00 
    2914:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    291b:	00 00 
    291d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    2923:	48 63 50 14          	movslq 0x14(%rax),%rdx
    2927:	48 8b 40 18          	mov    0x18(%rax),%rax
    292b:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    2930:	b9 0c 00 00 00       	mov    $0xc,%ecx
    2935:	48 8b 30             	mov    (%rax),%rsi
    2938:	e8 93 e9 ff ff       	callq  12d0 <__memmove_chk@plt>
    293d:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    2944:	ba 10 00 00 00       	mov    $0x10,%edx
    2949:	4c 89 e6             	mov    %r12,%rsi
    294c:	89 df                	mov    %ebx,%edi
    294e:	e8 ed e9 ff ff       	callq  1340 <connect@plt>
    2953:	85 c0                	test   %eax,%eax
    2955:	0f 88 e7 00 00 00    	js     2a42 <init_driver+0x1b8>
    295b:	89 df                	mov    %ebx,%edi
    295d:	e8 0e e9 ff ff       	callq  1270 <close@plt>
    2962:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2968:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    296c:	b8 00 00 00 00       	mov    $0x0,%eax
    2971:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2976:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    297d:	00 00 
    297f:	0f 85 f5 00 00 00    	jne    2a7a <init_driver+0x1f0>
    2985:	48 83 c4 20          	add    $0x20,%rsp
    2989:	5b                   	pop    %rbx
    298a:	5d                   	pop    %rbp
    298b:	41 5c                	pop    %r12
    298d:	c3                   	retq   
    298e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2995:	3a 20 43 
    2998:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    299f:	20 75 6e 
    29a2:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29a6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29aa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29b1:	74 6f 20 
    29b4:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    29bb:	65 20 73 
    29be:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29c2:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29c6:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    29cd:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    29d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29d8:	eb 97                	jmp    2971 <init_driver+0xe7>
    29da:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    29e1:	3a 20 44 
    29e4:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    29eb:	20 75 6e 
    29ee:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29f2:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29f6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29fd:	74 6f 20 
    2a00:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2a07:	76 65 20 
    2a0a:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2a0e:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2a12:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    2a19:	72 20 61 
    2a1c:	48 89 45 20          	mov    %rax,0x20(%rbp)
    2a20:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    2a27:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    2a2d:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    2a31:	89 df                	mov    %ebx,%edi
    2a33:	e8 38 e8 ff ff       	callq  1270 <close@plt>
    2a38:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a3d:	e9 2f ff ff ff       	jmpq   2971 <init_driver+0xe7>
    2a42:	4c 8d 05 eb 0a 00 00 	lea    0xaeb(%rip),%r8        # 3534 <array.0+0x3f4>
    2a49:	48 8d 0d a0 0a 00 00 	lea    0xaa0(%rip),%rcx        # 34f0 <array.0+0x3b0>
    2a50:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    2a57:	be 01 00 00 00       	mov    $0x1,%esi
    2a5c:	48 89 ef             	mov    %rbp,%rdi
    2a5f:	b8 00 00 00 00       	mov    $0x0,%eax
    2a64:	e8 17 e9 ff ff       	callq  1380 <__sprintf_chk@plt>
    2a69:	89 df                	mov    %ebx,%edi
    2a6b:	e8 00 e8 ff ff       	callq  1270 <close@plt>
    2a70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a75:	e9 f7 fe ff ff       	jmpq   2971 <init_driver+0xe7>
    2a7a:	e8 d1 e7 ff ff       	callq  1250 <__stack_chk_fail@plt>

0000000000002a7f <driver_post>:
    2a7f:	f3 0f 1e fa          	endbr64 
    2a83:	53                   	push   %rbx
    2a84:	4c 89 c3             	mov    %r8,%rbx
    2a87:	85 c9                	test   %ecx,%ecx
    2a89:	75 17                	jne    2aa2 <driver_post+0x23>
    2a8b:	48 85 ff             	test   %rdi,%rdi
    2a8e:	74 05                	je     2a95 <driver_post+0x16>
    2a90:	80 3f 00             	cmpb   $0x0,(%rdi)
    2a93:	75 33                	jne    2ac8 <driver_post+0x49>
    2a95:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a9a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a9e:	89 c8                	mov    %ecx,%eax
    2aa0:	5b                   	pop    %rbx
    2aa1:	c3                   	retq   
    2aa2:	48 8d 35 a3 0a 00 00 	lea    0xaa3(%rip),%rsi        # 354c <array.0+0x40c>
    2aa9:	bf 01 00 00 00       	mov    $0x1,%edi
    2aae:	b8 00 00 00 00       	mov    $0x0,%eax
    2ab3:	e8 58 e8 ff ff       	callq  1310 <__printf_chk@plt>
    2ab8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2abd:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2ac1:	b8 00 00 00 00       	mov    $0x0,%eax
    2ac6:	eb d8                	jmp    2aa0 <driver_post+0x21>
    2ac8:	41 50                	push   %r8
    2aca:	52                   	push   %rdx
    2acb:	4c 8d 0d 91 0a 00 00 	lea    0xa91(%rip),%r9        # 3563 <array.0+0x423>
    2ad2:	49 89 f0             	mov    %rsi,%r8
    2ad5:	48 89 f9             	mov    %rdi,%rcx
    2ad8:	48 8d 15 8c 0a 00 00 	lea    0xa8c(%rip),%rdx        # 356b <array.0+0x42b>
    2adf:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2ae4:	48 8d 3d 49 0a 00 00 	lea    0xa49(%rip),%rdi        # 3534 <array.0+0x3f4>
    2aeb:	e8 66 f5 ff ff       	callq  2056 <submitr>
    2af0:	48 83 c4 10          	add    $0x10,%rsp
    2af4:	eb aa                	jmp    2aa0 <driver_post+0x21>

Disassembly of section .fini:

0000000000002af8 <_fini>:
    2af8:	f3 0f 1e fa          	endbr64 
    2afc:	48 83 ec 08          	sub    $0x8,%rsp
    2b00:	48 83 c4 08          	add    $0x8,%rsp
    2b04:	c3                   	retq   
