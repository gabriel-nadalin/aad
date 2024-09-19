from mpi4py import MPI
import sys, random
import math

# Monte Carlo function
def get_points(n_points: int) -> int:
    counter = 0
    for _ in range(n_points):
        x = random.random()
        y = random.random()
        if x ** 2 + y ** 2 <= 1:
            counter += 1
    return counter

# Master functions
def launch_nodes(points_per_node: int, n_nodes: int, comm: MPI.Intracomm) -> None:
    for i in range(1, n_nodes + 1):
        comm.send(points_per_node, dest=i)

def recv_results(n_nodes: int, comm: MPI.Intracomm) -> int:
    total_hit_points = 0
    for i in range(1, n_nodes + 1):
        total_hit_points += comm.recv(source=i)
    return total_hit_points

# Worker functions
def run_task(comm: MPI.Intracomm) -> None:
    points_to_calc = comm.recv(source=0)
    hit_points = get_points(points_to_calc)
    comm.send(hit_points, dest=0)
    

if __name__ == '__main__':
    comm = MPI.COMM_WORLD
    rank = comm.Get_rank()
    n_nodes = comm.Get_size()

    if rank == 0:
        if len(sys.argv) < 3:
            print("Usage: mpi.py <number_of_points> <number_of_nodes>")
            exit(1)
        
        n_points = int(sys.argv[1])
        
        # Launch worker nodes
        points_per_node = n_points // n_nodes
        launch_nodes(points_per_node, n_nodes - 1, comm)
        # 4 cores
        # Master will work on the remaining_points
        remaining_points = n_points % n_nodes
        master_results = get_points(points_per_node + remaining_points)

        # Retrieve results
        hit_points = master_results + recv_results(n_nodes - 1, comm)
        
        pi = hit_points / n_points * 4
        print(pi)
    
    else:
        run_task(comm)
        
