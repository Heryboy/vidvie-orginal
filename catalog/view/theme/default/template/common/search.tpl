<div class="clearfix"></div>
<div id="search-blk" class="input-group" style="z-index: 9999;">
	<input type="hidden" value="0" name="category_id" id="category_id">
	<div class="hidden-xs input-group-btn">
		<button id="category_menu" class="btn btn-search dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false"><span id="lbl_category">Category</span> <span class="caret"></span></button>
		<ul class="dropdown-menu">
			<?php
				foreach($categories as $category){
			?>
					<li class="block_ca"><a class="block_category" data-label="<?php echo $category['name'];?>" data-id="<?php echo $category['category_id'];?>" href="javascript:void(0);"><?php echo $category['name'];?></a></li>	
			<?php 
				}
			?>
				<!-- <li class="block_ca"><a class="block_category" data-label="BOOTS" data-id="1" href="javascript:void(0);">BOOTS</a></li>
				<li class="block_ca"><a class="block_category" data-label="GLOVES" data-id="2" href="javascript:void(0);">GLOVES</a></li>
				<li class="block_ca"><a class="block_category" data-label="SHIRTS" data-id="3" href="javascript:void(0);">SHIRTS</a></li>
				<li class="block_ca"><a class="block_category" data-label="EQUIPMENT" data-id="4" href="javascript:void(0);">EQUIPMENT</a></li>
				<li class="block_ca"><a class="block_category" data-label="KIDS" data-id="5" href="javascript:void(0);">KIDS</a></li> -->
		</ul>
	</div>
	<input type="text" id="_search" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" /> 
	<div class="input-group-btn">
		<button id="search" type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
	</div>
</div>

<!-- <div id="hello">Testing</div> -->
<!-- <a class="hello" data-value="12" href="javascript:void(0);">Hello World</a> -->
<script type="text/javascript">

	// $(function(){
	$(".block_category").click(function(){
		var id = $(this).data("id");
		var label = $(this).data("label");
		$("#category_id").val(id);
		$("#lbl_category").html(label);
	});
	// });
</script>

<!--  <div id="search" class="input-group">
  <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" />
  <span class="input-group-btn">
	<button style="padding: 10px 16px; background-color: lightgray; background-image: none;" type="button" class="btn btn-default btn-lg fa fa-search"></button>
  </span>
</div> -->