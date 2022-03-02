<form class="questionnaire questionnaire--photos px-4 py-2 mb-4" method="post" enctype="multipart/form-data">
    <div class="form-group row py-3 m-0">
        <p>Please upload up to 5 images.</p>
	    <input class="custom-file-input p-0" type="file" name="upload_attachment[]" size="2" multiple/>
    </div>
    <div class="d-flex py-3"><button type="submit" value="Upload Project Photos" name="submitPhotos" class="w-auto button">Upload Project Photos</button></div>
</form>

<?php 
$order = wc_get_order($args['orderId']);
//echo $order->get_meta("photo-0");

//var_dump($order->get_meta_data());
function submitPhotos($order) {

    if (!empty($_FILES['upload_attachment']['name'][0])) {

        require_once( ABSPATH . 'wp-admin/includes/image.php' );
        require_once( ABSPATH . 'wp-admin/includes/file.php' );
        require_once( ABSPATH . 'wp-admin/includes/media.php' );


        $files = $_FILES['upload_attachment'];
        $count = 0;
        $galleryImages = array();

        foreach ($files['name'] as $count => $value) {
            if ($files['name'][$count]) {

                $file = array(
                    'name'     => $files['name'][$count],
                    'type'     => $files['type'][$count],
                    'tmp_name' => $files['tmp_name'][$count],
                    'error'    => $files['error'][$count],
                    'size'     => $files['size'][$count]
                );

                $upload_overrides = array( 'test_form' => false );
                $upload = wp_handle_upload($file, $upload_overrides);


                // $filename should be the path to a file in the upload directory.
                $filename = $upload['file'];

                // The ID of the post this attachment is for.
                $parent_post_id = $post_id;

                // Check the type of tile. We'll use this as the 'post_mime_type'.
                $filetype = wp_check_filetype( basename( $filename ), null );

                // Get the path to the upload directory.
                $wp_upload_dir = wp_upload_dir();

                // Prepare an array of post data for the attachment.
                $attachment = array(
                    'guid'           => $wp_upload_dir['url'] . '/' . basename( $filename ), 
                    'post_mime_type' => $filetype['type'],
                    'post_title'     => preg_replace( '/\.[^.]+$/', '', basename( $filename ) ),
                    'post_content'   => '',
                    'post_status'    => 'inherit'
                );

                // Insert the attachment.
                $attach_id = wp_insert_attachment( $attachment, $filename, $parent_post_id );

                // Make sure that this file is included, as wp_generate_attachment_metadata() depends on it.
                require_once( ABSPATH . 'wp-admin/includes/image.php' );

                // Generate the metadata for the attachment, and update the database record.
                $attach_data = wp_generate_attachment_metadata( $attach_id, $filename );
                wp_update_attachment_metadata( $attach_id, $attach_data );

                array_push($galleryImages, $attach_id);

                $dir = wp_get_upload_dir()['url'];
                $image = $file['name'];

                // add photo to order data
                //$order->update_meta_data("photo-$count", "$dir/$image");

                echo "$dir/$image";

            }

            $count++;

        }
    }
} ?>

<?php

if (isset($_POST['submitPhotos'])) { submitPhotos($order); }

?>