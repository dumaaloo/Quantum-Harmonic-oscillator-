clc
clear
w=5.34*(10^21)
me=1.67*((10)^(-27))
e=1.6*(10^(-19))
h=1.054*(10^(-34))
n=input('enter the no. of intervals:')
l=(h/(me*w))^0.5
x1=-5*(10^-14)
x2=-x1
gb(1:4)=(0.5+(1:4))*h*w
dx=(x2-x1)/(n-1)
c=-(h^2)/(2*me*(dx^2))
a=ones(n-3,1)
ke=diag(a,1)+diag(a,-1)+(-2)*(eye(n-2,n-2))
x=linspace(x1,x2,n)
v=zeros(n,1)
for i=1:n
v(i)=(me*w*w*(x(i).^2))./(2)
end
pe=diag(v(2:n-1))
H=(ke.*c)+pe
[A,B]=spec(H)
count=4
//potential well plot------------------------------------
eval=diag(B)
figure
plot(x,v)
for i=1:count
 plot(x,eval(i),'r-')
 xlabel('x')
 ylabel('Potential(eV)')
 xstring(7*10^-15,eval(i),string(eval(i)))
end
title('Potential Well Plot')
t1=gca()
t1.data_bounds=[-1E-14,0;1E-14,2.3810526000000005E-12]
//normalisation-----------------------
for i=1:count
 Y=A(:,i).^2
 N(i)=inttrap(x(2:n-1),Y)
 wfn(:,i)=A(:,i)/sqrt(N(i))//------------------normalised wavefunction
 N=N(i)
end
figure
for i=1:count
 subplot(2,2,i)
 plot(x(2:n-1),(wfn(:,i).*wfn(:,i)))
 xlabel('x')
 ylabel('wavefunction squared')
 t1=gca()
 t1.data_bounds=[-1E-14,0;1E-14,2.3810526000000005E14]
end
//expectation values-------------------
for i=1:count
 Y=wfn(:,i).*(x(2:n-1)').*wfn(:,i)
 Y1=wfn(:,i).*(x(2:n-1)').*(x(2:n-1)').*wfn(:,i)
 Y4=wfn(:,i).*(v(2:n-1)).*wfn(:,i)
 exp_x(i)=inttrap(x(2:n-1),Y)
 exp_x2(i)=inttrap(x(2:n-1),Y1)
 exp_v(i)=inttrap(x(2:n-1),Y4)
end
xnew=x(2:n-1)
eta=(xnew./l)
for j=1:count
for i=1:n-3
xmid(i)=(xnew(i)+xnew(i+1))/2
dA(i,j)=(wfn(i+1,j)-wfn(i,j))/dx
Amid(i,j)=(wfn(i+1,j)+wfn(i,j))/2
end
end
xmid2=x(3:n-2)
for j=1:count
for i=1:n-4
d2A(i,j)=(wfn(i+2,j)-2*wfn(i+1,j)+wfn(i,j))/(dx^2)
 Amid2(i,j)=(Amid(i+1,j)+Amid(i,j))/2
end
end
for j=1:count
Y3=Amid(:,j).*dA(:,j)
 Y2=Amid2(:,j).*d2A(:,j)
exp_p(j)=(-%i)*h*(inttrap(xmid,Y3))
 exp_p2(j)=-1*(h^2)*(inttrap(xmid2,Y2))
end
//verification of energy conservation--------------------
exp_ke=(exp_p2./(2*me))
E=exp_ke+exp_v
//Uncertainity principle---------------------------------
sdx=sqrt(exp_x2-(exp_x).^2)
sdp=sqrt(exp_p2-(exp_p).^2)
ucp=(sdx.*sdp*2)/h
//classical turning points------------------------------
ctp=sqrt((2*gb(1:4))/(me*(w^2)))
figure
title('30th wavefunction')
plot(xnew,((A(:,30)/N).^2))
xlabel('x')
ylabel('wavefunction')
t1=gca()
t1.data_bounds=[-4E-14,0;4E-14,3.5E29]
psi(:,1)=-(1/(%pi*(l^2))^0.25)*exp(-(eta.^2)/2)
psi(:,2)=(2.*eta/(4*%pi*(l^2))^0.25).*exp(-(eta.^2)/2)
psi(:,3)=-((2*(eta.^2)-1)/(4*%pi*(l^2))^0.25).*exp(-(eta.^2)/2)
psi(:,4)=((2*(eta.^3)-3.*eta)/(4*%pi*(l^2))^0.25).*exp(-(eta.^2)/2)
figure
for i=1:count
 subplot(2,2,i)
 title('wavefunction comparison plot')
 plot(x(383:617),wfn(383:617,i),'r-')
 plot(x(383:617),psi(383:617,i),'b-')
 xlabel('x')
 ylabel('wavefunction')
end
//difference in energy eigen values
for i=1:count
ap(i)=(eval(i))/(h*w)
end
mp=[0.5,1.5,2.5,3.5]
err=(abs(mp-ap')./mp)*10
