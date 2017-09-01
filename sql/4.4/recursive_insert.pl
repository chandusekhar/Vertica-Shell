#!/usr/bin/perl

use strict;     # Declare usINg Perl strict syntax
use Time::Local;

my $interval = 30;	#ѭ����ȴ�������
my $sql = "Insert into item2 select * from item;commit;";	#ѭ��ִ�е�sql���
my ($hostname, $username, $password);

$hostname = "edatest01";
$username = "dbadmin";
$password = "dbadmin";

##------------ main function ------------
sub main
{
   ###����������ֱ�ӵ�������ĳ��򣬲����޸�
   my $ret ;
   print "------------------------RUNNING VSQL START---------------------------\n";  
   while(1){   
   	$ret=run_vsql_command();
   
   	print "rc=$ret\n";
   	sleep($interval);
   }
   print "------------------------RUNNING VSQL END-----------------------------\n";  
   return $ret;
}

open(STDERR, ">&STDOUT");
my $rc = exit(main());

sub run_vsql_command
{
	my (@de_user_pwd)=@_;
	my $rc = open(VSQL, "| /opt/vertica/bin/vsql -h $hostname -U $username -w $password");

  unless ($rc) 
  {
      print "Could not invoke vsql command\n";
      return -1;
  }

# ------ Below are vsql scripts ----------
  print VSQL <<ENDOFINPUT;

--\\set ON_ERROR_STOP on    --���﷨�������ǣ���ON_ERROR_STOP���Դ򿪺�����ִ�е�sql���һ��������˳�vsql,�����sql����ִ�У�֪�������رո����Ե����,һ��������������vsql�ķ���ֵ��3,������0,һ�㽨�����һ��sqlǰһ��Ҫ���ϸ�����,���������ű����ķ�����϶���0

---\\set ON_ERROR_STOP off   --���﷨�������ǣ���ON_ERROR_STOP���Թرպ�����ִ�е�sql��估ʱ��������Ҳ���˳�vsql������vsql�ķ���ֵ��0���Ҫ���Ӧ������������

\\set AUTOCOMMIT on

\\timing
\\set ON_ERROR_STOP on
set search_path=tpc;

$sql 



\\q
ENDOFINPUT

close(VSQL);

  
  my $RET_CODE = $?>>8 ;

  if ( $RET_CODE != 0 ) {
      return 1;
  }
  else {
      return 0;
  }
}
