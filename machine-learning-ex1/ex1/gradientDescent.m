function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    Htheta = X * theta;

    %Storing theta in temporary variables in order to compute both 
    %operations simultaneously

    theta0temp = theta(1,1) - (alpha*(1/m))*sum(Htheta-y);
    theta1temp = theta(2,1) - (alpha*(1/m))*sum((Htheta-y).*X(:,2));

    theta = theta - (alpha/m)*X'*(Htheta - y);



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    %fprintf(J_history(iter));

end

end
