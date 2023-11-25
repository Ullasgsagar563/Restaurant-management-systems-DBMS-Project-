<?php
// Include your head, aside, and any necessary configurations here
include 'head.php';
include 'aside.php';

// Execute the stored procedure to get the list of pending clients
$query = "CALL ListPendingClients()";
$result = mysqli_query($con, $query);

// Check if the query was successful
if ($result) {
    // Fetch the results
    $pendingClients = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $pendingClients[] = $row['names'];
    }

    // Free the result set
    mysqli_free_result($result);
} else {
    // Handle the case where the query fails
    echo "Error executing stored procedure: " . mysqli_error($con);
    // Set $pendingClients to an empty array to avoid undefined variable warning
    $pendingClients = [];
}

// Close the database connection
mysqli_close($con);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Include your head content here -->
    <title>List of Pending Clients</title>
    <!-- Include any additional CSS or meta tags if needed -->
</head>

<body>
    <!-- Include your aside content here -->

    <div class="page-wrapper">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="btn-list">
                        <!-- Your buttons go here -->
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">List of Pending Clients</h4>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <!-- Add more columns as needed -->
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $k = 1;
                                    // Check if $pendingClients is set and not null
                                    if (!empty($pendingClients)) {
                                        foreach ($pendingClients as $client) {
                                            ?>
                                            <tr>
                                                <th scope="row"><?php echo $k; ?></th>
                                                <td><?php echo $client; ?></td>
                                                <!-- Add more columns as needed -->
                                            </tr>
                                            <?php
                                            $k++;
                                        }
                                    } else {
                                        // Handle the case where there are no pending clients
                                        echo "<tr><td colspan='2'>No pending clients</td></tr>";
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <?php include 'footer.php'; ?>
    </div>

</body>

</html>
