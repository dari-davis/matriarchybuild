<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\ProxyProviders;

use Bookly\Lib as BooklyLib;
use Bookly\Backend\Components\Dialogs\Service\Edit\Proxy;
use BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\Forms;
use BooklySpecialDays\Lib;

/**
 * Class Shared
 * @package BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\ProxyProviders
 */
class Shared extends Proxy\Shared
{
    /**
     * @inheritDoc
     */
    public static function enqueueAssetsForServices()
    {
        self::enqueueStyles( array(
            'alias' => array( 'bookly-backend-globals', )
        ) );

        self::enqueueScripts( array(
            'module' => array( 'js/service_special_days.js' => array( 'bookly-backend-globals' ), ),
        ) );

        wp_localize_script( 'bookly-service_special_days.js', 'ServiceSpecialDaysL10n', array(
            'datePicker'      => BooklyLib\Utils\DateTime::datePickerOptions(),
            'are_you_sure'    => esc_attr__( 'Are you sure?', 'bookly' ),
            'start_time'      => '08:00:00',
            'end_time'        => '18:00:00',
            'saved'           => esc_attr__( 'Settings saved.', 'bookly' ),
            'duplicate_error' => esc_attr__( 'Duplicate dates are not permitted.', 'bookly' ),
            'past_date_error' => esc_attr__( 'Date in the past.', 'bookly' ),
        ) );
    }

    /**
     * @inheritDoc
     */
    public static function updateService( array $alert, BooklyLib\Entities\Service $service, array $_post )
    {
        if ( isset( $_post['special_days'] ) ) {
            $duplicate_ids = array();
            foreach ( $_post['special_days'] as $data ) {
                $ssd = Lib\Entities\ServiceSpecialDay::query()
                    ->select( 'id' )
                    ->where( 'date', $data['date'] )
                    ->where( 'service_id', $service->getId() );

                if ( isset( $data['id'] ) ) {
                    $ssd->whereNot( 'id', $data['id'] );
                }
                $ssd = $ssd->fetchRow();
                if ( ! empty( $ssd ) ) {
                    $duplicate_ids[] = $data['id'];
                } else {
                    $form               = new Forms\ServiceSpecialDay();
                    $data['service_id'] = $service->getId();
                    $form->bind( $data );
                    $form->save();
                    BooklyLib\Entities\Stat::record( 'special_days_changed', BooklyLib\Base\Schema::getAffectedRows() );
                }
            }
            if ( $duplicate_ids ) {
                $alert['error'][] = __( 'Duplicate dates are not permitted.', 'bookly' );
            }
        }

        return $alert;
    }
}