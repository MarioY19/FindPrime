 function  timed=timedPrimes(x)
    start=now();
    timed=0;
     primes=2;
        for testing=3:2:x
            beforeprime=now();
            index=1;
            newprime=1;
            while ((primes(index)<=floor(sqrt(testing)))&&(index<=numel(primes)))
                if(testing/primes(index)==floor(testing/primes(index)))
                   newprime=0; 
                end
                index=index+1;
            end
            if newprime==1
                primes=[primes,testing];
            end
            timed=[timed,(now()-beforeprime)];
        end
    
 
 end