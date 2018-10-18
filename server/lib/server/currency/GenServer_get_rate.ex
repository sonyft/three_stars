defmodule Server.Currency.Periodically do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, %{})
  end

  @impl true
  def init(state) do
    # Schedule work to be performed on start
    schedule_work()

    {:ok, state}
  end

  @impl true
  def handle_info(:work, state) do
    # Do the desired work here
    IO.puts "Test"

    # Reschedule once more
    schedule_work()

    {:noreply, state}
  end

  defp schedule_work do
    # In 2 hours
    Process.send_after(self(), :work, 2 * 60 * 1000)
  end
end




# defmodule Stack do
#   use GenServer

#   # Client

#   def start_link(default) when is_list(default) do
#     GenServer.start_link(__MODULE__, default)
#   end

#   def push(pid, item) do
#     GenServer.cast(pid, {:push, item})
#   end

#   def pop(pid) do
#     GenServer.call(pid, :pop)
#   end

#   # Server (callbacks)

#   @impl true
#   def init(stack) do
#     {:ok, stack}
#   end

#   @impl true
#   def handle_call(:pop, _from, [head | tail]) do
#     {:reply, head, tail}
#   end

#   @impl true
#   def handle_cast({:push, item}, state) do
#     {:noreply, [item | state]}
#   end
# end


# defmodule Stack do
#   use GenServer

#   # Callbacks

#   @impl true
#   def init(stack) do
#     {:ok, stack}
#   end

#   @impl true
#   def handle_call(:pop, _from, [head | tail]) do
#     {:reply, head, tail}
#   end

#   @impl true
#   def handle_cast({:push, item}, state) do
#     {:noreply, [item | state]}
#   end
# end




# defmodule Server.Currency.Periodically do
#   use GenServer

#   def start_link() do
#     GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
#   end

#   def reset_timer() do
#     GenServer.call(__MODULE__, :reset_timer)
#   end

#   def init(state) do
#     timer = Process.send_after(self(), :work, 10)
#     {:ok, %{timer: timer}}
#   end

#   def handle_call(:reset_timer, _from, %{timer: timer}) do
#     :timer.cancel(timer)
#     timer = Process.send_after(self(), :work, 10)
#     {:reply, :ok, %{timer: timer}}
#   end

#   def handle_info(:work, state) do
#     # Do the work you desire here

#     # Start the timer again
#     timer = Process.send_after(self(), :work,10)

#     {:noreply, %{timer: timer}}
#   end

#   # So that unhanded messages don't error
#   def handle_info(_, state) do
#     {:ok, state}
#   end
# end