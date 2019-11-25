<!-- <div class="panel panel-default">
  <div class="panel-heading"><i class="fa fa-wa fa-list"></i> <?php echo $heading_title; ?></div>
  <div class="list-group">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <a class="list-group-item"><?php echo $filter_group['name']; ?></a>
    <div class="list-group-item">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <?php echo $filter['name']; ?>
            <?php } else { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <?php echo $filter['name']; ?>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-lg btn-danger"><?php echo $button_filter; ?></button>
  </div>
</div> -->

<!-- filter_group -->
<div class="filter_group">
  <div class="heading_title">
    <i style="font-size:20px;" class="fa fa-wa fa-list"></i> <?php echo $heading_title; ?>

    <span class="pull-right"><a id="initToggleFilterCollapse" href="javascript:void(0);"><i style="font-size:20px;color:#666" class="fa fa-wa fa-chevron-down"></i></a></span>
    <div class="clearfix"></div>
  </div>

    <div class="filter-collapse">
     <div class="accordion" id="accordion" role="tablist" aria-multiselectable="true">
      <?php
        $i = 1;
      ?>

      <?php foreach ($filter_groups as $filter_group) { ?>
      <?php 
          if($i==1){
           $expand = '';//'true';
           $in = '';//'in';
          }else{
            if(isset($_REQUEST['filter'])){
              $expand = '_true';
              $in = '_in';
            }else{
              $expand = 'false';
              $in = '';
            }
          }
          echo "<div class=\"-panel\">";
          echo '<a class="panel-headings" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne'.$i.'" aria-expanded="'.$expand.'" aria-controls="collapseOne">
                  <div class="panel-title" style="padding:10px 10px 0px 10px;"><div class="filter_title">'. $filter_group['name'].' <span class="pull-right"><i class="fa fa-wa fa-plus"></i></span></div></div></a> ';
                //   <a class="panel-headings" role="tab" id="headingOne" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                //     <div class="panel-title" style="padding:10px;">Collapsible Group Items #1</div>
                //   </a>
                //   <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                //     <div class="panel-body">
                //       <!-- data -->
                //     </div>
                //   </div>
                // </div>
                echo'<div id="collapseOne'.$i.'" class="panel-collapse collapse '.$in.'" role="tabpanel" aria-labelledby="headingOne">';
                        echo '<div class="panel-body" style="background-color:#121111;">';
                // echo"<div class='block-filter'>";
                //  echo "<div class='filter_title'>".$filterGroup['name'].'</div>';
                // ##########################
      ?>
                    <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
                      <?php foreach ($filter_group['filter'] as $filter) { ?>
                      <div class="checkbox">
                        <label>
                          <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                          <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
                          <?php echo $filter['name']; ?>
                          <?php } else { ?>
                          <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
                          <?php echo $filter['name']; ?>
                          <?php } ?>
                        </label>
                      </div>
                      <?php } ?>
                    </div>
      <?php 
                    // #####################

                  // echo"<div class='clearfix'></div>";
                  // echo"</div>";

              echo'</div>';
            echo'</div>';
            echo"</div>";
            $i++;
          }
      ?>
      </div>

      <h4>Sort By</h4>
      <div class="row text-right">
        <div class="col-sm-12">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
  </div>
  <!-- end of accordion -->
</div>
<div class="filter-collapse" style="background-color:#f00;text-align: center;padding:10px;font-weight: 200px;font-size:15px;color:#fff;">
  <a id="button-filter" type="button" href="javascript:void(0);" style="color:#fff;"><?php echo $button_filter; ?></a>
  <!-- <button type="button" id="button-filter" class="btn btn-lg btn-danger"><?php echo $button_filter; ?></button> -->
</div>

<script type="text/javascript">
  $("#initToggleFilterCollapse").click(function(){
    $(".filter-collapse").toggle(100);
  });
</script>
<script type="text/javascript"><!--
  $('#button-filter').on('click', function() {
  	filter = [];
  	$('input[name^=\'filter\']:checked').each(function(element) {
  		filter.push(this.value);
  	});

  	location = '<?php echo $action; ?>&filter=' + filter.join(',');
  });
//--></script>
