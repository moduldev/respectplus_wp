<?php
$to = 'an.respectplus@gmail.com';
$subject = 'Заявка с сайта respectplus';
if (isset($_POST['sendorder'])) {
    $estateType = implode(',',$_POST['estate_type']);
    $estateRegion = implode($_POST['estate_region']);
    $customerName = htmlspecialchars($_POST['customername']);
    $customerPhone = htmlspecialchars($_POST['customerPhone']);
    $message = "Я хочу {$_POST['estate_operation']}  в: {$estateType}";
    mail($to, $subject, $message);
}
header('Location:'. $_SERVER['HTTP_REFERER']);
exit;
