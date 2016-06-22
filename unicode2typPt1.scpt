FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ( "   Created by: Peter David Shannon     � 	 	 D       C r e a t e d   b y :   P e t e r   D a v i d   S h a n n o n   
  
 l     ��  ��        Created on: 2016-04-11     �   2       C r e a t e d   o n :   2 0 1 6 - 0 4 - 1 1      l     ��������  ��  ��        l     ��  ��    ) #   Copyright (c) 2016 Peter Shannon     �   F       C o p y r i g h t   ( c )   2 0 1 6   P e t e r   S h a n n o n      l     ��  ��    ` Z   Feel free to modify the script for your own use, but leave the copyright notice intact.     �   �       F e e l   f r e e   t o   m o d i f y   t h e   s c r i p t   f o r   y o u r   o w n   u s e ,   b u t   l e a v e   t h e   c o p y r i g h t   n o t i c e   i n t a c t .      l     ��������  ��  ��        l     ��   ��    N H I use Keyboard Maestro to trigger this script if the clipboard changes.      � ! ! �   I   u s e   K e y b o a r d   M a e s t r o   t o   t r i g g e r   t h i s   s c r i p t   i f   t h e   c l i p b o a r d   c h a n g e s .   " # " l     �� $ %��   $ M G Perhaps there are some other automation programs which can do the same    % � & & �   P e r h a p s   t h e r e   a r e   s o m e   o t h e r   a u t o m a t i o n   p r o g r a m s   w h i c h   c a n   d o   t h e   s a m e #  ' ( ' l     �� ) *��   )   thing.    * � + +    t h i n g . (  , - , l     ��������  ��  ��   -  . / . i      0 1 0 I      �� 2���� 0 already_exists   2  3�� 3 o      ���� 0 pchar pChar��  ��   1 k     W 4 4  5 6 5 l     �� 7 8��   7 N H Needed to add this check as the latest update for Keyboard Maestro now     8 � 9 9 �   N e e d e d   t o   a d d   t h i s   c h e c k   a s   t h e   l a t e s t   u p d a t e   f o r   K e y b o a r d   M a e s t r o   n o w   6  : ; : l     �� < =��   < @ : sometimes spots changes to the clipboard much more quicky    = � > > t   s o m e t i m e s   s p o t s   c h a n g e s   t o   t h e   c l i p b o a r d   m u c h   m o r e   q u i c k y ;  ? @ ? O     A B A r     C D C n    
 E F E 1    
��
�� 
MKvl F 4    �� G
�� 
MKvr G m     H H � I I  u n i c o d e R u l e S e t D o      ���� 0 mrulesetname mRuleSetName B m      J Jr                                                                                  KM*E  alis      Macintosh HD               ��H+   
1�Keyboard Maestro Engine.app                                     
2^�O�i        ����  	                	Resources     �4�      �O�     
1� 
1� 
1 �� �� 04  nMacintosh HD:Users: shannon: Downloads: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app  8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  [Users/shannon/Downloads/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app   /    ��   @  K L K l   ��������  ��  ��   L  M�� M O    W N O N Z    V P Q���� P I   �� R��
�� .coredoexnull���     **** R 4    �� S
�� 
RulS S o    ���� 0 mrulesetname mRuleSetName��   Q k    R T T  U V U r    % W X W n    # Y Z Y m   ! #��
�� 
Rule Z 4    !�� [
�� 
RulS [ o     ���� 0 mrulesetname mRuleSetName X o      ���� 0 mruleset mRuleSet V  \ ] \ X   & O ^�� _ ^ k   6 J ` `  a b a r   6 = c d c c   6 ; e f e n   6 9 g h g 1   7 9��
�� 
eStr h o   6 7���� 0 mrule mRule f m   9 :��
�� 
TEXT d o      ���� 0 
mexpansion 
mExpansion b  i�� i Z   > J j k���� j =   > A l m l o   > ?���� 0 
mexpansion 
mExpansion m o   ? @���� 0 pchar pChar k L   D F n n m   D E��
�� boovtrue��  ��  ��  �� 0 mrule mRule _ o   ) *���� 0 mruleset mRuleSet ]  o�� o L   P R p p m   P Q��
�� boovfals��  ��  ��   O m     q q�                                                                                  TypI  alis    X  Macintosh HD               ��H+     OTypinator.app                                                   ���6��        ����  	                Applications    �4�      �6F       O  (Macintosh HD:Applications: Typinator.app    T y p i n a t o r . a p p    M a c i n t o s h   H D  Applications/Typinator.app  / ��  ��   /  r s r l     ��������  ��  ��   s  t u t i     v w v I      �� x���� 0 check_decimal   x  y�� y o      ���� 0 pinput pInput��  ��   w k     t z z  { | { l     �� } ~��   } \ V Is the input a single character and outside the ASCII range and in the unicode range?    ~ �   �   I s   t h e   i n p u t   a   s i n g l e   c h a r a c t e r   a n d   o u t s i d e   t h e   A S C I I   r a n g e   a n d   i n   t h e   u n i c o d e   r a n g e ? |  � � � l     �� � ���   � 2 , Is the input a single character, return -1?    � � � � X   I s   t h e   i n p u t   a   s i n g l e   c h a r a c t e r ,   r e t u r n   - 1 ? �  � � � l     �� � ���   � 8 2 Or is the input an integer, return the integerp?     � � � � d   O r   i s   t h e   i n p u t   a n   i n t e g e r ,   r e t u r n   t h e   i n t e g e r p ?   �  � � � r      � � � m     ����  � o      ���� 0 biggestascii biggestAscii �  � � � r     � � � m    ����  �� � o      ����  0 biggestunicode biggestUnicode �  � � � Z    m � � ��� � F    ! � � � F     � � � =     � � � n     � � � 1   	 ��
�� 
leng � o    	���� 0 pinput pInput � m    ����  � ?     � � � n     � � � 1    ��
�� 
ID   � o    ���� 0 pinput pInput � o    ���� 0 biggestascii biggestAscii � B     � � � n     � � � 1    ��
�� 
ID   � o    ���� 0 pinput pInput � o    ����  0 biggestunicode biggestUnicode � k   $ & � �  � � � l  $ $�� � ���   � 1 + this is a non-core-ascii unicode character    � � � � V   t h i s   i s   a   n o n - c o r e - a s c i i   u n i c o d e   c h a r a c t e r �  ��� � L   $ & � � m   $ %��������   �  � � � B   ) 2 � � � n   ) , � � � 1   * ,��
�� 
leng � o   ) *���� 0 pinput pInput � n   , 1 � � � 1   / 1��
�� 
leng � l  , / ����� � c   , / � � � o   , -����  0 biggestunicode biggestUnicode � m   - .��
�� 
TEXT��  ��   �  ��� � Q   5 i � ��� � k   8 ` � �  � � � r   8 = � � � c   8 ; � � � o   8 9���� 0 pinput pInput � m   9 :��
�� 
nmbr � o      ���� 0 mnumber mNumber �  � � � r   > C � � � c   > A � � � o   > ?���� 0 pinput pInput � m   ? @��
�� 
long � o      ���� 0 minteger mInteger �  ��� � Z   D ` � ����� � F   D W � � � F   D O � � � =   D G � � � o   D E���� 0 mnumber mNumber � o   E F���� 0 minteger mInteger � ?   J M � � � o   J K���� 0 minteger mInteger � o   K L���� 0 biggestascii biggestAscii � B   R U � � � o   R S���� 0 minteger mInteger � o   S T����  0 biggestunicode biggestUnicode � L   Z \ � � o   Z [���� 0 minteger mInteger��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   �  � � � l  n n�� � ���   � I C If we get here then it's not a unicode character or decimal number    � � � � �   I f   w e   g e t   h e r e   t h e n   i t ' s   n o t   a   u n i c o d e   c h a r a c t e r   o r   d e c i m a l   n u m b e r �  ��� � R   n t�� � �
�� .ascrerr ****      � **** � m   r s � � � � � T N o t   a   u n i c o d e   c h a r a c t e r   o r   d e c i m a l   n u m b e r . � �� ���
�� 
errn � m   p q�������  ��   u  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 get_decimal_expansion   �  ��� � o      ���� 0 pdecimal pDecimal��  ��   � L      � � b      � � � b      � � � m      � � � � � : { S c r i p t s / U n i c o d e . a p p l e s c r i p t   � o    ���� 0 pdecimal pDecimal � m     � � � � �  } �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   main program    � � � �    m a i n   p r o g r a m �  � � � l     ���� � Q      � �  � r    
 I   �~�}�|
�~ .JonsgClp****    ��� null�}  �|   o      �{�{ 0 minput mInput � R      �z�y�x
�z .ascrerr ****      � ****�y  �x    k      l   �w�w   A ; if there is an error getting the clipboard contents, quit.    � v   i f   t h e r e   i s   a n   e r r o r   g e t t i n g   t h e   c l i p b o a r d   c o n t e n t s ,   q u i t . 	�v	 L    

 m    �u�u���v  ��  �   �  l   9�t�s Q    9 k       l   �r�r   M G Quick check to see if the clipboard contents have a unicode character     � �   Q u i c k   c h e c k   t o   s e e   i f   t h e   c l i p b o a r d   c o n t e n t s   h a v e   a   u n i c o d e   c h a r a c t e r    l   �q�q     or decimal number.    � &   o r   d e c i m a l   n u m b e r . �p r      I    �o�n�o 0 check_decimal    �m  o    �l�l 0 minput mInput�m  �n   o      �k�k 0 mdecimal mDecimal�p   R      �j!"
�j .ascrerr ****      � ****! o      �i�i 0 	errstring 	errString" �h#�g
�h 
errn# o      �f�f 0 	errnumber 	errNumber�g   Z   ( 9$%�e&$ =   ( +'(' o   ( )�d�d 0 	errnumber 	errNumber( m   ) *�c�c�% k   . 0)) *+* l  . .�b,-�b  , K E The clipboard does not contain anything we should be trying to turn    - �.. �   T h e   c l i p b o a r d   d o e s   n o t   c o n t a i n   a n y t h i n g   w e   s h o u l d   b e   t r y i n g   t o   t u r n  + /0/ l  . .�a12�a  1    into a unicode expansion.   2 �33 4   i n t o   a   u n i c o d e   e x p a n s i o n .0 4�`4 L   . 055 m   . /�_�_���`  �e  & R   3 9�^67
�^ .ascrerr ****      � ****6 o   7 8�]�] 0 	errstring 	errString7 �\8�[
�\ 
errn8 o   5 6�Z�Z 0 	errnumber 	errNumber�[  �t  �s   9:9 l     �Y�X�W�Y  �X  �W  : ;<; l  : N=�V�U= Z   : N>?�T@> =   : =ABA o   : ;�S�S 0 mdecimal mDecimalB m   ; <�R�R��? r   @ CCDC o   @ A�Q�Q 0 minput mInputD o      �P�P 0 mchar mChar�T  @ r   F NEFE I   F L�OG�N�O 0 get_decimal_expansion  G H�MH o   G H�L�L 0 mdecimal mDecimal�M  �N  F o      �K�K 0 mchar mChar�V  �U  < IJI l     �J�I�H�J  �I  �H  J KLK l     �GMN�G  M 4 . Check to see if we already have the expansion   N �OO \   C h e c k   t o   s e e   i f   w e   a l r e a d y   h a v e   t h e   e x p a n s i o nL PQP l  O `R�F�ER Z   O `ST�DUS H   O VVV I   O U�CW�B�C 0 already_exists  W X�AX o   P Q�@�@ 0 mchar mChar�A  �B  T L   Y [YY o   Y Z�?�? 0 mchar mChar�D  U L   ^ `ZZ m   ^ _�>�>���F  �E  Q [�=[ l     �<�;�:�<  �;  �:  �=       
�9\]^_`a�8b�7�9  \ �6�5�4�3�2�1�0�/�6 0 already_exists  �5 0 check_decimal  �4 0 get_decimal_expansion  
�3 .aevtoappnull  �   � ****�2 0 minput mInput�1 0 mdecimal mDecimal�0 0 mchar mChar�/  ] �. 1�-�,cd�+�. 0 already_exists  �- �*e�* e  �)�) 0 pchar pChar�,  c �(�'�&�%�$�( 0 pchar pChar�' 0 mrulesetname mRuleSetName�& 0 mruleset mRuleSet�% 0 mrule mRule�$ 0 
mexpansion 
mExpansiond  J�# H�" q�!� ������
�# 
MKvr
�" 
MKvl
�! 
RulS
�  .coredoexnull���     ****
� 
Rule
� 
kocl
� 
cobj
� .corecnte****       ****
� 
eStr
� 
TEXT�+ X� 
*��/�,E�UO� F*�/j  :*�/�,E�O (�[��l 
kh ��,�&E�O��  eY h[OY��OfY hU^ � w��fg�� 0 check_decimal  � �h� h  �� 0 pinput pInput�  f ������ 0 pinput pInput� 0 biggestascii biggestAscii�  0 biggestunicode biggestUnicode� 0 mnumber mNumber� 0 minteger mIntegerg �����
�	������ �� �  ��
� 
leng
� 
ID  
�
 
bool
�	 
TEXT
� 
nmbr
� 
long�  �  
� 
errn��� u�E�O�E�O��,k 	 	��,��&	 	��,��& iY F��,��&�, 9 -��&E�O��&E�O�� 	 ���&	 ���& �Y hW X  	hY hO)��l�_ � ��� ij��� 0 get_decimal_expansion  � ��k�� k  ���� 0 pdecimal pDecimal�   i ���� 0 pdecimal pDecimalj  � ��� �%�%` ��l����mn��
�� .aevtoappnull  �   � ****l k     `oo  �pp qq ;rr P����  ��  ��  m ������ 0 	errstring 	errString�� 0 	errnumber 	errNumbern ��������������s����������
�� .JonsgClp****    ��� null�� 0 minput mInput��  ��  �� 0 check_decimal  �� 0 mdecimal mDecimal�� 0 	errstring 	errStrings ������
�� 
errn�� 0 	errnumber 	errNumber��  ���
�� 
errn�� 0 mchar mChar�� 0 get_decimal_expansion  �� 0 already_exists  �� a *j  E�W 	X  iO *�k+ E�W X  ��  iY )�l�O�i  �E�Y 
*�k+ E�O*�k+  �Y ia �tt N u n i c o d e 2 t y p P t 1 . s c p t  u n i c o d e 2 t y p P t 2 . s c p t�8��b �uu  �7  ascr  ��ޭ