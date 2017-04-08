<?php
/*
 * Template name: Форма обратной связи
 */
get_header(); // эта строчка кода у вас может отличаться

/*
 * Тут мы будем обрабатывать ошибки и выводить соответствующие сообщения
 */
if( isset( $_GET['msg'] ) ) {
    // в случае успеха
    if( $_GET['msg'] == 'success' )
        echo '<span>Сообщение успешно отправлено</span>';

    // в случае ошибки
    if( $_GET['msg'] == 'error' )
        echo '<span><strong>Ошибка:<strong> Проверьте правильность введённых вами данных.</span>';
    // вы сами можете добавить различные другие сообщения об ошибках

}

/*
 * Антиспам-трюк
 * у нас есть два фейковых поля, при заполнении которых прерывается выполнение скрипта
 * сделаем так, чтобы они были скрыты для пользователей при помощи CSS
 */
echo '<style>textarea[name="comment"],textarea[name="message"]{display:none}</style>';
?>
    <form action="<?php echo site_url() ?>/send.php" method="POST" style="padding-top: 250px">
        <input type="text" name="name" required="true" placeholder="Имя *" />
        <input type="text" name="email" required="true" placeholder="Email *" />
        <textarea name="comment"></textarea>
        <textarea name="message"></textarea>
        <textarea name="soobschenie" required="true" placeholder="Сообщение *"></textarea>
        <button>Отправить</button>
    </form>
<?php
get_footer();?>