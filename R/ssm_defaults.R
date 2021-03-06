ssm_defaults <-
function(...){

#Assings default values for all the options
#User options
	log_var                   <-       numeric(0);      #Logarithmic interval division on variable i
	maxeval                   <-       1000;            #Maximum number of function evaluations
	maxtime                   <-       60;              #Maximum CPU time
	iterprint                 <-       1;               #Print each iteration on screen
	weight                    <-       1e6;             #Weight that multiplies the penalty term added to the objective function in constrained problems
	tolc                      <-       1e-5;            #Maximum absolute violation of the constraints
	prob_bound                <-       0.5;             #Probability of biasing the search towards the bounds
	inter_save                <-       0;               #Saves results in a report in intermediate iterations
	
	
	
#Global options
	dim_refset                <-       "auto";         #Number of elements in Refset
	ndiverse                  <-       "auto";         #Number of solutions generated by the diversificator
	combination				        <-       1;		      	   #Type of combination
		
	
#Local options
	local_solver              <-       0;			         #Choose local solver
	local_tol                 <-       2;              #Level of tolerance in local search
	local_iterprint           <-       0;              #Print each iteration on screen
	local_n1                  <-       "default";      #Number of iterations before applying local search for the 1st time
	local_n2                  <-       "default";      #Number of minimum iterations of global search between 2 local calls
	local_balance             <-        0.5;           #Balances between quality (<-0) and diversity (<-1) for choosing initial points for the local search
	local_finish              <-       numeric(0);     #Applies local search to the best solution found once the optimization if finished
	local_bestx               <-       0;              #When activated (i$e$ <-1) only applies local search to the best solution found to date, ignoring filters


	return(list(log_var=log_var,maxeval=maxeval,maxtime=maxtime,iterprint=iterprint,
				plot=plot,weight=weight,tolc=tolc,prob_bound=prob_bound,
				inter_save=inter_save,dim_refset=dim_refset,ndiverse=ndiverse, combination=combination,
				local_solver=local_solver,local_tol=local_tol,local_iterprint=local_iterprint,
				local_n1=local_n1,local_n2=local_n2,local_balance=local_balance,
				local_finish=local_finish,local_bestx=local_bestx))

}

