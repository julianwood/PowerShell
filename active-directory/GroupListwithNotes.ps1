#Get AD-Group with Notes field (used to store owner information) and export to .CSV

 G e t - A D G r o u p   - F i l t e r   *   - S e a r c h B a s e   " O U = G r o u p s , D C = d o m a i n , D C = c o m "   - P r o p e r t i e s   n a m e , i n f o , n o t e s   |   s e l e c t   N a m e , I n f o , @ { N a m e = ' N o t e s ' ; E x p r e s s i o n = { [ s t r i n g ] : : j o i n ( "   " ,   ( $ _ . N o t e s ) ) } }   |   E x p o r t - C s v   G r o u p L i s t w i t h N o t e s . c s v   - N o T y p e I n f o r m a t i o n   
