function w = perceptron(x,y)

    % Initialize w to all zeros
    m = size(x)(1);
    n = size(x)(2);
    w=zeros(n,1);

    % One iteration
    


    found = true;
    iter = 0;
    maxiter = 1000;

    while (found) % Repeat while misclassified points exist (or maxiter reached)
        
        found = false;
        iter++;
        if (iter == maxiter)
            break;
        end

        % Calculate output with current w
        y2 = sign(w'*x')';

        % See if there is any misclassified point
        for i=1:m
            if (y(i)!=y2(i))
                found = true;

                % Adjust weights
                w=w+(y(i)*x(i,:))';

                break;
            end
        end

    end