<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $query = trim($_POST['query']);

    if (!empty($query)) {
        $stmt = $conn->prepare("
            SELECT name, number, image_url 
            FROM search_data 
            WHERE name LIKE ? OR number LIKE ? 
            ORDER BY searched_at DESC
        ");
        
        $search_param = "%{$query}%";
        $stmt->bind_param("ss", $search_param, $search_param);
        $stmt->execute();
        $result = $stmt->get_result();

        $search_results = [];
        while ($row = $result->fetch_assoc()) {
            $search_results[] = $row;
        }
        
        echo json_encode($search_results);
        exit;
    }
}
?>
