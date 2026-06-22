# RStudio-comandos
RStudio Saída de Comandos - Atividade 4

#> dados<-read.delim("clipboard")
#> str(dados)
#'data.frame':	6098 obs. of  10 variables:
# $ Unidades    : int  457 70 97 41 297 76 57 580 312 173 ...
# $ PrecoUN     : num  5.11 5.56 2.41 3.86 3.57 2.65 2.27 3.59 3.91 4.35 ...
# $ Desc        : num  19.27 3.14 9.9 3.85 14.29 ...
# $ VendasBrutas: num  2335 389 234 158 1060 ...
# $ InvestMKT   : num  245.2 56.1 26.3 14.4 105.8 ...
# $ CustoProdt  : num  1131.8 206.6 139.2 98.5 541 ...
# $ CustLogistic: num  123.3 38.4 16.4 11.7 43.8 ...
# $ ReceitaLiq  : num  1885 377 211 152 909 ...
# $ Lucro       : num  385 75.9 28.7 27.5 218.2 ...
# $ MargemLucro : num  20.4 20.1 13.6 18.1 24 ...
#> cor(dados)
#                Unidades     PrecoUN        Desc VendasBrutas   InvestMKT
#Unidades      1.00000000 -0.03975714  0.44567732    0.8390871  0.60449686
#PrecoUN      -0.03975714  1.00000000 -0.03841668    0.3584145  0.39693513
#Desc          0.44567732 -0.03841668  1.00000000    0.3755233  0.33436343
#VendasBrutas  0.83908710  0.35841447  0.37552334    1.0000000  0.77832764
#InvestMKT     0.60449686  0.39693513  0.33436343    0.7783276  1.00000000
#CustoProdt    0.81341754  0.37526217  0.31794605    0.9870640  0.77069583
#CustLogistic  0.72826356  0.47023744  0.24392937    0.9432011  0.77013881
#ReceitaLiq    0.83105912  0.36924789  0.32507046    0.9965948  0.76803096
#Lucro         0.79734438  0.24698334  0.28520150    0.8969998  0.51475603
#MargemLucro   0.36503367 -0.09746546  0.13714648    0.2813321 -0.04315004
#             CustoProdt CustLogistic ReceitaLiq     Lucro MargemLucro
#Unidades      0.8134175    0.7282636  0.8310591 0.7973444  0.36503367
#PrecoUN       0.3752622    0.4702374  0.3692479 0.2469833 -0.09746546
#Desc          0.3179461    0.2439294  0.3250705 0.2852015  0.13714648
#VendasBrutas  0.9870640    0.9432011  0.9965948 0.8969998  0.28133213
#InvestMKT     0.7706958    0.7701388  0.7680310 0.5147560 -0.04315004
#CustoProdt    1.0000000    0.9534879  0.9900401 0.8465668  0.21310036
#CustLogistic  0.9534879    1.0000000  0.9529552 0.8069928  0.18328010
#ReceitaLiq    0.9900401    0.9529552  1.0000000 0.9042846  0.28493387
#Lucro         0.8465668    0.8069928  0.9042846 1.0000000  0.52074547
#MargemLucro   0.2131004    0.1832801  0.2849339 0.5207455  1.00000000
#> nulo = lm(Lucro~1,data=dados)
#> completo = lm(Lucro~.,data=dados)
#> step(completo, data=dados, direction="backward") # mostra etapas
#Start:  AIC=-323631.6
#Lucro ~ Unidades + PrecoUN + Desc + VendasBrutas + InvestMKT + 
#    CustoProdt + CustLogistic + ReceitaLiq + MargemLucro
#
#               Df Sum of Sq      RSS     AIC
#- PrecoUN       1         0        0 -325228
#- MargemLucro   1         0        0 -323633
#<none>                             0 -323632
#- VendasBrutas  1         0        0 -323308
#- Desc          1         0        0 -322496
#- Unidades      1         0        0 -321593
#- CustLogistic  1   1083429  1083429   31605
#- ReceitaLiq    1  13510921 13510921   46993
#- InvestMKT     1  15243680 15243680   47729
#- CustoProdt    1  25480199 25480199   50861
#
#Step:  AIC=-325228.2
#Lucro ~ Unidades + Desc + VendasBrutas + InvestMKT + CustoProdt + 
#    CustLogistic + ReceitaLiq + MargemLucro
#
#               Df Sum of Sq      RSS     AIC
#- Unidades      1         0        0 -326629
#- MargemLucro   1         0        0 -325230
#<none>                             0 -325228
#- Desc          1         0        0 -323878
#- VendasBrutas  1         0        0 -323785
#- CustLogistic  1   1146504  1146504   31948
#- ReceitaLiq    1  13547923 13547923   47007
#- InvestMKT     1  15383809 15383809   47782
#- CustoProdt    1  25632431 25632431   50896
#
#Step:  AIC=-326628.8
#Lucro ~ Desc + VendasBrutas + InvestMKT + CustoProdt + CustLogistic + 
#    ReceitaLiq + MargemLucro
#
#               Df Sum of Sq      RSS     AIC
#- MargemLucro   1         0        0 -326631
#<none>                             0 -326629
#- VendasBrutas  1         0        0 -325086
#- Desc          1         0        0 -318258
#- CustLogistic  1   1236112  1236112   32405
#- ReceitaLiq    1  13761550 13761550   47101
#- InvestMKT     1  15387008 15387008   47782
#- CustoProdt    1  25659350 25659350   50900
#
#Step:  AIC=-326630.8
#Lucro ~ Desc + VendasBrutas + InvestMKT + CustoProdt + CustLogistic + 
#    ReceitaLiq
#
#               Df Sum of Sq      RSS     AIC
#<none>                             0 -326631
#- VendasBrutas  1         0        0 -325088
#- Desc          1         0        0 -318260
#- CustLogistic  1   1258778  1258778   32514
#- ReceitaLiq    1  15035963 15035963   47639
#- InvestMKT     1  18390811 18390811   48867
#- CustoProdt    1  33646777 33646777   52551
#
#Call:
#lm(formula = Lucro ~ Desc + VendasBrutas + InvestMKT + CustoProdt + 
#    CustLogistic + ReceitaLiq, data = dados)
#
#Coefficients:
# (Intercept)          Desc  VendasBrutas     InvestMKT    CustoProdt  CustLogistic  
#  -3.823e-12     1.148e-13    -3.381e-16    -1.000e+00    -1.000e+00    -1.000e+00  
#  ReceitaLiq  
#   1.000e+00  
#
#Mensagens de aviso:
#1: tentar selecionar um modelo sobre um ajuste essencialmente perfeito não faz sentido 
#2: tentar selecionar um modelo sobre um ajuste essencialmente perfeito não faz sentido 
#3: tentar selecionar um modelo sobre um ajuste essencialmente perfeito não faz sentido 
#4: tentar selecionar um modelo sobre um ajuste essencialmente perfeito não faz sentido
