<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script type="text/javascript">
            function buyShirts(amount = 0) {
                if (amount === 0) {
                    amount = document.getElementById('quantity').value;
                }
                fetch('/', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({"shirtsAmount": amount})
                })
                    .then(res => res.json())
                    .then(data => console.log('Success:', data))
                    .catch(error => console.error('Error:', error));
            }
        </script>
    </head>
    <body>
        <div class="modal fade" id="exampleModalShirt" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="input-group mb-3">
                            <input id="quantity" name="quantity" type="number" class="form-control" placeholder="Выберите количество футболок" min="1" max="999" aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a href="/" type="button" class="btn" style="color: hsl(0deg 0% 100% / 55%); background-color: hsla(50, 33%, 25%, .75);" data-bs-dismiss="modal" onclick="buyShirts();">ОК</a>
                    </div>
                </div>
            </div>
        </div>