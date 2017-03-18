close all;
clear all; 
load('assign3 2017.mat');

mu_a = mean(a);
mu_b = mean(b);

%% regular MED classifier
wrong = 0;
for j = 1:200
    if ((a(j,:)-mu_a)*(a(j,:)-mu_a)') > ((a(j,:)-mu_b)*(a(j,:)-mu_b)')
        wrong = wrong + 1;
    end

    if ((b(j,:)-mu_a)*(b(j,:)-mu_a)') < ((b(j,:)-mu_b)*(b(j,:)-mu_b)')
        wrong = wrong + 1;
    end
end
wrong







