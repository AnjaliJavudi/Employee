document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.edit-btn').forEach(button => {
        button.addEventListener('click', () => {
            const empId = button.dataset.id;
            alert(`Edit Employee ID: ${empId}`);
            // Implement edit logic here
        });
    });

    document.querySelectorAll('.delete-btn').forEach(button => {
        button.addEventListener('click', () => {
            const empId = button.dataset.id;
            const row = button.closest('tr');
            if (confirm(`Delete Employee ID: ${empId}?`)) {
                row.remove(); // Delete from UI
                // Send delete request here if backend available
            }
        });
    });
});
