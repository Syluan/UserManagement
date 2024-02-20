//function toggleStatus(userId, currentStatus) {
//    fetch('/updateStatus', { 
//        method: 'POST', 
//        headers: { 'Content-Type': 'application/json' }, 
//        body: JSON.stringify({ userId, currentStatus }) 
//    })
//        .then(response => response.json())
//        .then(({ newStatus }) => {
//            console.log({ newStatus });
//            document.getElementById(`statusCell${userId}`).innerText = newStatus;
//            const button = document.getElementById(`toggleButton${userId}`);
//            button.innerText = newStatus === 'active' ? 'Disable' : 'Active';
//            button.classList.toggle('btn-disable', newStatus === 'active');
//            button.classList.toggle('btn-active', newStatus === 'disable');
//        })
//        .catch(error => console.error('Error:', error));
//}
