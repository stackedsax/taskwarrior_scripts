FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Flag an email message for followup and simultaneously create a TaskWarrior task.
	Additionally, complete the TaskWarrior task when the email is flagged as completed.
	
	Requires the 'completeTask.sh' to complete.
     � 	 	� 
 	 F l a g   a n   e m a i l   m e s s a g e   f o r   f o l l o w u p   a n d   s i m u l t a n e o u s l y   c r e a t e   a   T a s k W a r r i o r   t a s k . 
 	 A d d i t i o n a l l y ,   c o m p l e t e   t h e   T a s k W a r r i o r   t a s k   w h e n   t h e   e m a i l   i s   f l a g g e d   a s   c o m p l e t e d . 
 	 
 	 R e q u i r e s   t h e   ' c o m p l e t e T a s k . s h '   t o   c o m p l e t e . 
   
  
 l     ��������  ��  ��     ��  l    � ����  O     �    k    �       l   ��������  ��  ��        l   ��  ��    5 / get the currently selected message or messages     �   ^   g e t   t h e   c u r r e n t l y   s e l e c t e d   m e s s a g e   o r   m e s s a g e s      r    	    1    ��
�� 
CMgs  o      ���� $0 selectedmessages selectedMessages      l  
 
��������  ��  ��        l  
 
��   !��     E ? if there are no messages selected, warn the user and then quit    ! � " " ~   i f   t h e r e   a r e   n o   m e s s a g e s   s e l e c t e d ,   w a r n   t h e   u s e r   a n d   t h e n   q u i t   # $ # Z   
  % &���� % =  
  ' ( ' o   
 ���� $0 selectedmessages selectedMessages ( J    ����   & k     ) )  * + * I   �� , -
�� .sysodlogaskr        TEXT , m     . . � / / n P l e a s e   s e l e c t   a   m e s s a g e   f i r s t   a n d   t h e n   r u n   t h i s   s c r i p t . - �� 0��
�� 
disp 0 m    ���� ��   +  1�� 1 L    ����  ��  ��  ��   $  2 3 2 l     ��������  ��  ��   3  4 5 4 X     � 6�� 7 6 k   0 � 8 8  9 : 9 l  0 0��������  ��  ��   :  ; < ; l  0 0�� = >��   = F @ get the information from the message, and store it in variables    > � ? ? �   g e t   t h e   i n f o r m a t i o n   f r o m   t h e   m e s s a g e ,   a n d   s t o r e   i t   i n   v a r i a b l e s <  @ A @ r   0 5 B C B n   0 3 D E D 1   1 3��
�� 
subj E o   0 1���� 0 
themessage 
theMessage C o      ���� 0 thename theName A  F G F r   6 ; H I H n   6 9 J K J m   7 9��
�� 
cCtg K o   6 7���� 0 
themessage 
theMessage I o      ���� 0 thecategory theCategory G  L M L r   < A N O N n   < ? P Q P 1   = ?��
�� 
ctnt Q o   < =���� 0 
themessage 
theMessage O o      ���� 0 
thecontent 
theContent M  R S R l  B B��������  ��  ��   S  T U T l  B B�� V W��   V > 8 create a new task with the information from the message    W � X X p   c r e a t e   a   n e w   t a s k   w i t h   t h e   i n f o r m a t i o n   f r o m   t h e   m e s s a g e U  Y Z Y Z   B � [ \ ]�� [ >  B I ^ _ ^ n   B E ` a ` 1   C E��
�� 
tFlg a o   B C���� 0 
themessage 
theMessage _ m   E H��
�� FlagFlNC \ k   L y b b  c d c I  L ]�� e��
�� .sysoexecTEXT���     TEXT e b   L Y f g f b   L U h i h m   L O j j � k k 0 / u s r / l o c a l / b i n / t a s k   a d d   i l  O T l���� l n   O T m n m 1   P T��
�� 
strq n o   O P���� 0 thename theName��  ��   g m   U X o o � p p ^   + w o r k   + e m a i l   > >   ~ / t a s k w a r r i o r . l o g   2 > & 1 ;   e x i t   0��   d  q r q r   ^ e s t s m   ^ a��
�� FlagFlNC t n       u v u 1   b d��
�� 
tFlg v o   a b���� 0 
themessage 
theMessage r  w�� w I  f y�� x y
�� .sysonotfnull��� ��� TEXT x m   f i z z � { {  t a s k   c r e a t e d y �� | }
�� 
appr | m   l o ~ ~ �    T a s k W a r r i o r } �� ���
�� 
subt � o   r s���� 0 thename theName��  ��   ]  � � � >  | � � � � n   |  � � � 1   } ��
�� 
tFlg � o   | }���� 0 
themessage 
theMessage � m    ���
�� FlagFlCo �  ��� � k   � � � �  � � � r   � � � � � m   � ���
�� FlagFlCo � n       � � � 1   � ���
�� 
tFlg � o   � ����� 0 
themessage 
theMessage �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � � \ e c h o   ' a l l '   |   / u s r / l o c a l / b i n / t a s k   d e s c r i p t i o n : ' � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 thename theName � m   � � � � � � � \ '   d o n e   > >   ~ / . t a s k / t a s k w a r r i o r . l o g   2 > & 1 ;   e x i t   0��   �  ��� � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � m   � � � � � � �  t a s k   c o m p l e t e d � �� � �
�� 
appr � m   � � � � � � �  T a s k W a r r i o r � �� ���
�� 
subt � o   � ����� 0 thename theName��  ��  ��  ��   Z  ��� � l  � ���������  ��  ��  ��  �� 0 
themessage 
theMessage 7 o   # $���� $0 selectedmessages selectedMessages 5  ��� � l  � ���������  ��  ��  ��    m      � ��                                                                                  OPIM  alis    x  Macintosh HD               ��*H+     AMicrosoft Outlook.app                                           #E��0��        ����  	                Applications    �U�      �0��       A  0Macintosh HD:Applications: Microsoft Outlook.app  ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  "Applications/Microsoft Outlook.app  / ��  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   � ���� 0 
themessage 
theMessage �   ����� .�������������������������� j�� o�� z�� ~�������� � � � �
�� 
CMgs�� $0 selectedmessages selectedMessages
�� 
disp
�� .sysodlogaskr        TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj�� 0 thename theName
�� 
cCtg�� 0 thecategory theCategory
�� 
ctnt�� 0 
thecontent 
theContent
�� 
tFlg
�� FlagFlNC
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� FlagFlCo�� �� �*�,E�O�jv  ��kl OhY hO ��[��l kh  ��,E�O��,E�O��,E�O��,a  2a �a ,%a %j Oa ��,FOa a a a �a  Y =��,a  2a ��,FOa �a ,%a %j Oa a a a �a  Y hOP[OY�qOPU ascr  ��ޭ