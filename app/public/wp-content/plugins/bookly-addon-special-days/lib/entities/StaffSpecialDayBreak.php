<?php
namespace BooklySpecialDays\Lib\Entities;

use Bookly\Lib;

/**
 * Class StaffSpecialDayBreak
 * @package BooklySpecialDays\Lib\Entities
 */
class StaffSpecialDayBreak extends Lib\Base\Entity
{
    /** @var  int */
    protected $staff_special_day_id;
    /** @var  string */
    protected $start_time;
    /** @var  string */
    protected $end_time;

    protected static $table = 'bookly_special_days_breaks';

    protected static $schema = array(
        'id'                   => array( 'format' => '%d' ),
        'staff_special_day_id' => array( 'format' => '%d', 'reference' => array( 'entity' => 'StaffSpecialDay' ) ),
        'start_time'           => array( 'format' => '%s' ),
        'end_time'             => array( 'format' => '%s' ),
    );

    /**************************************************************************
     * Entity Fields Getters & Setters                                        *
     **************************************************************************/

    /**
     * Gets staff_special_day_id
     *
     * @return int
     */
    public function getStaffSpecialDayId()
    {
        return $this->staff_special_day_id;
    }

    /**
     * Sets staff_special_day_id
     *
     * @param \BooklySpecialDays\Lib\Entities\StaffSpecialDay $staff_special_day
     * @return $this
     */
    public function setStaffSpecialDay( \BooklySpecialDays\Lib\Entities\StaffSpecialDay $staff_special_day )
    {
        return $this->setStaffSpecialDayId( $staff_special_day->getId() );
    }

    /**
     * Sets staff_special_day_id
     *
     * @param int $staff_special_day_id
     * @return $this
     */
    public function setStaffSpecialDayId( $staff_special_day_id )
    {
        $this->staff_special_day_id = $staff_special_day_id;

        return $this;
    }

    /**
     * Gets start_time
     *
     * @return string
     */
    public function getStartTime()
    {
        return $this->start_time;
    }

    /**
     * Sets start_time
     *
     * @param string $start_time
     * @return $this
     */
    public function setStartTime( $start_time )
    {
        $this->start_time = $start_time;

        return $this;
    }

    /**
     * Gets end_time
     *
     * @return string
     */
    public function getEndTime()
    {
        return $this->end_time;
    }

    /**
     * Sets end_time
     *
     * @param string $end_time
     * @return $this
     */
    public function setEndTime( $end_time )
    {
        $this->end_time = $end_time;

        return $this;
    }

}
