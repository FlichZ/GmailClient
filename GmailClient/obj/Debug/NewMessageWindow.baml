   M S B A M L   `   `   `  ����F  BGmailClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:GmailClientGmailClient  5   	   "    GmailClient.NewMessageWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:GmailClient     5   	   _ [MaterialDesignThemes.Wpf, Version=4.5.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  New message��5   	   $	��450��5	   	   $	��800��6   $	��350��5
   	   $	��400��6      MaterialDesignBody#���   5   	   $��Regular"�5   	   $��14(�5   	   &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Icon$ /Resources/gmail-icon.png��5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��40 �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5    
   #  MaterialDesignThemes.Wpf.Card    MaterialDesignBodyLight#���  6      MaterialDesignCardBackground#���  5!      $
��Auto��5"      $��0��5#      $��0��6+   .��5$      ��  $  MaterialDesignSubtitle1TextBlock#��[ 6   $��Center=�5%      $��Center=�63   $��NEW MESSAGE��5&      5'      �� 5(   
   -   5        $��txtboxToWhom��5(      $��1��5)      $��0��6     MaterialDesignFilledTextBox#��[ 5*      $	��Top=�5+       �� AcceptsReturn .   �� TextWrapping$ WrapWithOverflow=�5-      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ To whom��5.      �� 5/   
   -   5        $��txtboxTheme��5/      $��2��50      $��0��6   #��[ 51      $	��Top=�52       .  $ WrapWithOverflow=�54      $ Theme��55      �� 56   
   -   5        $��txtboxFromWhom��56      $��3��57      $��0��6   #��[ 58      $	��Top=�59       .  $ WrapWithOverflow=�5;      $ 	From whom��5<      �� 5=   
   -   5        $��
txtboxBody��5=      $��4��5>      $��0��6   #��[ 5?       . $
��Auto��5A      $
��Auto��6    $ WrapWithOverflow=�5B      $ Message��5C      �� 5D   
   -   5        $��button_Send��5D      $��5��5E      $��0��6    ! MaterialDesignFlatMidBgButton#��[ 5F      +  %MaterialDesignThemes.Wpf.ShadowAssist	   ShadowDepth$	 Depth1=�5G      $��5q�5H      .��5I      ��  $  MaterialDesignHeadline6TextBlock#��[ 6   $
��Send��6R   5J      5K      5M      