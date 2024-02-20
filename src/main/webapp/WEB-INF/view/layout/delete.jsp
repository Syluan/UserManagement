<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Include your CSS and other head elements here -->
</head>
<body>

    <!-- Your existing HTML content -->

    <!-- Modal for Delete Confirmation -->
    <div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteConfirmationModalLabel">Xóa KH</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Bạn có muốn xóa không?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <a id="confirmDeleteButton" class="btn btn-danger">Có</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Include your JavaScript libraries (e.g., jQuery, Bootstrap JS) here -->

    <!-- Your existing JavaScript code -->

</body>
</html>
