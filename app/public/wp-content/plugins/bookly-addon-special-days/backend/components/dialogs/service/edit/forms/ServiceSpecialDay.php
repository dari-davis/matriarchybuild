<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\Forms;

use Bookly\Lib;

/**
 * Class ServiceSpecialDay
 * @package BooklySpecialDays\Backend\Components\Dialogs\Service\Edit\Forms
 */
class ServiceSpecialDay extends Lib\Base\Form
{
    protected static $entity_class = 'ServiceSpecialDay';
    protected static $namespace    = '\BooklySpecialDays\Lib\Entities';

    public function configure()
    {
        $this->setFields( array( 'id', 'service_id', 'date', 'start_time', 'end_time', 'breaks' ) );
    }

    /**
     * @inheritDoc
     */
    public function save()
    {
        $data = $this->data;
        if ( $data['start_time'] == '' ) {
            $data['start_time'] = null;
            $data['end_time']   = null;
        }

        $this->object
            ->setFields( $data )
            ->save();

        return $this->object;
    }
}