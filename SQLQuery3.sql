use WebProject;

create table Maps(
	id int not null primary key identity(1,1),
	name nvarchar(50) not null,
	address nvarchar(50) not null,
	phone nvarchar(50) not null,
	comment nvarchar(50) not null,
);

insert into  Maps(name, address, phone, comment) values('���h��','242�s�_���s���ϫذ�@��1��','02-2908-8505','CP�ȫܰ�,��q�K�Q,�A�ȤH���A�׿ˤ�');
insert into  Maps(name, address, phone, comment) values('�Q��ɼp','242�s�_���s���Ϥ�����514��91��','02-2904-6666','�@�����D�ܦn,�i�H�K�O�[�@���@��,�ն��K�O��');
insert into  Maps(name, address, phone, comment) values('����黲�j�ޱ�','242�s�_���s���Ϥ�����514��7��','02-2904-7868','�j�����ޱơA�p�ܤS�p��A��Ŀ�ܦh');
insert into  Maps(name, address, phone, comment) values('���j���w�̪F�]������','242�s�_���s���Ϥ�����514��61��','02-2901-2439','�����O�ܫK�y,�U���t�Ƴ��D�`�J��');
insert into  Maps(name, address, phone, comment) values('�³¸�','242�s�_���s���Ϥ�����516��37��2��','02-2901-3233','�Ǯե�������,�H�ʤ�������i�H�Y��o��h,�u���ܶW��!');
insert into  Maps(name, address, phone, comment) values('�����»��S','242�s�_���s���Ϥ�����514��19��','0983-037-865','���Y�n��!�ί���������e���Y��h�˵��');
insert into  Maps(name, address, phone, comment) values('�Ѹ������ѳЩl��','242�s�_���s���ϫذ�@��14��','02-2908-7278','�p��ۤv���ۤv��,���D�J��,�S�O���˯u�ť]�ަզ�,�n��o��');
insert into  Maps(name, address, phone, comment) values('�m��N��','24255�s�_���s���Ϥ�����516-32��','02-2902-1770','��q�K�Q�F�񻲤j��,�{�I�{�N');
insert into  Maps(name, address, phone, comment) values('�F�إq(�C�إq)','242�s�_���s���Ϥ�����498��','02-2908-2808','����Τ߿ﭹ��,���X�������L���饻�Ʋz');
insert into  Maps(name, address, phone, comment) values('�u�l�q�j�Q�\�]','242�s�_���s���Ϥ�����593��','02-2906-8820','�ήƹ�b,���ҵΪA,�A�ȺA�׫ܦn');
insert into  Maps(name, address, phone, comment) values('�w�F���q���p��','242�s�_���s���Ϥ�����514��39��','02-2901-2660','�~���h,����n,�K�O�[��,���ƬO�ۧU�a��');
insert into  Maps(name, address, phone, comment) values('���í���','242�s�_���s���Ϥ�����514��31��','02-2902-8579','�f���������Ϊ�����,���ܦX�x�W�H���G�f,�p�涼�ƵL���q����');
insert into  Maps(name, address, phone, comment) values('�ۤG��','242�s�_���s���ϫذ�@��61��','02-2908-4166','�����j�y�L���I�Z��,���業��,���Y�ܴ�,�Ҧ��������B�z���ܦn,�]�ܷs�A,�ѧN�ɷQ�Y�窺����');
insert into  Maps(name, address, phone, comment) values('����ܥֳ����N','242�s�_���s���ϫذ�@��44��','0955-706-562','�ֶp�ܤf�P�Ϲ�,�S�O���˸��e�㥽�f��,�L���a��');
insert into  Maps(name, address, phone, comment) values('�S����','242�s�_���s���Ϥ�����514��43��','02-2902-4516','CP�ȫܰ�,���F�Y�칡�]�����I���覡�i�����');
insert into  Maps(name, address, phone, comment) values('�f�c���������','242�s�_���s���Ϥ�����571��','02-2903-5188','�W�ű��ˬ��۳´���]���g,�����ٷ|�z��');
insert into  Maps(name, address, phone, comment) values('�������x�W���פp�]','242�s�_���s���Ϥ�����494��','02-2902-0678','�ΤF�j�q������U�h�i��,�D�`�A��,���׳n�w�A��,�Y�o�X���ת�����');
insert into  Maps(name, address, phone, comment) values('���֨�����������','24257�s�_���s���ϫذ�@��26��','0958-044-547','�������b���,����򩱭��H�ܦn,�F��]�n�Y');
insert into  Maps(name, address, phone, comment) values('�Z����','242�s�_���s���ϫذ�@��6��','02-2901-3333','���յ榳�I�o,���ܤJ���ܦn�Y');
insert into  Maps(name, address, phone, comment) values('�j���»��n�娧�G���K����','242�s�_���s���ϫذ�@��19��','02-2908-5806','���Z�ײ����A���D�]�n');

select * from Maps;