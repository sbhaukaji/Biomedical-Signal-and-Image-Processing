% Load the provided file x.mat into matlab
load('x.mat');
% Plot this vector, label the x axis "n" and the y axis "Amplitude", and give the plot the title "Pseudo-Random Noise Samples"
plot(x,'r'), xlabel('n'), ylabel('Amplitude'), title('Pseudo-Random Noise Samples')
% Create y, a vector that contains the samples of x half-wave rectified. (That is, replace all of the negative samples in x with zeros)
i = length(x);
y = zeros(i,1);
for m = 1:i
    if x(m) >= 0
        y(m) = x(m);
    end
end
% Plot x and y on the same plot with a legend telling which vector is which.
hold on
plot(y,'b'), legend('x','y'), hold off
% 5.  Create z which has every other sample of y in it (the first, third, fifth, etc.)
z = y(1:2:end);
% Create the vector Done, which contains the samples in z rounded to the nearest integer.
Done = round(z);
% Copy the following lines into your matlab window:
      alpha = 'abcdefghiIjklmMnopqrstuvwxyYz!" ';
      alpha(Done)

