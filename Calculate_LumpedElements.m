%% setting the parameters

f = 4.51*10^(9); % Hz
mu = 4*pi*10^(-7); % H/m  - magnetic permeability of vacuum
eps = 8.85418782*10^(-12); % F/m  - electric permittivity of vacuum
r_ext = 5.08*10^(-3); %m 
r_w = 0.058*10^(-3); %m
p = r_ext/r_w;

%% calculating the self-inductance L_s

bracket = log((2*p)/1 + sqrt(2) )- 2 + sqrt(2);
L_s = ((2*mu*r_ext)/pi)*bracket;

%% calculating C_c

C_c = 4*(eps/mu)*L_s;

%% calculating L_c

nevezo = (2*pi*f)^2;
tort = 1/nevezo;
L_c = tort*(1/C_c);
L_0 = 4*L_c;