   M S B A M L   `   `   `  ����F  BGmailClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:GmailClientGmailClient  5   	   #    GmailClient.OpenMessageWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:GmailClient     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Read Message��5   	   $	��350��5	   	   $	��600��6   $	��350��5
   	   $	��600��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��14(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Icon$ /Resources/gmail-icon.png��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5!   
   #  MaterialDesignThemes.Wpf.Card    MaterialDesignBodyLight#���  6      MaterialDesignCardBackground#���  5"      $
��Auto��5#      $��0��5$      $��0��6+   .��5%      ��  $  MaterialDesignSubtitle1TextBlock#��[ 6   $��Center=�5&      $��Center=�63   $��MESSAGE��5'      5(      �� 5)   
   -   5        $��txtboxFromWhom��5)       �� 
IsReadOnly . $��2��5*      $��0��6     MaterialDesignFilledTextBox#��[ 5+      $	��Top=�5,       �� AcceptsReturn .   �� TextWrapping$ WrapWithOverflow=�5.      )  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 Sender��5/      �� 50   
   -   5        $��txtboxTheme��50       . $��3��51      $��0��6   #��[ 52      $	��Top=�53       .  $ WrapWithOverflow=�55      $	 Theme��56      �� 57   
   -   5        $��
txtboxBody��57       . $��4��58      $��0��6   #��[ 59       . $
��Auto��5;      $
��Auto��6    $ WrapWithOverflow=�5<      $	 Message��5=      �� 5>   
   -   5        $��button_Delete��5>      $��5��5?      $��0��6    ! MaterialDesignFlatMidBgButton#��[ 5@      +  %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth1=�5A      $��5q�5B      ���	#FF670315 � Cursor$
 Hand��68   ��5C      �� 5D       & "MaterialDesignValidationErrorColor �� Color# �  6"   .��5F      ��  $	  MaterialDesignHeadline6TextBlock#��[	 6   $��Delete��6R   5G      �� 5H   
   -   5        $��button_Close��5H      $��6��5I      $��0��6   #��[ 5J      $
 Depth1=�5K      $��5q�5L      .��5M      �� #��[	 6   $��Close��6R   5N      5O      5P      