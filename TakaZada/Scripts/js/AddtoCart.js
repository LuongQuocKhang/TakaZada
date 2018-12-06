                $('#btnBuy')[0].on('click', function () {
            $.ajax(
                {
                    url: "@Request.Url.GetLeftPart(UriPartial.Authority)" + "@Url.Action("AddToCart", "Home")",
                    method: "POST",
                    data: { "type": "CPU", "ItemId": "@SelectedCPU.Id", "Quantity": parseInt($(this).parent().find('.value1').text(), 10) , "price": "@SelectedCPU.Price", "Id" : "@SelectedCPU.Id"},
                    success: function (response) {
                    }
                })
        });