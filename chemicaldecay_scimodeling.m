% Hatef Fakoor
% Chemical Decay -- Scientific Modeling Example

clear;clc

% Variables:
A(1) = 100.0;
B(1) = 0.0;
C(1) = 0.0;
d1 = 0.07;
d2 = 0.05;
deltat = 1;

% For-loop definition:
for t = 1:49
A(t+1) = A(t) - deltat * d1 * A(t);
B(t+1) = B(t) - deltat * d2 * B(t);
B(t+1) = B(t+1) + deltat * d1 * A(t);
C(t+1) = C(t);
C(t+1) = C(t+1) + deltat * d2 * B(t);
end

% Plot code:
plot(1:length(A), A, '-or', 1:length(B), B, '-*g', 1:length(C), C, '-ob')
title('Chemical Decay: ICE12B by Hatef Fakoor');
xlabel('Time (hours)');
ylabel('Kilograms (per chemical)');
legend('A','B','C');
totalMaterial = A(length(A)) + B(length(B)) + C(length(C))
