<?php
namespace BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit\Forms;

use Bookly\Lib;

/**
 * Class StaffSpecialDay
 * @package BooklySpecialDays\Backend\Components\Dialogs\Staff\Edit\Forms
 */
class StaffSpecialDay extends Lib\Base\Form
{
    protected static $entity_class = 'StaffSpecialDay';
    protected static $namespace    = '\BooklySpecialDays\Lib\Entities';

    public function configure()
    {
        $this->setFields( array( 'id', 'staff_id', 'location_id', 'date', 'start_time', 'end_time', 'breaks' ) );
    }

}
