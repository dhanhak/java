SELECT LPAD(' ',(LEVEL-1)*2,' ')||ENAME AS 이름, EMPNO, MGR, LEVEL
FROM EMP
START WITH ENAME ='KING'
CONNECT BY PRIOR EMPNO=MGR;