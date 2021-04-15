%E13 - Cansu Sari

clear all
clc
format compact
%% Customers
c1=Customer()
c2=Customer('John')
c3=Customer('Emily','Rose')
c4=Customer('David','Black',1234567)
c5=Customer(4567891)
c6=Customer(1234567,'Harry','Carpenter')

%% Stocks
s1=Stock()
s2=Stock('VNET',5.43,c2,184,1.22)
s3=Stock('FCCN',0.01,c4,4500,0.15)
s4=Stock('EDXC',c6,1468642,0.05) 

%% Bonds
b1=Bond()
b2=Bond('JGBs',9074,c2,0.05)
b3=Bond(2571,'BTPs',c3,0.08)
b4=Bond('OATs',c6,0.08)

%% Property
p1=Property()
p2=Property('House at L.A.',2000000,c4,0.09)
p3=Property('House at NYC',c6,15000000,0.13)
p4=Property('House at Madrid',c3,3000000,0.25)




