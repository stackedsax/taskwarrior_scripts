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
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � � 0 ~ / . t a s k / c o m p l e t e T a s k . s h   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 thename theName��   �  ��� � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � m   � � � � � � �  t a s k   c o m p l e t e d � �� � �
�� 
appr � m   � � � � � � �  T a s k W a r r i o r � �� ���
�� 
subt � o   � ����� 0 thename theName��  ��  ��  ��   Z  ��� � l  � ���������  ��  ��  ��  �� 0 
themessage 
theMessage 7 o   # $���� $0 selectedmessages selectedMessages 5  ��� � l  � ���������  ��  ��  ��    m      � �                                                                                  OPIM  alis    �  Macintosh HD               �T�H+   �`Microsoft Outlook.app                                           �˞��        ����  	                Microsoft Office 2011     ��D      ˞��     �`   u  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  ��  ��  ��       
�� � � � � � ���������   � ����������������
�� .aevtoappnull  �   � ****�� $0 selectedmessages selectedMessages�� 0 thename theName�� 0 thecategory theCategory�� 0 
thecontent 
theContent��  ��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   � ���� 0 
themessage 
theMessage �  ����� .�������������������������� j�� o� z�~ ~�}�|�{�z � � �
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
� .sysoexecTEXT���     TEXT
�~ 
appr
�} 
subt�| 
�{ .sysonotfnull��� ��� TEXT
�z FlagFlCo�� �� �*�,E�O�jv  ��kl OhY hO ��[��l kh  ��,E�O��,E�O��,E�O��,a  2a �a ,%a %j Oa ��,FOa a a a �a  Y 9��,a  .a ��,FOa �a ,%j Oa a a a �a  Y hOP[OY�uOPU � �y ��y  �   � �  � �  ��x�w�v
�x 
inm �w  
T
�v kfrmID   � � � � & R e :   d o m 0   m o n i t o r i n g � �u ��u   �    � � � ��D < h t m l >  
 < h e a d >  
 < m e t a   h t t p - e q u i v = " C o n t e n t - T y p e "   c o n t e n t = " t e x t / h t m l ;   c h a r s e t = u t f - 8 " >  
 < / h e a d >  
 < b o d y   s t y l e = " w o r d - w r a p :   b r e a k - w o r d ;   - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   c o l o r :   r g b ( 0 ,   0 ,   0 ) ;   f o n t - s i z e :   1 4 p x ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " >  
 < d i v > H i g h   l e v e l   t h i s   a l l   s e e m s   g o o d / a c c u r a t e   f o r   n e x t   s t e p s .   L e t s   s e t   u p   a   s y n c   t o   g e t   o n   t h e   s a m e   p a g e   h e r e   a r o u n d   t i m e l i n e s   a n d   I   c a n   s h a r e   o u r   o v e r   a l l   O p e r a t i o n a l   M e t r i c s   s t r a t e g y . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > I   d o   h a v e   s o m e   q u e s t i o n s   a r o u n d   n e t   b e n e f i t   o f   t h e   d o m 0   a g e n t   a n d   w h a t   w e   h a v e   t o d a y   i n   t e r m s   o f   N a g i o s   a n d   a l l   o f   t h e   t o o l i n g   b u i l t   a r o u n d   t h a t .   F o r   e x a m p l e   H o s t   S e r v e r   D o w n s   ( H S D )   I   h a d   a   h i g h   l e v e l   c o n v e r s a t i o n   a r o u n d   H S D s   w i t h   S a n j a y ,   A n d r e w ,   a n d   S h a n e  
   a n d   I   w a s   t r y i n g   t o   g e t   t h e   d e t a i l s   a n d   i t   w a s n  t   a p p a r e n t   t o   m e .   F o r   e x a m p l e   t o d a y   w h e n   a n   H S D   h a p p e n s   w e  r e   p u l l i n g   i n   N a g i o s ,   N o v a   D B ,   a n d   a   t h i r d   s o m e t i m e s   f o u r t h   d a t a s o u r c e .   I  m   a s s u m i n g   w e   c o u l d   r e p l a c e   s o m e   o f   t h e   N a g i o s   p a r t s   w i t h   t h e   d o m 0   a g e n t   b u t  
   w o n d e r i n g   w h e r e   t h e   d e l t a   i s . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > - T r e y < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < s p a n   i d = " O L K _ S R C _ B O D Y _ S E C T I O N " >  
 < d i v   s t y l e = " f o n t - f a m i l y : C a l i b r i ;   f o n t - s i z e : 1 1 p t ;   t e x t - a l i g n : l e f t ;   c o l o r : b l a c k ;   B O R D E R - B O T T O M :   m e d i u m   n o n e ;   B O R D E R - L E F T :   m e d i u m   n o n e ;   P A D D I N G - B O T T O M :   0 i n ;   P A D D I N G - L E F T :   0 i n ;   P A D D I N G - R I G H T :   0 i n ;   B O R D E R - T O P :   # b 5 c 4 d f   1 p t   s o l i d ;   B O R D E R - R I G H T :   m e d i u m   n o n e ;   P A D D I N G - T O P :   3 p t " >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > F r o m :   < / s p a n > A l e x a n d e r   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M " > a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > D a t e :   < / s p a n > F r i d a y ,   A p r i l   1 7 ,   2 0 1 5   a t   1 0 : 0 9   A M < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > T o :   < / s p a n > T r e y   H o e h n e   & l t ; < a   h r e f = " m a i l t o : t r e y . h o e h n e @ r a c k s p a c e . c o m " > t r e y . h o e h n e @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > S u b j e c t :   < / s p a n > R e :   d o m 0   m o n i t o r i n g < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v >  
 < d i v   s t y l e = " w o r d - w r a p :   b r e a k - w o r d ;   - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   c o l o r :   r g b ( 0 ,   0 ,   0 ) ;   f o n t - s i z e :   1 4 p x ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " >  
 < d i v > H e y a   T r e y , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > W e l l ,   t h e   i n i t i a l   t e s t   i s   m e r e l y   t o   p r o v e   t h a t   t h e   a g e n t   i n s t a l l s .   & n b s p ; T h a t   s h o u l d   s e r i o u s l y   t a k e   a   m e r e   3 0   s e c o n d s .   & n b s p ; I n i t i a l l y ,   w e  r e   j u s t   f i g h t i n g   t h e   s t r a n g e   p e r c e p t i o n   t h a t   t h e   a g e n t   c o u l d n  t   w o r k   o n   t h e s e   h y p e r v i s o r s   ( t h e y   t o t a l l y   c a n ,   a n d   s h o u l d ) . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > B u t   y o u   a n d   I   c o u l d   c o m e   u p   w i t h   a   p l a n   f o r   a f t e r   t h a t .   & n b s p ; I t  l l   b e   s o m e t h i n g   l i k e : < / d i v >  
 < o l >  
 < l i > F i g u r i n g   o u t   h o w   t o   r o l l   i t   o u t   t o   a l l   n e w   m a c h i n e s < / l i > < l i > F i g u r i n g   o u t   h o w   t o   r o l l   i t   o u t   t o   e x i s t i n g   m a c h i n e s < / l i > < l i > S e t t i n g   u p   c h e c k s   a n d   a l a r m s   i n   M o n i t o r i n g < / l i > < l i > S e t t i n g   u p   d a s h b o a r d s   ( o r   p e r h a p s   e v e n   s i m p l y   c o n v e r t i n g   e x i s t i n g   d a s h b o a r d s ) < / l i > < l i > D o c s / T r a i n i n g ,   i f   a n y < / l i > < / o l >  
 < d i v > J u s t   s o m e   t h i n g s   o f f   t h e   t o p   o f   m y   h e a d .   & n b s p ; N o t   t h e   h u g e s t   a m o u n t   o f   t i m e   t o   d o   a l l   t h i s ,   b u t   a l s o   m o r e   t h a n   z e r o   e f f o r t   s o   w e  l l   s c h e d u l e   a c c o r d i n g l y . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > L e t   m e   k n o w   w h a t   t h o u g h t s / q u e s t i o n s   y o u   h a v e . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > C h e e r s , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > - A l e x < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < s p a n   i d = " O L K _ S R C _ B O D Y _ S E C T I O N " >  
 < d i v   s t y l e = " f o n t - f a m i l y : C a l i b r i ;   f o n t - s i z e : 1 1 p t ;   t e x t - a l i g n : l e f t ;   c o l o r : b l a c k ;   B O R D E R - B O T T O M :   m e d i u m   n o n e ;   B O R D E R - L E F T :   m e d i u m   n o n e ;   P A D D I N G - B O T T O M :   0 i n ;   P A D D I N G - L E F T :   0 i n ;   P A D D I N G - R I G H T :   0 i n ;   B O R D E R - T O P :   # b 5 c 4 d f   1 p t   s o l i d ;   B O R D E R - R I G H T :   m e d i u m   n o n e ;   P A D D I N G - T O P :   3 p t " >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > F r o m :   < / s p a n > T r e y   H o e h n e   & l t ; < a   h r e f = " m a i l t o : t r e y . h o e h n e @ r a c k s p a c e . c o m " > t r e y . h o e h n e @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > D a t e :   < / s p a n > F r i d a y ,   A p r i l   1 7 ,   2 0 1 5   a t   8 : 0 3   A M < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > T o :   < / s p a n > A l e x   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m " > a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > S u b j e c t :   < / s p a n > R e :   d o m 0   m o n i t o r i n g < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v >  
 < d i v   s t y l e = " w o r d - w r a p :   b r e a k - w o r d ;   - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   c o l o r :   r g b ( 0 ,   0 ,   0 ) ;   f o n t - s i z e :   1 4 p x ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " >  
 < d i v > H i   A l e x , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > Y e s   p l e a s e   i n c l u d e   m e .   I   w o u l d   s a y   t h a t   t h e   h i g h e r   p r i o r i t y   i t e m   w o u l d   b e   t h e   c a r b o n - r e l a y   p i e c e   a n d   b e i n g   a b l e   t o   s h i p   o u r   e x i s t i n g   d a t a .   K e e k z  s   p r i o r i t i e s   a r e   p r o b a b l y   g o i n g   t o   b e   a   b i t   s t r a i n e d   w i t h   s o m e   o t h e r   m e t r i c s   p r o j e c t s   w e   h a v e   c u r r e n t l y   b u t  
   t h e r e   i s   a   l o t   o f   i n t e r e s t   i n   t h e   a g e n t   s o   w e   w a n t   t o   m a k e   t h i s   h a p p e n . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > T h a n k s , < / d i v >  
 < d i v > T r e y < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < s p a n   i d = " O L K _ S R C _ B O D Y _ S E C T I O N " >  
 < d i v   s t y l e = " f o n t - f a m i l y : C a l i b r i ;   f o n t - s i z e : 1 1 p t ;   t e x t - a l i g n : l e f t ;   c o l o r : b l a c k ;   B O R D E R - B O T T O M :   m e d i u m   n o n e ;   B O R D E R - L E F T :   m e d i u m   n o n e ;   P A D D I N G - B O T T O M :   0 i n ;   P A D D I N G - L E F T :   0 i n ;   P A D D I N G - R I G H T :   0 i n ;   B O R D E R - T O P :   # b 5 c 4 d f   1 p t   s o l i d ;   B O R D E R - R I G H T :   m e d i u m   n o n e ;   P A D D I N G - T O P :   3 p t " >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > F r o m :   < / s p a n > A l e x a n d e r   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M " > a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > D a t e :   < / s p a n > T h u r s d a y ,   A p r i l   1 6 ,   2 0 1 5   a t   5 : 4 5   P M < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > T o :   < / s p a n > T r e y   H o e h n e   & l t ; < a   h r e f = " m a i l t o : t r e y . h o e h n e @ r a c k s p a c e . c o m " > t r e y . h o e h n e @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > S u b j e c t :   < / s p a n > R e :   d o m 0   m o n i t o r i n g < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v >  
 < d i v   s t y l e = " w o r d - w r a p :   b r e a k - w o r d ;   - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   c o l o r :   r g b ( 0 ,   0 ,   0 ) ;   f o n t - s i z e :   1 4 p x ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " >  
 < d i v > H e y   t h e r e   T r e y , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > I   w a s   t o l d   b y   S a n j a y   t h a t   y o u   m i g h t   b e   h e l p i n g   l e a d   t h i s   d o m 0   e f f o r t      i s   t h a t   t r u e ? < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > I f   s o ,   I  l l   l o o p   y o u   i n t o   t h e s e   e m a i l s   i n   t h e   f u t u r e . < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > C h e e r s , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > - A l e x < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < s p a n   i d = " O L K _ S R C _ B O D Y _ S E C T I O N " >  
 < d i v   s t y l e = " f o n t - f a m i l y : C a l i b r i ;   f o n t - s i z e : 1 1 p t ;   t e x t - a l i g n : l e f t ;   c o l o r : b l a c k ;   B O R D E R - B O T T O M :   m e d i u m   n o n e ;   B O R D E R - L E F T :   m e d i u m   n o n e ;   P A D D I N G - B O T T O M :   0 i n ;   P A D D I N G - L E F T :   0 i n ;   P A D D I N G - R I G H T :   0 i n ;   B O R D E R - T O P :   # b 5 c 4 d f   1 p t   s o l i d ;   B O R D E R - R I G H T :   m e d i u m   n o n e ;   P A D D I N G - T O P :   3 p t " >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > F r o m :   < / s p a n > A l e x   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m " > a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > D a t e :   < / s p a n > T h u r s d a y ,   A p r i l   1 6 ,   2 0 1 5   a t   3 : 4 2   P M < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > T o :   < / s p a n > D a n   S p r a g g i n s   & l t ; < a   h r e f = " m a i l t o : d a n . s p r a g g i n s @ R A C K S P A C E . C O M " > d a n . s p r a g g i n s @ R A C K S P A C E . C O M < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > C c :   < / s p a n > P a u l   V o c c i o   & l t ; < a   h r e f = " m a i l t o : p a u l . v o c c i o @ r a c k s p a c e . c o m " > p a u l . v o c c i o @ r a c k s p a c e . c o m < / a > & g t ; ,   M a t t   V a n   W i n k l e   & l t ; < a   h r e f = " m a i l t o : m v a n w i n k @ r a c k s p a c e . c o m " > m v a n w i n k @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > S u b j e c t :   < / s p a n > R e :   d o m 0   m o n i t o r i n g < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v >  
 < d i v   s t y l e = " w o r d - w r a p :   b r e a k - w o r d ;   - w e b k i t - n b s p - m o d e :   s p a c e ;   - w e b k i t - l i n e - b r e a k :   a f t e r - w h i t e - s p a c e ;   c o l o r :   r g b ( 0 ,   0 ,   0 ) ;   f o n t - s i z e :   1 4 p x ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " >  
 < d i v > H e y   t h e r e , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > J u s t   c h e c k i n g   i n   t o   s e e   i f   t h e r e  s   a   g o o d   p e r s o n   t o   t a l k   t o   o n   t h i s   s u b j e c t .   & n b s p ; < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > I f   i t  s   u s e f u l :   I  m   w o r k i n g   w i t h   K e e k s   a l r e a d y   o n   s e t t i n g   u p   s o m e   c a r b o n - r e l a y   s t u f f   f o r   g e t t i n g   C o m p u t e  s   e x i s t i n g   g r a p h i t e   m e t r i c s   t o   u s   d i r e c t l y .   & n b s p ; I f   h e   h a s   t h e   p o w e r ,   p e r h a p s   I   c a n   w o r k   w i t h   h i m   t o   t e s t   o u t   t h e   d o m 0   s t u f f ? < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > C h e e r s , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > - A l e x < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < s p a n   i d = " O L K _ S R C _ B O D Y _ S E C T I O N " >  
 < d i v   s t y l e = " f o n t - f a m i l y : C a l i b r i ;   f o n t - s i z e : 1 1 p t ;   t e x t - a l i g n : l e f t ;   c o l o r : b l a c k ;   B O R D E R - B O T T O M :   m e d i u m   n o n e ;   B O R D E R - L E F T :   m e d i u m   n o n e ;   P A D D I N G - B O T T O M :   0 i n ;   P A D D I N G - L E F T :   0 i n ;   P A D D I N G - R I G H T :   0 i n ;   B O R D E R - T O P :   # b 5 c 4 d f   1 p t   s o l i d ;   B O R D E R - R I G H T :   m e d i u m   n o n e ;   P A D D I N G - T O P :   3 p t " >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > F r o m :   < / s p a n > D a n   S p r a g g i n s   & l t ; < a   h r e f = " m a i l t o : d a n . s p r a g g i n s @ R A C K S P A C E . C O M " > d a n . s p r a g g i n s @ R A C K S P A C E . C O M < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > D a t e :   < / s p a n > M o n d a y ,   A p r i l   6 ,   2 0 1 5   a t   7 : 0 4   P M < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > T o :   < / s p a n > A l e x   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m " > a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > C c :   < / s p a n > P a u l   V o c c i o   & l t ; < a   h r e f = " m a i l t o : p a u l . v o c c i o @ r a c k s p a c e . c o m " > p a u l . v o c c i o @ r a c k s p a c e . c o m < / a > & g t ; ,   M a t t   V a n   W i n k l e   & l t ; < a   h r e f = " m a i l t o : m v a n w i n k @ r a c k s p a c e . c o m " > m v a n w i n k @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > S u b j e c t :   < / s p a n > R e :   d o m 0   m o n i t o r i n g < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v >  
 < d i v   d i r = " a u t o " >  
 < d i v > M a t t , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > C a n   y o u   h e l p   d r i v e   t h i s ?   I   k n o w   t h e r e   w e r e   s o m e   c o n c e r n s   a b o u t   i n s t a l l i n g   a n   a g e n t   o n   t h e   h o s t s .   W e   c a n   t e s t   t h i s   a n d   s e e   h o w   i t   g o e s   t h o u g h . < b r >  
 < b r >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ;   f o n t - s i z e :   1 3 p t ; " > T h a n k s , < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ; " > < b r >  
 < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ; " > D a n   S p r a g g i n s < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ; " > D i r e c t o r ,   S o f t w a r e   D e v e l o p m e n t < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ; " > E m a i l : & n b s p ; < a   h r e f = " m a i l t o : d a n . s p r a g g i n s @ r a c k s p a c e . c o m " > d a n . s p r a g g i n s @ r a c k s p a c e . c o m < / a > < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ; " > O f f i c e : & n b s p ; < a   h r e f = " t e l : ( 2 1 0 ) % 2 0 3 1 2 - 8 4 9 1 "   x - a p p l e - d a t a - d e t e c t o r s = " t r u e "   x - a p p l e - d a t a - d e t e c t o r s - t y p e = " t e l e p h o n e "   x - a p p l e - d a t a - d e t e c t o r s - r e s u l t = " 0 / 1 " > ( 2 1 0 )  
   3 1 2 - 8 4 9 1 < / a > < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l "   s t y l e = " m a r g i n :   0 i n   0 i n   0 . 0 0 0 1 p t ; " > < s p a n   s t y l e = " b a c k g r o u n d - c o l o r :   r g b a ( 2 5 5 ,   2 5 5 ,   2 5 5 ,   0 ) ; " > M o b i l e : & n b s p ; < a   h r e f = " t e l : ( 2 1 0 ) % 2 0 3 0 7 - 9 2 5 4 "   x - a p p l e - d a t a - d e t e c t o r s = " t r u e "   x - a p p l e - d a t a - d e t e c t o r s - t y p e = " t e l e p h o n e "   x - a p p l e - d a t a - d e t e c t o r s - r e s u l t = " 0 / 2 " > ( 2 1 0 )  
   3 0 7 - 9 2 5 4 < / a > < / s p a n > < / p >  
 < / d i v >  
 < d i v > < b r >  
 O n   A p r   6 ,   2 0 1 5 ,   a t   8 : 4 2   P M ,   A l e x a n d e r   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M " > a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M < / a > & g t ;   w r o t e : < b r >  
 < b r >  
 < / d i v >  
 < b l o c k q u o t e   t y p e = " c i t e " >  
 < d i v >  
 < d i v > H e y   t h e r e , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > I t   s e e m s   t h a t   m y   t e a m   i s   w a y   a h e a d   o f   m e   a n d   a l r e a d y   h a s   a   3 2 - b i t   v e r s i o n   b u i l t : < / d i v >  
 < u l >  
 < l i > < a   h r e f = " h t t p : / / s t a b l e . p a c k a g e s . c l o u d m o n i t o r i n g . r a c k s p a c e . c o m / x e n s e r v e r - 6 - i a 3 2 / " > h t t p : / / s t a b l e . p a c k a g e s . c l o u d m o n i t o r i n g . r a c k s p a c e . c o m / x e n s e r v e r - 6 - i a 3 2 / < / a > < / l i > < / u l >  
 < d i v > W h a t   a r e   t h e   n e x t   s t e p s   t o   s e e   i f   t h i s   w o r k s ?   & n b s p ; I s   t h e r e   s o m e o n e   w h o   c a n   h e l p   m e   g e t   t h i s   i n s t a l l e d   o n   s o m e   t e s t   d o m 0 ? < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > T h a n k s   v e r y   m u c h , < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > - A l e x < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < s p a n   i d = " O L K _ S R C _ B O D Y _ S E C T I O N " >  
 < d i v   s t y l e = " f o n t - f a m i l y : C a l i b r i ;   f o n t - s i z e : 1 1 p t ;   t e x t - a l i g n : l e f t ;   c o l o r : b l a c k ;   B O R D E R - B O T T O M :   m e d i u m   n o n e ;   B O R D E R - L E F T :   m e d i u m   n o n e ;   P A D D I N G - B O T T O M :   0 i n ;   P A D D I N G - L E F T :   0 i n ;   P A D D I N G - R I G H T :   0 i n ;   B O R D E R - T O P :   # b 5 c 4 d f   1 p t   s o l i d ;   B O R D E R - R I G H T :   m e d i u m   n o n e ;   P A D D I N G - T O P :   3 p t " >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > F r o m :   < / s p a n > D a n   S p r a g g i n s   & l t ; < a   h r e f = " m a i l t o : d a n . s p r a g g i n s @ R A C K S P A C E . C O M " > d a n . s p r a g g i n s @ R A C K S P A C E . C O M < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > D a t e :   < / s p a n > F r i d a y ,   A p r i l   3 ,   2 0 1 5   a t   8 : 5 7   A M < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > T o :   < / s p a n > P a u l   V o c c i o   & l t ; < a   h r e f = " m a i l t o : p a u l . v o c c i o @ r a c k s p a c e . c o m " > p a u l . v o c c i o @ r a c k s p a c e . c o m < / a > & g t ; ,   A l e x   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m " > a l e x a n d e r . s c a m m o n @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > C c :   < / s p a n > M a t t   V a n   W i n k l e   & l t ; < a   h r e f = " m a i l t o : m v a n w i n k @ r a c k s p a c e . c o m " > m v a n w i n k @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < s p a n   s t y l e = " f o n t - w e i g h t : b o l d " > S u b j e c t :   < / s p a n > R E :   d o m 0   m o n i t o r i n g < b r >  
 < / d i v >  
 < d i v > < b r >  
 < / d i v >  
 < d i v   x m l n s : v = " u r n : s c h e m a s - m i c r o s o f t - c o m : v m l "   x m l n s : o = " u r n : s c h e m a s - m i c r o s o f t - c o m : o f f i c e : o f f i c e "   x m l n s : w = " u r n : s c h e m a s - m i c r o s o f t - c o m : o f f i c e : w o r d "   x m l n s : m = " h t t p : / / s c h e m a s . m i c r o s o f t . c o m / o f f i c e / 2 0 0 4 / 1 2 / o m m l "   x m l n s = " h t t p : / / w w w . w 3 . o r g / T R / R E C - h t m l 4 0 " >  
 < m e t a   n a m e = " G e n e r a t o r "   c o n t e n t = " M i c r o s o f t   W o r d   1 5   ( f i l t e r e d   m e d i u m ) " >  
 < s t y l e > < ! - -  
 / *   F o n t   D e f i n i t i o n s   * /  
 @ f o n t - f a c e  
 	 { f o n t - f a m i l y : " C a m b r i a   M a t h " ;  
 	 p a n o s e - 1 : 2   4   5   3   5   4   6   3   2   4 ; }  
 @ f o n t - f a c e  
 	 { f o n t - f a m i l y : C a l i b r i ;  
 	 p a n o s e - 1 : 2   1 5   5   2   2   2   4   3   2   4 ; }  
 @ f o n t - f a c e  
 	 { f o n t - f a m i l y : C o n s o l a s ;  
 	 p a n o s e - 1 : 2   1 1   6   9   2   2   4   3   2   4 ; }  
 / *   S t y l e   D e f i n i t i o n s   * /  
 p . M s o N o r m a l ,   l i . M s o N o r m a l ,   d i v . M s o N o r m a l  
 	 { m a r g i n : 0 i n ;  
 	 m a r g i n - b o t t o m : . 0 0 0 1 p t ;  
 	 f o n t - s i z e : 1 2 . 0 p t ;  
 	 f o n t - f a m i l y : " T i m e s   N e w   R o m a n " , s e r i f ; }  
 a : l i n k ,   s p a n . M s o H y p e r l i n k  
 	 { m s o - s t y l e - p r i o r i t y : 9 9 ;  
 	 c o l o r : b l u e ;  
 	 t e x t - d e c o r a t i o n : u n d e r l i n e ; }  
 a : v i s i t e d ,   s p a n . M s o H y p e r l i n k F o l l o w e d  
 	 { m s o - s t y l e - p r i o r i t y : 9 9 ;  
 	 c o l o r : p u r p l e ;  
 	 t e x t - d e c o r a t i o n : u n d e r l i n e ; }  
 s p a n . E m a i l S t y l e 1 7  
 	 { m s o - s t y l e - t y p e : p e r s o n a l - r e p l y ;  
 	 f o n t - f a m i l y : " C a l i b r i " , s a n s - s e r i f ;  
 	 c o l o r : # 1 F 4 9 7 D ; }  
 . M s o C h p D e f a u l t  
 	 { m s o - s t y l e - t y p e : e x p o r t - o n l y ;  
 	 f o n t - s i z e : 1 0 . 0 p t ; }  
 @ p a g e   W o r d S e c t i o n 1  
 	 { s i z e : 8 . 5 i n   1 1 . 0 i n ;  
 	 m a r g i n : 1 . 0 i n   1 . 0 i n   1 . 0 i n   1 . 0 i n ; }  
 d i v . W o r d S e c t i o n 1  
 	 { p a g e : W o r d S e c t i o n 1 ; }  
 - - > < / s t y l e > < ! - - [ i f   g t e   m s o   9 ] > < x m l >  
 < o : s h a p e d e f a u l t s   v : e x t = " e d i t "   s p i d m a x = " 1 0 2 6 "   / >  
 < / x m l > < ! [ e n d i f ] - - > < ! - - [ i f   g t e   m s o   9 ] > < x m l >  
 < o : s h a p e l a y o u t   v : e x t = " e d i t " >  
 < o : i d m a p   v : e x t = " e d i t "   d a t a = " 1 "   / >  
 < / o : s h a p e l a y o u t > < / x m l > < ! [ e n d i f ] - - >  
 < d i v   l a n g = " E N - U S "   l i n k = " b l u e "   v l i n k = " p u r p l e " >  
 < d i v   c l a s s = " W o r d S e c t i o n 1 " >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > I   s e c o n d   t h i s .   I   w o u l d   l o v e   t o   w o r k   t o g e t h e r   o n   t h i s   e f f o r t .   W e   r e a l l y   n e e d   t h i s   f u n c t i o n a l i t y . < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > D a n   S p r a g g i n s < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > D i r e c t o r ,   S o f t w a r e   D e v e l o p m e n t < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > E m a i l :  
 < a   h r e f = " m a i l t o : d a n . s p r a g g i n s @ r a c k s p a c e . c o m " > < s p a n   s t y l e = " c o l o r : # 0 5 6 3 C 1 " > d a n . s p r a g g i n s @ r a c k s p a c e . c o m < / s p a n > < / a > < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > O f f i c e :   ( 2 1 0 )   3 1 2 - 8 4 9 1 < o : p > < / o : p > < / s p a n > < / p >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > M o b i l e :   ( 2 1 0 )   3 0 7 - 9 2 5 4 < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   r g b ( 3 1 ,   7 3 ,   1 2 5 ) ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < d i v >  
 < d i v   s t y l e = " b o r d e r : n o n e ; b o r d e r - t o p : s o l i d   # E 1 E 1 E 1   1 . 0 p t ; p a d d i n g : 3 . 0 p t   0 i n   0 i n   0 i n " >  
 < p   c l a s s = " M s o N o r m a l " > < b > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " > F r o m : < / s p a n > < / b > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ; " >   P a u l   V o c c i o  
 < b r >  
 < b > S e n t : < / b >   F r i d a y ,   A p r i l   3 ,   2 0 1 5   1 0 : 5 1   A M < b r >  
 < b > T o : < / b >   A l e x a n d e r   S c a m m o n < b r >  
 < b > C c : < / b >   D a n   S p r a g g i n s ;   M a t t   V a n   W i n k l e < b r >  
 < b > S u b j e c t : < / b >   R e :   d o m 0   m o n i t o r i n g < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < / d i v >  
 < p   c l a s s = " M s o N o r m a l " > < o : p > & n b s p ; < / o : p > < / p >  
 < d i v >  
 < d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > A l e x , & n b s p ; < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > F o r   s u r e .   I   w o u l d   b e   t h r i l l e d   i f   w e   c o u l d   w o r k   t o g e t h e r   t o   g e t   s o m e t h i n g   g o i n g   f o r   u s   i n   t h a t   c a p a c i t y .   I  m   l o o p i n g   D a n   a n d   V W   w h o   w o u l d   b e   l e a d i n g   t h a t   e f f o r t .  
   T h a n k s   f o r   r e a c h i n g   o u t . & n b s p ; < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > - - & n b s p ; < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > T h a n k s , & n b s p ; < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > p v o < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v   s t y l e = " b o r d e r : n o n e ; b o r d e r - t o p : s o l i d   # B 5 C 4 D F   1 . 0 p t ; p a d d i n g : 3 . 0 p t   0 i n   0 i n   0 i n " >  
 < p   c l a s s = " M s o N o r m a l " > < b > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > F r o m :  
 < / s p a n > < / b > < s p a n   s t y l e = " f o n t - s i z e :   1 1 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > A l e x a n d e r   S c a m m o n   & l t ; < a   h r e f = " m a i l t o : a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M " > a l e x a n d e r . s c a m m o n @ R A C K S P A C E . C O M < / a > & g t ; < b r >  
 < b > D a t e :   < / b > F r i d a y ,   A p r i l   3 ,   2 0 1 5   a t   9 : 5 2   A M < b r >  
 < b > T o :   < / b > P a u l   V o c c i o   & l t ; < a   h r e f = " m a i l t o : p a u l . v o c c i o @ r a c k s p a c e . c o m " > p a u l . v o c c i o @ r a c k s p a c e . c o m < / a > & g t ; < b r >  
 < b > S u b j e c t :   < / b > d o m 0   m o n i t o r i n g < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > H e y   t h e r e   p v o , < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > A   l o n g   t i m e   b a c k   i n   t h e   h a l l w a y s   o f   C a s t l e ,   w e   h a d   a   c o n v e r s a t i o n   a b o u t   g e t t i n g   t h e   M a a S   a g e n t   o n   d o m 0 .   & n b s p ; I   t h i n k   t h e   i s s u e   a t   t h e   t i m e   w a s   c o m p i l i n g   t o   3 2 - b i t ,  
   a n d   t h e   p r o j e c t   s t a l l e d   o u t   a t   t h a t   p o i n t . < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > I f   t h a t  s   t h e   c a s e ,   I  d   l i k e   t o   r e - o p e n   t h e   c o n v e r s a t i o n   b e c a u s e   I   b e l i e v e   t h a t   c o m p i l i n g   t o   3 2 - b i t   r e a l l y   s h o u l d n  t   b e   a   p r o b l e m   f o r   u s .   & n b s p ; d o m 0   m o n i t o r i n g  
   s t i l l   s e e m s   l i k e   a   c r u c i a l l y   i m p o r t a n t   t h i n g   f o r   u s   t o   b e   a b l e   t o   p r o v i d e ,   a n d   i f   c o m p i l a t i o n   w a s   t h e   o n l y   b l o c k e r   i t  s   s o m e t h i n g   t h a t   m y   t e a m   s h o u l d   w o r k   t o   u n b l o c k . < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > O n   t h e   a s s u m p t i o n   t h a t   w e   c a n   o v e r c o m e   t h a t   i s s u e   o n   o u r   s i d e ,   i s   t h e r e   s o m e o n e   I   c a n   w o r k   w i t h   o n   y o u r   s i d e   t o   g e t   a   P O C   o f   a n   a g e n t   o n   d o m 0   w o r k i n g ? < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > T h a n k s   v e r y   m u c h , < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > < o : p > & n b s p ; < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < d i v >  
 < p   c l a s s = " M s o N o r m a l " > < s p a n   s t y l e = " f o n t - s i z e :   1 0 . 5 p t ;   f o n t - f a m i l y :   C a l i b r i ,   s a n s - s e r i f ;   c o l o r :   b l a c k ; " > - A l e x < o : p > < / o : p > < / s p a n > < / p >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < / d i v >  
 < / s p a n > < / d i v >  
 < / b l o c k q u o t e >  
 < / d i v >  
 < / d i v >  
 < / s p a n > < / d i v >  
 < / d i v >  
 < / s p a n > < / d i v >  
 < / d i v >  
 < / s p a n > < / d i v >  
 < / d i v >  
 < / s p a n > < / d i v >  
 < / d i v >  
 < / s p a n >  
 < / b o d y >  
 < / h t m l >  
��  ��  ��   ascr  ��ޭ