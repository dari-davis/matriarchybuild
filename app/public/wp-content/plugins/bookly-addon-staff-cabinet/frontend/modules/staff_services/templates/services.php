<?php if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly
use Bookly\Backend\Components\Controls\Buttons;
use Bookly\Backend\Components\Dialogs;
use Bookly\Backend\Components\Dialogs\Staff\Edit\Proxy;
/** @var Dialogs\Staff\Edit\Forms\StaffServices $form */
$services_data = $form->getServicesData();
?>
<form>
    <?php if ( $form->getUncategorizedServices() ) : ?>
        <div class="pt-3 px-3 bookly-js-category-header">
            <div class="row">
                <div class="col-lg-5">
                    <div for="bookly-check-all-entities"><?php esc_html_e( 'Service', 'bookly' ) ?></div>
                </div>
                <div class="col-lg-7">
                    <div class="form-row d-none d-lg-flex">
                        <div class="col-lg-3">
                            <?php esc_html_e( 'Price', 'bookly' ) ?>
                        </div>
                        <?php Proxy\Shared::renderStaffServiceLabels() ?>
                    </div>
                </div>
            </div>
        </div>

        <ul class="bookly-js-category-services list-group pt-2 list-unstyled">
            <?php foreach ( $form->getUncategorizedServices() as $service ) : ?>
                <?php $sub_service = current( $service->getSubServices() ) ?>
                <li class="p-2 mx-2" data-service-id="<?php echo $service->getId() ?>" data-service-type="<?php echo $service->getType() ?>"
                    data-sub-service="<?php echo empty( $sub_service ) ? null : $sub_service->getId() ?>">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="custom-control custom-checkbox mt-2">
                                <input
                                        class="custom-control-input bookly-js-service-checkbox"
                                        id="bookly-check-service-<?php echo $service->getId() ?>"
                                        type="checkbox"
                                    <?php checked( array_key_exists( $service->getId(), $services_data ) ) ?>
                                        value="<?php echo $service->getId() ?>"
                                        name="service[<?php echo $service->getId() ?>]"
                                    <?php disabled( isset( $attributes['read-only']['services'] ) ) ?>
                                />
                                <label class="custom-control-label w-100 bookly-toggle-label" for="bookly-check-service-<?php echo $service->getId() ?>">
                                    <?php echo esc_html( $service->getTitle() ) ?>
                                </label>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="form-row">
                                <div class="col-3">
                                    <div class="d-lg-none"><?php esc_html_e( 'Price', 'bookly' ) ?></div>
                                    <input class="form-control text-right" type="text" <?php disabled( ! array_key_exists( $service->getId(), $services_data ) ) ?>
                                           name="price[<?php echo $service->getId() ?>]"
                                           value="<?php echo array_key_exists( $service->getId(), $services_data ) ? $services_data[ $service->getId() ]['price'] : $service->getPrice() ?>"
                                           <?php if ( isset( $attributes['read-only']['price'] ) ) : ?>readonly<?php endif ?>
                                    />
                                </div>

                                <?php Proxy\Shared::renderStaffService( $staff_id, $service, $services_data, $attributes ) ?>
                            </div>
                        </div>
                    </div>
                    <?php Proxy\Shared::renderStaffServiceTail( $staff_id, $service, 0, $attributes ) ?>
                </li>
            <?php endforeach ?>
        </ul>
    <?php endif ?>

    <?php foreach ( $form->getCategories() as $category ) : ?>
        <div class="p-3">
            <div class="row">
                <div class="col-lg-5">
                    <div class="custom-control custom-checkbox">
                        <input class="custom-control-input bookly-js-category-checkbox" id="bookly-category-<?php echo $category->getId() ?>" type="checkbox" data-category-id="<?php echo $category->getId() ?>" <?php disabled( isset( $attributes['read-only']['services'] ) ) ?>/>
                        <label class="custom-control-label" for="bookly-category-<?php echo $category->getId() ?>"><?php echo esc_html( $category->getName() ) ?></label>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="form-row d-none d-lg-flex">
                        <div class="col-lg-3">
                            <?php esc_html_e( 'Price', 'bookly' ) ?>
                        </div>
                        <?php Proxy\Shared::renderStaffServiceLabels() ?>
                    </div>
                </div>
            </div>
        </div>

        <ul class="bookly-js-category-services list-group pt-2 list-unstyled">
            <?php foreach ( $category->getServices() as $service ) : ?>
                <?php $sub_service = current( $service->getSubServices() ) ?>
                <li class="p-2 mx-2" data-service-id="<?php echo $service->getId() ?>" data-service-type="<?php echo $service->getType() ?>"
                    data-sub-service="<?php echo empty( $sub_service ) ? null : $sub_service->getId() ?>">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="custom-control custom-checkbox mt-2">
                                <?php if ( isset( $attributes['read-only']['services'] ) ) : ?>
                                    <input
                                            class="custom-control-input bookly-js-service-checkbox"
                                            data-category-id="<?php echo $category->getId() ?>"
                                            id="bookly-check-service-<?php echo $service->getId() ?>"
                                            type="checkbox"
                                        <?php checked( array_key_exists( $service->getId(), $services_data ) ) ?>
                                            value="<?php echo $service->getId() ?>"
                                            disabled
                                    />
                                    <?php if ( array_key_exists( $service->getId(), $services_data ) ) : ?>
                                        <input type="hidden" name="service[<?php echo $service->getId() ?>]" value="<?php echo $service->getId() ?>">
                                    <?php endif ?>
                                <?php else : ?>
                                    <input
                                            class="custom-control-input bookly-js-service-checkbox"
                                            data-category-id="<?php echo $category->getId() ?>"
                                            id="bookly-check-service-<?php echo $service->getId() ?>"
                                            type="checkbox"
                                        <?php checked( array_key_exists( $service->getId(), $services_data ) ) ?>
                                            value="<?php echo $service->getId() ?>"
                                            name="service[<?php echo $service->getId() ?>]"
                                    />
                                <?php endif ?>
                                <label class="custom-control-label w-100 bookly-toggle-label" for="bookly-check-service-<?php echo $service->getId() ?>">
                                    <?php echo esc_html( $service->getTitle() ) ?>
                                </label>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="form-row">
                                <div class="col-3">
                                    <div class="d-lg-none"><?php esc_html_e( 'Price', 'bookly' ) ?></div>
                                    <input class="form-control text-right" type="text" <?php disabled( ! array_key_exists( $service->getId(), $services_data ) ) ?>
                                           name="price[<?php echo $service->getId() ?>]"
                                           value="<?php echo array_key_exists( $service->getId(), $services_data ) ? $services_data[ $service->getId() ]['price'] : $service->getPrice() ?>"
                                           <?php if ( isset( $attributes['read-only']['price'] ) ) : ?>readonly<?php endif ?>
                                    />
                                </div>
                                <?php Proxy\Shared::renderStaffService( $staff_id, $service, $services_data, $attributes ) ?>
                            </div>
                        </div>
                    </div>
                    <?php Proxy\Shared::renderStaffServiceTail( $staff_id, $service, 0, $attributes ) ?>
                </li>
            <?php endforeach ?>
        </ul>
    <?php endforeach ?>

    <input type="hidden" name="staff_id" value="<?php echo $staff_id ?>">

    <div class="row no-gutters pt-3">
        <div class="col-6 d-inline-flex">
        <span class="bookly-js-services-error text-danger"></span>
        <?php Buttons::renderSubmit( 'bookly-services-save', 'bookly-js-save' ) ?>
        </div>
    </div>
</form>
<div style="display: none">
    <?php Dialogs\SpecialPrice\Proxy\SpecialHours::renderSpecialPricePopup( $staff_id ) ?>
</div>