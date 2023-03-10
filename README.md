#################################################################################

In primyproject you can find the Fermat Module :

Fermat

Fermat is an Elixir module that implements the Fermat primality test, which is used to determine whether a given number is potentially prime. It includes several functions:

   - rpow/3 calculates the remainder of (n^k)/m
   - fermat/1 uses the Fermat primality test to determine if a given number is potentially prime
   - test/2 runs the Fermat primality test multiple times on a given number
   - run/1 runs the test function on a given number and increments the number until a prime is found

###############################
Examples

   - iex(1)> Fermat.rpow(5, 2, 10) #=> 5
   - iex(2)> Fermat.fermat(2311) #=> {:ok, 2311}
   - iex(3)> Fermat.test(2311, 10) #=> "we're done and interested"
   - iex(4)> Fermat.run(2311) #=> nil


###############################
Installation

To use Fermat in your project, add it to your dependencies in mix.exs:

def deps do
  [
    {:fermat, "~> 0.1.0"}
  ]
end

Then run mix deps.get to install the dependency.


###############################
To run the Fermat module as intended :

   - iex primyproject.ex
   - iex(1)> Fermat.run(1)

It will start to print all the relatively prime number in the "primy_output" file starting with 1.


#####################################################################################

Primy_output.txt is a txt where you can find all prime numbers that has been found.


#####################################################################################

Index.php and style.css are made to be run on an Heroku server. Here's the link to the website :
- https://primy-project.herokuapp.com/


Here's the link to te video presentation :
- https://youtu.be/tIgvGg-Zi6A  



