<?php get_header(); ?>

<?php
use Bookly\Lib\Utils\Common;
use Bookly\Lib\Entities\Staff;
use Bookly\Lib\Entities\StaffService;
$staff = Bookly\Lib\Entities\Staff::query()->where( 'wp_user_id', get_field('pro_user') )->findOne();

if (strpos($_SERVER['HTTP_REFERER'], 'checkout')) { WC()->cart->empty_cart(); }
?>

<?php $services = $wpdb->get_results('SELECT * FROM wp_bookly_staff_services WHERE staff_id="'.$staff->id.'";'); ?>

<?php if ( have_posts() ): ?>
  <div class="pro">
    <?php while ( have_posts() ) : the_post(); ?>

      <div class="pro__header">
        <div class="pro__header-inner row px-lg-0 mx-0 col-xl-6">
          <div class="pro__header-title col-md-8 p-0 d-flex">
            <div class="d-flex flex-column">
              <a class="d-none pro__header-button mb-borders text-center" href="#" title="Favorite This Pro"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/heart.svg"/></a>
              <?php $title_tag = empty($services) ? "Pro is not available for booking" : "Pro is available for booking"; ?>
              <div class="pro__header-button mb-borders text-center <?php if (!empty($services)): ?>bookable<?php endif; ?>" title="<?= $title_tag ?>">
                <?php if (!empty($services)): ?>
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-bookable.svg" alt="Pros bookable card icon"/>
                <?php else: ?>
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/icons/icon-not-bookable.svg" alt="Pros non-bookable card icon"/>
                <?php endif; ?>
              </div>
            </div>
            <div class="pro__title mb-borders text-center d-flex flex-column">
              <?php while (have_rows('display_name')): the_row(); ?>
                <?php if (get_sub_field('line_1')): ?>
                  <h1 class="pro__name m-0"><?= get_sub_field('line_1'); ?><br/><?= get_sub_field('line_2'); ?></h1>
                <?php else: ?>
                  <h1 class="pro__name m-0"><span><?= the_title(); ?><span></h1>
                <?php endif; ?>
              <?php endwhile; ?>
              <?php if (get_field('pronouns')): ?><div class="pro__pronouns d-flex"><?= get_field('pronouns'); ?></div><?php endif; ?>
            </div>
          </div>
          <div class="pro__attributes col-md-4 p-0">
            <?php if (get_field('trade')): ?><div class="d-flex px-3"><?= get_field('trade'); ?></div><?php endif; ?>
            <?php if (get_field('location')): ?><div class="d-flex px-3"><?= get_field('location'); ?></div><?php endif; ?>
            <?php if (get_field('website') || get_field('social')): ?>
              <div class="d-flex px-3">
                <?php if (get_field('website')): ?>
                  <a class="pro__social-link" href="<?= get_field('website'); ?>" target="_blank">
                    <svg width="15" height="17" viewBox="0 0 15 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <g clip-path="url(#clip0_972_9289)">
                          <path d="M7.10476 11.2702C7.14643 11.2842 7.1742 11.3122 7.18809 11.3542C7.20198 11.3961 7.19504 11.4381 7.16726 11.4801L5.43809 13.2221C5.16031 13.5019 4.84087 13.7258 4.47976 13.8937C4.11865 14.0616 3.75059 14.1595 3.37559 14.1875C3.00059 14.2155 2.62559 14.1875 2.25059 14.1035C1.87559 14.0196 1.53531 13.8447 1.22976 13.5789C0.854759 13.285 0.563092 12.9282 0.354759 12.5085C0.146425 12.0887 0.0353141 11.669 0.0214252 11.2492C0.0075363 10.8295 0.0700363 10.4027 0.208925 9.96898C0.347814 9.53524 0.583925 9.15746 0.917259 8.83565L3.60476 6.12824C4.03531 5.6945 4.53531 5.37269 5.10476 5.16281C5.6742 4.95293 6.25754 4.89697 6.85476 4.99491C7.38254 5.07886 7.7992 5.23277 8.10476 5.45664C8.41032 5.6805 8.65337 5.93935 8.83393 6.23318C8.8617 6.30314 8.85823 6.35561 8.82351 6.39059C8.78879 6.42557 8.75059 6.45705 8.70893 6.48503C8.66726 6.51301 8.61865 6.55499 8.56309 6.61096L8.41726 6.75787C8.27837 6.91178 8.1117 6.98873 7.91726 6.98873C7.72282 6.98873 7.54573 6.90828 7.38601 6.74738C7.22629 6.58647 7.0492 6.46404 6.85476 6.38009C6.66032 6.29614 6.44504 6.26116 6.20893 6.27515C5.97282 6.28915 5.76448 6.32413 5.58393 6.38009C5.40337 6.43606 5.21587 6.56199 5.02143 6.75787L1.93809 9.86404C1.75754 10.0459 1.62559 10.2558 1.54226 10.4937C1.45893 10.7315 1.43115 10.9694 1.45893 11.2073C1.4867 11.4451 1.55615 11.683 1.66726 11.9208C1.77837 12.1587 1.95893 12.3476 2.20893 12.4875C2.55615 12.7254 2.93115 12.8093 3.33393 12.7394C3.7367 12.6694 4.07698 12.5015 4.35476 12.2356L5.68809 10.9134C5.71587 10.8715 5.75754 10.8645 5.81309 10.8924C6.22976 11.0743 6.66032 11.2003 7.10476 11.2702ZM12.8964 0.650463C13.2714 0.944291 13.5631 1.29408 13.7714 1.69985C13.9798 2.10561 14.0978 2.52536 14.1256 2.95911C14.1534 3.39285 14.0909 3.8266 13.9381 4.26034C13.7853 4.69408 13.5423 5.07186 13.2089 5.39367L10.5214 8.10108C10.0909 8.53483 9.59087 8.84964 9.02143 9.04552C8.45198 9.24141 7.8617 9.29738 7.25059 9.21343C6.72282 9.14347 6.31309 8.98956 6.02143 8.7517C5.72976 8.51384 5.4867 8.25499 5.29226 7.97515C5.26448 7.91919 5.27143 7.87022 5.31309 7.82824L5.68809 7.45046C5.84087 7.31055 6.01448 7.24059 6.20893 7.24059C6.40337 7.24059 6.57004 7.31055 6.70893 7.45046C6.87559 7.61836 7.06309 7.74429 7.27143 7.82824C7.47976 7.91219 7.69504 7.95417 7.91726 7.95417C8.13948 7.95417 8.35476 7.91219 8.56309 7.82824C8.77143 7.74429 8.95198 7.61836 9.10476 7.45046L12.1881 4.36528C12.3686 4.18338 12.5006 3.96651 12.5839 3.71466C12.6673 3.46281 12.695 3.21795 12.6673 2.98009C12.6395 2.74223 12.5631 2.51137 12.4381 2.2875C12.3131 2.06363 12.1325 1.87474 11.8964 1.72083C11.5631 1.49697 11.195 1.41301 10.7923 1.46898C10.3895 1.52495 10.0423 1.69985 9.75059 1.99367L8.43809 3.3159C8.39643 3.35787 8.35476 3.36487 8.31309 3.33688C7.9242 3.16898 7.49365 3.03606 7.02143 2.93812C6.96587 2.93812 6.93809 2.91013 6.93809 2.85417C6.93809 2.7982 6.94504 2.76322 6.95893 2.74923L8.68809 1.00725C8.96587 0.727418 9.28532 0.50355 9.64643 0.335649C10.0075 0.167747 10.3686 0.0628091 10.7298 0.0208338C11.0909 -0.0211415 11.4659 0.0138379 11.8548 0.125772C12.2436 0.237706 12.5909 0.412603 12.8964 0.650463Z" fill="#555433" />
                      </g>
                      <defs><clipPath id="clip0_972_9289"><rect width="14.1667" height="17" fill="white" /></clipPath></defs>
                    </svg>
                  </a>
                <?php endif; ?>

                <?php while (have_rows('social')): the_row(); ?>
                  <?php if (get_sub_field('instagram')): ?>
                    <a class="pro__social-link px-1" href="<?= get_sub_field('instagram'); ?>" target="_blank">
                    <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                      <path fill-rule="evenodd" clip-rule="evenodd" d="M5.28836 0.755002C6.11923 0.716752 6.38415 0.708252 8.50065 0.708252C10.6172 0.708252 10.8821 0.71746 11.7122 0.755002C12.5424 0.792544 13.1091 0.925002 13.6049 1.11696C14.1241 1.31317 14.5951 1.61988 14.9847 2.01654C15.3814 2.40542 15.6874 2.87575 15.8829 3.39567C16.0756 3.8915 16.2073 4.45817 16.2456 5.28692C16.2838 6.11921 16.2923 6.38413 16.2923 8.49992C16.2923 10.6164 16.2831 10.8813 16.2456 11.7122C16.208 12.541 16.0756 13.1076 15.8829 13.6035C15.6874 14.1234 15.3809 14.5946 14.9847 14.984C14.5951 15.3807 14.1241 15.6867 13.6049 15.8822C13.1091 16.0748 12.5424 16.2066 11.7137 16.2448C10.8821 16.2831 10.6172 16.2916 8.50065 16.2916C6.38415 16.2916 6.11923 16.2824 5.28836 16.2448C4.45961 16.2073 3.89294 16.0748 3.39711 15.8822C2.87714 15.6866 2.40602 15.3801 2.01657 14.984C1.62017 14.5949 1.31342 14.124 1.11769 13.6042C0.925734 13.1083 0.793984 12.5417 0.755734 11.7129C0.717484 10.8806 0.708984 10.6157 0.708984 8.49992C0.708984 6.38342 0.718193 6.1185 0.755734 5.28833C0.793276 4.45817 0.925734 3.8915 1.11769 3.39567C1.3137 2.87581 1.62069 2.40493 2.01728 2.01584C2.40618 1.61952 2.87682 1.31277 3.3964 1.11696C3.89223 0.925002 4.4589 0.793252 5.28765 0.755002H5.28836ZM11.6492 2.1575C10.8275 2.11996 10.581 2.11217 8.50065 2.11217C6.42028 2.11217 6.17378 2.11996 5.35211 2.1575C4.59207 2.19221 4.17982 2.319 3.90498 2.42596C3.54161 2.56763 3.28165 2.7355 3.00894 3.00821C2.75043 3.25971 2.55149 3.56587 2.42669 3.90425C2.31973 4.17909 2.19294 4.59133 2.15823 5.35138C2.12069 6.17304 2.1129 6.41954 2.1129 8.49992C2.1129 10.5803 2.12069 10.8268 2.15823 11.6485C2.19294 12.4085 2.31973 12.8208 2.42669 13.0956C2.55136 13.4335 2.7504 13.7402 3.00894 13.9916C3.2604 14.2502 3.56711 14.4492 3.90498 14.5739C4.17982 14.6808 4.59207 14.8076 5.35211 14.8423C6.17378 14.8799 6.41957 14.8877 8.50065 14.8877C10.5817 14.8877 10.8275 14.8799 11.6492 14.8423C12.4092 14.8076 12.8215 14.6808 13.0963 14.5739C13.4597 14.4322 13.7197 14.2643 13.9924 13.9916C14.2509 13.7402 14.4499 13.4335 14.5746 13.0956C14.6816 12.8208 14.8084 12.4085 14.8431 11.6485C14.8806 10.8268 14.8884 10.5803 14.8884 8.49992C14.8884 6.41954 14.8806 6.17304 14.8431 5.35138C14.8084 4.59133 14.6816 4.17909 14.5746 3.90425C14.4329 3.54088 14.2651 3.28092 13.9924 3.00821C13.7408 2.74972 13.4347 2.55078 13.0963 2.42596C12.8215 2.319 12.4092 2.19221 11.6492 2.1575ZM7.50544 10.9019C8.06124 11.1332 8.68013 11.1645 9.25639 10.9902C9.83266 10.816 10.3306 10.4471 10.665 9.94651C10.9995 9.44595 11.1499 8.84478 11.0904 8.2457C11.0308 7.64662 10.7652 7.08677 10.3388 6.66179C10.0669 6.39013 9.73826 6.18212 9.37639 6.05273C9.01451 5.92334 8.62845 5.8758 8.246 5.91352C7.86355 5.95124 7.49422 6.07329 7.1646 6.27089C6.83497 6.46848 6.55326 6.7367 6.33974 7.05623C6.12622 7.37576 5.9862 7.73866 5.92977 8.11881C5.87333 8.49895 5.90188 8.88688 6.01337 9.25466C6.12485 9.62244 6.31649 9.96093 6.57449 10.2458C6.8325 10.5306 7.15044 10.7547 7.50544 10.9019ZM5.66873 5.668C6.04063 5.29611 6.48213 5.00111 6.96803 4.79984C7.45393 4.59857 7.97472 4.49498 8.50065 4.49498C9.02659 4.49498 9.54737 4.59857 10.0333 4.79984C10.5192 5.00111 10.9607 5.29611 11.3326 5.668C11.7045 6.03989 11.9995 6.48139 12.2007 6.9673C12.402 7.4532 12.5056 7.97398 12.5056 8.49992C12.5056 9.02585 12.402 9.54664 12.2007 10.0325C11.9995 10.5184 11.7045 10.9599 11.3326 11.3318C10.5815 12.0829 9.56283 12.5049 8.50065 12.5049C7.43848 12.5049 6.41981 12.0829 5.66873 11.3318C4.91766 10.5808 4.49572 9.56209 4.49572 8.49992C4.49572 7.43774 4.91766 6.41907 5.66873 5.668ZM13.3938 5.09142C13.486 5.00448 13.5598 4.89994 13.6108 4.78398C13.6618 4.66802 13.6891 4.543 13.6909 4.41633C13.6928 4.28965 13.6692 4.16389 13.6215 4.04649C13.5739 3.92909 13.5032 3.82245 13.4136 3.73286C13.324 3.64328 13.2174 3.57258 13.1 3.52495C12.9826 3.47732 12.8568 3.45373 12.7302 3.45558C12.6035 3.45743 12.4785 3.48467 12.3625 3.5357C12.2465 3.58673 12.142 3.66051 12.0551 3.75267C11.886 3.9319 11.7934 4.16996 11.797 4.41633C11.8006 4.66269 11.9001 4.89796 12.0743 5.07218C12.2485 5.24641 12.4838 5.34587 12.7302 5.34946C12.9765 5.35306 13.2146 5.26049 13.3938 5.09142Z" fill="#555433"/>
                    </svg>
                  </a>
                  <?php endif; ?>
                  <?php if (get_sub_field('facebook')): ?>
                    <a class="pro__social-link px-1" href="<?= get_sub_field('facebook'); ?>" target="_blank">
                      <svg width="23" height="23" viewBox="0 0 23 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0 11.5642C0 17.2816 4.15246 22.0359 9.58333 23V14.6941H6.70833V11.5H9.58333V8.94413C9.58333 6.06913 11.4358 4.47254 14.0559 4.47254C14.8858 4.47254 15.7809 4.6 16.6108 4.72746V7.66667H15.1417C13.7358 7.66667 13.4167 8.36912 13.4167 9.26421V11.5H16.4833L15.9725 14.6941H13.4167V23C18.8475 22.0359 23 17.2826 23 11.5642C23 5.20375 17.825 0 11.5 0C5.175 0 0 5.20375 0 11.5642Z" fill="#555433"/>
                      </svg>
                    </a>
                  <?php endif; ?>
                  <?php if (get_sub_field('twitter')): ?>
                    <a class="pro__social-link px-1" href="<?= get_sub_field('twitter'); ?>" target="_blank">
                      <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M19.7024 4.11415C19.0066 4.42248 18.2591 4.63082 17.4733 4.72498C18.2841 4.23981 18.8907 3.4762 19.1799 2.57665C18.4181 3.02914 17.5844 3.34765 16.7149 3.51832C16.1302 2.89404 15.3558 2.48025 14.5119 2.34121C13.6679 2.20217 12.8017 2.34564 12.0476 2.74936C11.2936 3.15308 10.6939 3.79445 10.3417 4.5739C9.98954 5.35335 9.90454 6.22727 10.0999 7.05998C8.55633 6.98248 7.04629 6.58127 5.66778 5.8824C4.28928 5.18353 3.07313 4.20262 2.09826 3.00332C1.76493 3.57832 1.57326 4.24498 1.57326 4.95498C1.57289 5.59415 1.73029 6.22352 2.03149 6.78726C2.3327 7.351 2.7684 7.83168 3.29993 8.18665C2.68349 8.16703 2.08066 8.00047 1.5416 7.70082V7.75082C1.54153 8.64727 1.85162 9.51613 2.41925 10.21C2.98687 10.9038 3.77707 11.3799 4.65576 11.5575C4.08391 11.7122 3.48438 11.735 2.90243 11.6241C3.15034 12.3955 3.63326 13.07 4.28357 13.5533C4.93388 14.0365 5.71903 14.3043 6.5291 14.3191C5.15396 15.3987 3.45567 15.9842 1.70743 15.9816C1.39775 15.9817 1.08833 15.9636 0.780762 15.9275C2.55533 17.0685 4.62105 17.674 6.73076 17.6716C13.8724 17.6716 17.7766 11.7566 17.7766 6.62665C17.7766 6.45998 17.7724 6.29165 17.7649 6.12498C18.5243 5.57579 19.1799 4.89573 19.7008 4.11665L19.7024 4.11415Z" fill="#555433"/>
                      </svg>
                    </a>
                  <?php endif; ?>
                  <?php if (get_sub_field('youtube')): ?>
                    <a class="pro__social-link px-1" href="<?= get_sub_field('youtube'); ?>" target="_blank">
                      <svg width="22" height="14" viewBox="0 0 22 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M21.5278 2.1966C21.409 1.77269 21.1775 1.3889 20.858 1.08604C20.5294 0.773862 20.1268 0.550554 19.688 0.437193C18.0457 0.00433624 11.4663 0.00433634 11.4663 0.00433634C8.72344 -0.0268707 5.98122 0.110386 3.25517 0.415331C2.81635 0.537067 2.41443 0.765365 2.08514 1.07992C1.76159 1.39123 1.52724 1.77511 1.40481 2.19573C1.11073 3.78002 0.967841 5.38867 0.978079 6.99999C0.967585 8.60987 1.11012 10.218 1.40481 11.8043C1.52461 12.2231 1.75809 12.6053 2.08252 12.9139C2.40694 13.2226 2.81094 13.4456 3.25517 13.5637C4.91926 13.9957 11.4663 13.9957 11.4663 13.9957C14.2127 14.0269 16.9584 13.8896 19.688 13.5847C20.1268 13.4713 20.5294 13.248 20.858 12.9358C21.1774 12.633 21.4086 12.2492 21.527 11.8252C21.8287 10.2416 21.9754 8.63225 21.9651 7.02011C21.9878 5.40114 21.8412 3.78423 21.5278 2.19573V2.1966ZM9.37462 9.99414V4.00673L14.8487 7.00087L9.37462 9.99414Z" fill="#555433"/>
                      </svg>
                    </a>
                  <?php endif; ?>
                  <?php if (get_sub_field('tiktok')): ?>
                    <a class="pro__social-link px-1" href="<?= get_sub_field('tiktok'); ?>" target="_blank">
                      <svg width="18" height="19" viewBox="0 0 18 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M17.5877 7.7916C15.9549 7.79551 14.3622 7.28587 13.0345 6.33469V12.9686C13.0341 14.1972 12.6589 15.3965 11.959 16.4059C11.2592 17.4154 10.2681 18.187 9.11836 18.6175C7.96857 19.048 6.71487 19.1169 5.52488 18.8151C4.3349 18.5132 3.26536 17.8549 2.45927 16.9282C1.65318 16.0015 1.14897 14.8506 1.01406 13.6294C0.879148 12.4082 1.11996 11.1749 1.70431 10.0943C2.28865 9.01378 3.18867 8.13754 4.28402 7.58276C5.37937 7.02799 6.61783 6.82113 7.83382 6.98984V10.3264C7.27738 10.1513 6.67987 10.1565 6.12661 10.3415C5.57335 10.5265 5.09263 10.8817 4.75311 11.3564C4.41359 11.8312 4.23262 12.4011 4.23606 12.9849C4.23949 13.5687 4.42715 14.1365 4.77224 14.6072C5.11732 15.0779 5.60219 15.4274 6.15759 15.6059C6.71299 15.7843 7.31052 15.7825 7.86486 15.6008C8.4192 15.4191 8.90199 15.0667 9.24428 14.594C9.58658 14.1213 9.77089 13.5524 9.77087 12.9686V0H13.0345C13.0323 0.275844 13.0554 0.551313 13.1035 0.822923C13.2169 1.42925 13.4527 2.00605 13.7965 2.51804C14.1403 3.03003 14.5848 3.46644 15.1029 3.80059C15.8399 4.28837 16.7041 4.54835 17.5877 4.54816V7.7916Z" fill="#555433"/>
                      </svg>
                    </a>
                  <?php endif; ?>  
                <?php endwhile; ?>
              </div>
            <?php endif; ?>
          </div>
        </div>
      </div>

      <div class="pro__details-container row mx-xl-auto gx-0">
        <div class="pro__image col-md-8 col-xl">
          <div class="pro__image-inner">
            <ul class="slides list-unstyled m-0">
            <?php if (has_post_thumbnail()): ?>
              <li>
              <?php the_post_thumbnail('large', ['class' => 'pro__image']); ?></li>
            <?php endif; ?>

            <?php if (have_rows('assets')): ?>
              <?php while (have_rows('assets')): the_row();
                $image = get_sub_field('asset'); ?>
                <li><img class="pro__image-position--<?= get_sub_field('crop_position'); ?>" src="<?= $image; ?>"/></li>
              <?php endwhile; ?>
            <?php endif; ?>
            </ul>
          </div>
          <div class="pro__arrows">
            <button class="prev" aria-label="Previous" type="button"></button>
            <button class="next" aria-label="Next" type="button"></button>
          </div>
        </div>

        <script type="text/javascript">
          var $ = jQuery || $;
          $(document).ready(function() {
            $('.slides').slick({
              prevArrow: $('.prev'),
              nextArrow: $('.next')
            });
          });
        </script>

        <div class="pro__details py-4 col-xl-6 gx-0">
          <div class="py-3 row gx-0">
            <?php if (get_field('services')): ?>
              <div class="pro__services col-md-8 col-xl-12 col-xxl-8">
                <h3 class="h3 pb-0">Services</h3>
                <?php foreach(get_field('services') as $service): ?>
                  <div class="pro__service"><?= $service ?></div>
                <?php endforeach; ?>
              </div>
            <?php endif; ?>
            <div class="pro__content <?= get_field('services') ? 'col-md-4 col-xl-12 col-xxl-4' : 'col-md' ?>">
              <h3>Bio</h3>
              <?= get_field('content'); ?>
            </div>
          </div>
        </div>
      </div>

      <?php wp_enqueue_script( 'jquery-ui-dialog' ); ?>

      <?php if (!empty($services)): ?>
        <div class="pro__booking-container m-0">
          <div class="pro__booking mx-auto py-md-5 d-lg-flex">
            <script>
              var $ = jQuery.noConflict();
              $(document).ready(function($) {
                $('[data-bookly]').on('click', function(e) {
                  let dialog = $(e.currentTarget).data('bookly');
                  $(dialog).dialog({
                    minWidth: 836,
                    modal: true,
                    classes: {
                      'ui-dialog': 'booking-dialog'
                    },
                    open: function() {
                      $(this).parent().promise().done(function () {
                        let content = $(dialog).find('#service-info').html();
                        $('[data-consultation-details]').html(content).removeClass('invisible');
                      });
                      $('.ui-dialog-titlebar-close').addClass('bookly-js-back-step');

                      // wip reset bookly
                      $('.bookly-js-back-step', '.ui-dialog-titlebar').on('click', function() {
                        let $form_id = $(this).closest('.ui-dialog').find('[data-form_id]').data("form_id");
                      });
                    }
                  });
                });
              });
            </script>

            <div class="pro__booking-heading d-inline-flex mt-lg-5"><h2 class="p-3 m-0">Book A Consultation</h2></div>

            <div class="pro__booking-content">
              <?php foreach($services as $row): ?>
                <?php $service = Bookly\Lib\Entities\Service::find( $row->service_id ); ?>

                <div id="dialog-<?= $row->service_id; ?>">
                  <div class="bookly-box bookly-box--heading py-2 mb-0 pb-0">
                    <h3>Book A Consultation</h3>
                    <div class="bookly-box__details d-flex row px-0 gx-0">
                      <div class="col-6 p-2 py-md-3" data-consultation-details></div>
                      <div class="col-6 p-2 py-md-3"><?= $service->duration == 1800 ? '25min' : '55min'; ?><br/>$<?= $row->price; ?></div>
                    </div>
                  </div>
                  <?php echo do_shortcode('[bookly-form category_id="-1" service_id="'.$row->service_id.'" staff_member_id="'.$row->staff_id.'" hide="categories,services,staff_members,date,week_days,time_range"]'); ?>
                </div>
                <a class="anchor" id="booking-<?= $row->service_id; ?>"></a>
                <div class="booking-card my-3 my-md-5">
                  <div class="row m-0">
                    <div class="col-md-4 p-0 row m-0 flex-md-column">
                      <div class="booking-card__label m-0 p-2 p-md-3 col-6 col-md-auto">Duration</div>
                      <div class="booking-card__detail p-2 p-md-3 col-6 col-md-auto">
                        <?= $service->duration == 1800 ? '25min' : '55min'; ?>
                      </div>
                    </div>
                    <div class="col-md-4 p-0 row m-0 flex-md-column">
                      <div class="booking-card__label m-0 p-2 p-md-3 col-6 col-md-auto">Price</div>
                      <div class="booking-card__detail p-2 p-md-3 col-6 col-md-auto">$<?= $row->price; ?></div>
                    </div>
                    <div class="col-md-4 p-0 row m-0 flex-md-column">
                      <div class="booking-card__label m-0 p-2 p-md-3 col-6 col-md-auto">Consultation Type</div>
                      <div class="booking-card__detail p-2 p-md-3 col-6 col-md-auto">
                        <?= $row->capacity_max == 1 ? '1:1' : 'Class'; ?>
                      </div>
                    </div>
                  </div>
                  <div class="booking-card__action text-center">
                    <a class="button button--secondary d-flex justify-content-center align-items-center p-3" data-bookly="#dialog-<?= $row->service_id; ?>" href="#">Book a Time</a>
                  </div>
                </div>
              <?php endforeach; ?>
            </div>
          </div>
        </div>
      <?php endif; ?>

      <?php if (have_rows('testimonial')): ?>
        <?php get_template_part('templates/blocks/testimonials', null, array()); ?>
      <?php endif; ?>

      <div class="pro__faqs">
        <?php
          get_template_part( 'templates/blocks/faq', null, array(
              'title'  => 'FAQ',
              'style' => 'mini'
          ) );
        ?>

        <?php
          $args = wp_parse_args(
              $args,
              array(
                'title'  => get_field('title'),
                'style' => get_field('style')
              )
          );
        ?>
      </div>

      <?= get_template_part('partials/related-pros'); ?>
      <?= get_template_part('partials/post-diy-inspiration'); ?>

    <?php endwhile; ?>
  </div>
<?php endif; ?>

<?php wp_reset_postdata(); ?>

<? get_footer(); ?>
