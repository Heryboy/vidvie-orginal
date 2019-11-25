<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a onclick="confirm('<?php echo $text_confirm; ?>') ? location.href='<?php echo $reset; ?>' : false;" data-toggle="tooltip" title="<?php echo $button_reset; ?>" class="btn btn-danger"><i class="fa fa-refresh"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-bar-chart"></i> <?php echo $text_list; ?></h3>
      </div>
      <div class="panel-body">
      	<div class="well">
          <div class="row">
            <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-name">Product Name</label>
                <input type="text" name="filter_name" value="<?php echo $filter_name;?>" placeholder="Product Name" id="input-name" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
              </div>
              <div class="form-group">
                <label class="control-label" for="input-model">Model</label>
                <input type="text" name="filter_model" value="<?php echo $filter_model;?>" placeholder="Model" id="input-model" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-price">Price</label>
                <input type="text" name="filter_price" value="<?php echo $filter_price;?>" placeholder="Price" id="input-price" class="form-control">
              </div>
              <!--<div class="form-group">
                <label class="control-label" for="input-quantity">Viewed Range (eg : 10)</label>
                <input type="text" name="filter_view_range" value="<?php echo $filter_view_range;?>" placeholder="Viewed Range" id="input-view-between-range" class="form-control">
              </div>-->
            </div>
            <div class="col-sm-4">
              <div class="form-group">
                <label class="control-label" for="input-status">Status</label>
                <select name="filter_status" id="input-status" class="form-control">
                  <option value="1">Enabled</option>
                </select>
              </div>
              <input type="hidden" value="<?php echo $_REQUEST['token'];?>" name="_token" id="_token"/>
              <button type="button" id="button_filter_view" class="btn btn-primary pull-right"><i class="fa fa-search"></i> Filter</button>
            </div>
          </div>
        </div>
        
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>	
              	<td class="text-left">Image</td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-right"><?php echo $column_viewed; ?></td>
                <td class="text-right"><?php echo $column_percent; ?></td>
                <td class="text-right">Status Viewd</td>
              </tr>
            </thead>
            <tbody>
              <?php if ($products) { ?>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-left"><a href="<?php echo $product['href'];?>" target="_blank"><img src="<?php echo $product['image']; ?>"/></a></td>
                <td class="text-left"><a href="<?php echo $product['href'];?>" target="_blank"><?php echo $product['name']; ?></a></td>
                <td class="text-left"><?php echo $product['model']; ?></td>
                <td class="text-right"><?php echo $product['viewed']; ?></td>
                <td class="text-right"><?php echo $product['percent']; ?></td>
                <td>
                  Today : <?php echo $product['todayView'];?>
                  <br/>
                  Yesterday : <?php echo $product['yesterdayView'];?>
                  <br/>
                  Total Viewed : <?php echo $product['thisMonth'];?>
                </td>
              </tr>
              <?php } ?>
              <?php } else { ?>
              <tr>
                <td class="text-center" colspan="5"><?php echo $text_no_results; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
        <div class="row">
          <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php echo $results; ?></div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>