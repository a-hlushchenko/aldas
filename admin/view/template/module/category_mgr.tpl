<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-vk-faq" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
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
        <div class="panel panel-default">
            <div class="panel-heading">
            </div>
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-category-mgr" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo $text_add_subcategories ?></label>
                        <div class="col-sm-10">
                            <label><input type="radio" name="category_mgr_add_subcategories" value="1" <?php echo $category_mgr_add_subcategories ? 'checked="checked"' : '' ?>><?php echo $text_yes; ?></label>
                            <label><input type="radio" name="category_mgr_add_subcategories" value="0" <?php echo !$category_mgr_add_subcategories ? 'checked="checked"' : '' ?>><?php echo $text_no; ?></label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo $text_license_name; ?></label>
                        <div class="col-sm-10">
                            <input class="form-control" onchange="gen_license_id(); return false;" type="text" name="category_mgr_license_name" id="license_name" value="<?php echo $category_mgr_license_name; ?>"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"><?php echo $text_license_id; ?></label>
                        <div class="col-sm-10">
                            <input class="form-control" id="license_id" type="text" onclick="this.setSelectionRange(0, this.value.length);" readonly name="category_mgr_license_id"/><br><?php echo $text_license_id_hint; ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="license_info"><?php echo $text_license_info; ?></label>
                        <div class="col-sm-10">
                            <textarea class="form-control" id="license_info" rows="7" name="category_mgr_license_info"><?php echo $category_mgr_license_info; ?></textarea><br><?php echo $text_license_info_hint; ?>
                        </div>
                    </div>
                    <a style="display:none;" id="btnOpen" onclick="$('#form-category-mgr').submit();" data-toggle="tooltip" title="" class="btn btn-info" data-original-title="<?php echo $button_open; ?>"><?php echo $button_open; ?><i class="fa fa-magic"></i></a>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    function validate_license_fields() {
        entered = ($("#license_info").val());
        if (entered) $("#btnOpen").show();
    }

    function gen_license_id() {
        $.ajax({
            type:  'POST',
            cache:  false ,
            dataType: 'json',
            url:  'index.php?route=module/category_mgr/license&token=<?php echo $token; ?>',
            data:  { 'license_name' : $("#license_name").val()},
            success: function(json) {
                $("#license_id").val(json.id);
                $("#license_name").val(json.name);
                validate_license_fields();
            }
        });
    }
    $(function() {
        validate_license_fields();
        gen_license_id();
    });
    //--></script>
<?php echo $footer; ?>