//PUTTING RELIGIOUS RELATED STUFF IN IT'S ON MODULES FOLDER FROM NOW ON. - Matt


//PROCS

//Stupidly simplistic? Probably. But I'm too tired to write something more complex.
/mob/living/proc/religion_is_legal()
	if(religion != IDEOLOGY_MONARCHISM && religion != IDEOLOGY_CONSERVATISM && religion != IDEOLOGY_LIBERALISM && religion != IDEOLOGY_DEMSOC && religion != IDEOLOGY_NATIONALIST)
		return 0
	return 1

/mob/living/proc/ideology_is_fasci()
	if(religion != IDEOLOGY_FASCISM)
		return 0
	return 1

/mob/living/proc/ideology_is_commie()
	if(religion != IDEOLOGY_COMMUNISM)
		return 0
	return 1

/mob/living/proc/ideology_is_market()
	if(religion != IDEOLOGY_LIBERT)
		return 0
	return 1

//PRAYER
var/accepted_kaiser
var/accepted_commie
var/accepted_fasci
var/accepted_market

proc/generate_random_kaiser_edict()//This generates a new one.
	var/kaiser_edict = pick("��� ������ ����� ����. ", "������� ������ ������� II ��� ������������ ��� �������������. ", "��������� ������ ������������� ������ ������� II ����� ����. ")
	kaiser_edict += pick("� ���&#255;� ������������ ��������� ���������&#255; �������&#255;�� ������ 3 �������. ", "� ���&#255;� ������������� ��������&#255; ����������� - ��������� ������� ���� ����� ������� �������&#255;��. ", "� ���&#255;� ������������ ��������� ������� � ���������&#255;����. ������ �������� ���������� ���������� ����� ��&#255; ���. ", " ������ ���������, ������, �� - ��������� ��� ����������� �������������. ���������&#255; ���������� ���������. ", "���������� ��������� ������ ���������� �� �������. ", "�������� � ��������������� ��������&#255; �������� ������� ������ ���� �������. ")
	kaiser_edict += pick("� ��������� �������� ������������ �������. ", "���������� ��������� ���� ��������. ", "����� ����, ��������� ������� � ������������. ", "��������� ����� ������ �������&#255;. ", "������� ������������� � ����������. ", "��� ������� ���&#255;���� ��&#255;��. ")
	kaiser_edict += "����� ����� �������!"
	return kaiser_edict

proc/generate_random_commie_edict()//This generates a new one.
	var/commie_edict = pick("�� ������ ���������� ", "�� ��������� ����� �����������. ", "�� ��������� ���������. ")
	commie_edict += pick("����������� ����� ��������� � 2650 ����. ", "���������� ����� ������������ ������ � �������������. ", "���������� ������ ������ � ����������. ", "���������� �������� �������� �� �������, �������� ������ ������! ", "� ������ ������������� ����������! �������� �� ���� �����, �� ���������! ")
	commie_edict += pick("� ����� ����� ���������� ����������. ", "�� ������ ���������� ��������� ������������ ������ ������. ", "�� �������� ��� � �������� ��������. ", "�� ���� �� ������� ������, ���� �������� ��������! ", "��������&#255; ��������� ���. ", "�������, ��� �� ��� �����&#255;-�������. ", "��������� �� �� ������, ���� ���� ������ ���. ")
	commie_edict += "����� ������ ���������� �����!"
	return commie_edict

proc/generate_random_fasci_edict()//This generates a new one.
	var/fasci_edict = pick("��� ����� ������� ���������: ", "����� ������ �������&#255; �� ������� ������: ", "��� ����� � ����� ������� ��������� �����: ")
	fasci_edict += pick("���������� �������� ������� � �����������. ", "������ �� ������������ ����� �����������&#255;! � �� ��������� �! ", "�� ������ �������� ���� ����. ", "�� ���� �����&#255;���&#255; ���������� ���� ����! ", "������� ����� ����������! ������������ ����� ��������. ", "�� ��������� ������ � ������� � ��������� ������������ �����! ")
	fasci_edict += pick("��� � ����� ����� � �� ������� ��� ����������. ", "�� ������ ����������&#255; � ����� �����. ", "������ ������������ ���� ��� �������. ", "������&#255; ����� ����������! ��� �������� ��������! ", "��� ����������-������ ����� ����� � ��������� � ������ ����. ", "������ ��&#255; �����! ")
	fasci_edict += "�� ����� ������������� ������ ������ ����&#255; � ���� ����� ������, ������ ������� �����������-����������!"
	return fasci_edict

proc/generate_random_market_edict()//This generates a new one.
	var/market_edict = pick("��������� ������ �����. ", "��������� ������ �� ��������. ", "������ �� ������������-���������. ")
	market_edict += pick("����� ��������������� �������� �����. ", "������� �� ������� �� ��������. ", "����������� ��������� ������ �� 3%. ")
	market_edict += pick("���� ��������������, �� ����� ������� ���. ", "������� ����������� ���������. ", "���� ������� ������ ��� �����, �� ����� ������� 3 ���� ��������. ")
	market_edict += "������, �� ��� ��� �����."
	return market_edict


