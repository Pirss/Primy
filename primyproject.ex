
defmodule Fermat do
  require Integer

  @doc "pow est responsable de calculer le reste de (n^k)/m ;
  ex: reste{(5^2)/10} == 5"

  def rpow(n,1, _), do: n

  def rpow(n,k,m), do: rpow(round(rem k, 2), n,k,m)

  def rpow(0, n, k, m ) do
    x = rpow(n, round(k/2), m)
    round(rem((x*x), m))
    end

  def rpow(_, n, k, m) do
    x = rpow(n,k-1,m)
    round(rem((x*n), m))
  end


  @doc "fermat est responsable de calculer si le nombre p est potentiellement premier ;
  ex: fermat(2311) retournera we're interested by this number"

  def fermat(1), do: {:ok, 1}

  def fermat(p) do
    r = :rand.uniform(p-1)
    t = rpow(r,p-1,p)
    if t == 1 do
      IO.puts(p)
      {:ok, device} = File.open("primy_output.txt", [:append])
      :ok = IO.puts(device, p)
      File.close(device)
      {:ok, p}

    else true
      IO.puts("This number seems not to be prime: #{p}")

      nil
    end
  end


  @doc "test est responsable de calculer cela plusieurs fois de manière aléatoire ;
  ex: test(2311, le nombre de fois que le test dois être répété)"

  def test(_,0), do: IO.puts("we're done and interested")

  def test(p,n) do
    case fermat(p) do
      {:ok, p} ->
        test(p,n-1)
      nil ->
        nil
        IO.puts("we dont like this number")
    end
  end



  @doc "run est responsable de calculer test plusieurs fois avec n puis n+1 etc ;
  ex:"

  def run(n) do

    if test(n,1) == nil do
      run(n+1)
      nil
    else
      run(n+1)
    end

  end
end
