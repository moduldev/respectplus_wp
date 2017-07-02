<?php
/*
Template Name: send order
*/; ?>
<?php get_header() ?>
<div class="container main_section">
    <div class="row">
        <h4>Форма для заявки.</h4>
        <div class="col-xs-12">
            <form action="send.php" class="form-group" method="post">
                <div class="col-xs-12">
                    <label for="">Меня зовут:<input name="customername" class="form-control" type="text" required></label>
                    <label for="">Мой контактный номер:<input name="customerPhone" class="form-control" type="text" required></label>
                </div>
                <div class="col-xs-4 ">
                    <p>Я хочу:</p>
                    <div class="radio">
                        <label class="" for=""><input name="estate_operation" type="radio" value="sell">продать</label>
                    </div>
                    <div class="radio">
                        <label for=""><input name="estate_operation" type="radio" value="buy">купить</label>
                    </div>
                    <div class="radio">
                        <label for=""><input name="estate_operation" type="radio" value="lease">снять</label>
                    </div>
                    <div class="radio">
                        <label for=""><input name="estate_operation" type="radio" value="rent">сдать</label>
                    </div>

                </div>
                <div class="col-xs-4">
                    <div class="checkbox">

                        <label for=""><input name="estate_type[]" type="checkbox" value="1-k">1-к квартиру</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="2-k">2-к квартиру</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="3-k">3-к квартиру</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="4-k">4-к квартиру</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="5-k">5-к квартиру</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="garage">гараж</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="house">дом</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_type[]" type="checkbox" value="area">участок</label>
                    </div>
                </div>
                <div class="col-xs-4">
                    <p>В:</p>
                    <div class="checkbox">
                        <label for=""><input name="estate_region[]" type="checkbox" value="dnepr">Днепре</label>
                    </div>
                    <div class="checkbox">
                        <label for=""><input name="estate_region[]" type="checkbox" value="kamenskom">Каменском</label>
                    </div>
                    <div class="checkbox">
                        <label for="">Другой регион<br><input name="estate_region[]" type="text" value="" placeholder="Введите регион"></label>
                    </div>
                </div>
                <div class="col-xs-12">
                    <button class="btn btn-default" style="display: block;" name="sendorder" type="submit">Отправить</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php get_footer() ?>
