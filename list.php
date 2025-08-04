<?php
$conn = new mysqli('localhost', 'root', '', 'student_db');
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);
$result = $conn->query("SELECT id, name, email, phone, created_at FROM students ORDER BY id ASC");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registered Students</title>
</head>
<body style="font-family: Arial, sans-serif; padding: 20px;">
    <header style="background:#222222;color:white;padding:20px;text-align:center;">
        <h1 style="margin:0;font-size: 1.5em;>Student Registration System</h1>
    </header>

    <div style="max-width: 800px; margin: auto;">
        <h2 style="margin-bottom: 16px;">Registered Students</h2>

        <?php if ($result && $result->num_rows > 0): ?>
            <table style="width:100%; border-collapse: collapse; border: 1px solid;">
                <thead>
                    <tr>
                        <th style="border: 1px solid; padding: 8px;">ID</th>
                        <th style="border: 1px solid; padding: 8px;">Name</th>
                        <th style="border: 1px solid; padding: 8px;">Email</th>
                        <th style="border: 1px solid; padding: 8px;">Phone</th>
                        <th style="border: 1px solid; padding: 8px;">Created At</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <tr>
                            <td style="border: 1px solid; padding: 8px;"><?= htmlspecialchars($row['id']) ?></td>
                            <td style="border: 1px solid; padding: 8px;"><?= htmlspecialchars($row['name']) ?></td>
                            <td style="border: 1px solid; padding: 8px;"><?= htmlspecialchars($row['email']) ?></td>
                            <td style="border: 1px solid; padding: 8px;"><?= htmlspecialchars($row['phone']) ?></td>
                            <td style="border: 1px solid; padding: 8px;"><?= htmlspecialchars($row['created_at']) ?></td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        <?php else: ?>
            <p>No students registered yet.</p>
        <?php endif; ?>

        <div style="margin-top: 20px; text-align:center;">
            <a href="index.html" style="text-decoration: underline; color:green; border-radius: 4px;">Go Back</a>
        </div>
    </div>
    <footer style="background:#f0f0f0;color:#555;padding:20px;text-align:center;">
        @copy 2025: Student Registration System
        </footer>

</body>
</html>
<?php 
$conn->close(); 
?>
