   M S B A M L   `   `   `  ����G  CPresentacion, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:PresentacionPresentacion  5   	       Presentacion.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Presentacion     5   	     � Title$  
MainWindow��5   	   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   6)   �� 5      $��4* �6   6*   �� 5      $��* �6   6)   �� 5      $��* �6   6)   �� 5      $��* �6   6)   �� 5      $��9* �6   6*    � ColumnDefinitions 5   
   �� 5      $��* �6   6+   �� 5      $��2* �6   6,   �� 5      $��6* �6   6,   .+�5   
   �� $��2��6   $��0��6!   $��5��6.   $��1q�6?   $��Stretch=�6J   $��Stretch=�6h   �� 5   
   $��Center=�6   $��Center=�6+   .��6H   	Nombre:6Q   �� 5   
   $��1��6   $
��10,2q�6#   $��Center=�61   $��26��6L   ��6X   �� *productoVisualizado.Nombre+�� 5   
   $��1��6   $��Center=�6   $��Center=�68   .��6U   Descripcion:6c   �� 5   
   $��1��6   $��1��6   $
��10,5q�6/   ��6=   �� *!productoVisualizado.Descripcion+�� 5   
   $��2��6   $��Center=�6   $��Center=�68   .��6U   Stock:6]   �� 5   
   $��2��6   $��1��6   $��	10,2,10,3q�6/   ��6B   �� *productoVisualizado.Stock+�� 5   
   $��3��6   $��Center=�6   $��Center=�68   .��6U   Stock Minimo:6d   �� 5   
   $��3��6   $��1��6    �� AcceptsReturn . $
��10,2q�6D   ��6R   �� *!productoVisualizado.StockMinimo+�� 5    
   -   5         ��Name$ Guardar��5       $��Guardar��6"   $��1��64   $��	10,3,10,1q�6D   $��4��6W   ��6d   �� *RegistrarProducto+&   System.Windows.Controls.DataGrid  5!   
   -   5          Name$ ProductGrid��5!      $��2��6)   $��	0,0,0,228q�6[   $��6��6n   ��69   �� *	Productos+5"      5#      5$      