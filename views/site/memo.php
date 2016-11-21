<section class="az-sec-table">
	<h2>Печать с/з</h2>
	<div class="az-form az-row">
		<a class="az-button-add az-col-100-px" id="sznew" href="#"><i class="fa fa-file-o" aria-hidden="true"></i> Новый</a>
		<a class="az-button-add az-col-100-px" href="#szopen" rel="modal"><i class="fa fa-folder-open-o" aria-hidden="true"></i> Открыть</a>
		<a class="az-button-add az-col-100-px" id="szsave" href="#"><i class="fa fa-floppy-o" aria-hidden="true"></i> Сохранить</a>
		<a class="az-button-add az-col-100-px" href="#"><i class="fa fa-floppy-o" aria-hidden="true"></i> Сохр. как</a>
		<a class="az-button-add az-col-100-px" href="#"><i class="fa fa-search" aria-hidden="true"></i> Просмотр</a>
		<a class="az-button-add az-col-100-px" href="#"><i class="fa fa-print" aria-hidden="true"></i> Печать</a>
	</div>

	<input type="hidden" id="szid" value="-1">
	<div class="az-form az-row">
		<label for="" class="az-col-100-px">Шапка:</label><input type="text" id="szheader" class="az-col-69 az-col-xs-99-100-px">
	</div>
	<div class="az-form az-row">
		<label for="" class="az-col-100-px">Заголовок:</label><input type="text" id="sztitle" class="az-col-69 az-col-xs-99-100-px" List="mylist">
	</div>
	<div class="az-form az-row">
		<label for="" class="az-col-100-px">Содержание:</label><input type="text" id="szcontent" class="az-col-69 az-col-xs-99-100-px">
	</div>
	<div class="az-form az-row">
		<label for="" class="az-col-100-px">Дата:</label>
		<div class="input-append date az-col-69 az-col-xs-99-100-px" id="datepicker" data-date="dateValue: Customer.DateOfBirth" data-date-format="dd.mm.yyyy">
			<input type="text" name="" class="az-col-100-20-px az-col-push-0 startdate" id="szdate">
		    <span class="add-on"><i class="fa fa-calendar" aria-hidden="true"></i></span>
		</div>
	</div>
	<div class="az-form az-row">
		<label for="" class="az-col-100-px">Подписант:</label><input type="text" id="szparaph" class="az-col-69 az-col-xs-99-100-px">
	</div>

	<div class="az-form az-row">
		<a href="#" class="az-button-add az-col-200-px"><i class="fa fa-plus" aria-hidden="true"></i> Добавить список студентов</a>
	</div>
</section>
<datalist id="mylist">
	<option value="служебная записка"></option>
	<option value="что то еще"></option>
</datalist>

<script>
$(document).ready(function(){
	$('<?= $href; ?>').addClass('current-link');
});
</script>