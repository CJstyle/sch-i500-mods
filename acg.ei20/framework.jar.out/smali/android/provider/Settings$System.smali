.class public final Landroid/provider/Settings$System;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final ACCELEROMETER_ROTATION:Ljava/lang/String; = "accelerometer_rotation"

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AIRPLANE_MODE_ON:Ljava/lang/String; = "airplane_mode_on"

.field public static final AIRPLANE_MODE_RADIOS:Ljava/lang/String; = "airplane_mode_radios"

.field public static final AIRPLANE_MODE_TOGGLEABLE_RADIOS:Ljava/lang/String; = "airplane_mode_toggleable_radios"

.field public static final ALARM_ALERT:Ljava/lang/String; = "alarm_alert"

.field public static final ALWAYS_FINISH_ACTIVITIES:Ljava/lang/String; = "always_finish_activities"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPEND_FOR_LAST_AUDIBLE:Ljava/lang/String; = "_last_audible"

.field public static final AUTO_TIME:Ljava/lang/String; = "auto_time"

.field public static final BLUETOOTH_DISCOVERABILITY:Ljava/lang/String; = "bluetooth_discoverability"

.field public static final BLUETOOTH_DISCOVERABILITY_TIMEOUT:Ljava/lang/String; = "bluetooth_discoverability_timeout"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CALL_AUTO_RETRY:Ljava/lang/String; = "call_auto_retry"

.field public static final CARRIER_POWER_ONOFF:Ljava/lang/String; = "carrier_power_onoff"

.field public static final CARRIER_WALLPAPER:Ljava/lang/String; = "carrier_wallpaper"

.field public static final CAR_DOCK_SOUND:Ljava/lang/String; = "car_dock_sound"

.field public static final CAR_UNDOCK_SOUND:Ljava/lang/String; = "car_undock_sound"

.field public static final CLEAR_FOR_VVM:Ljava/lang/String; = "clear_for_vvm"

.field public static final CMAS_SOUND:Ljava/lang/String; = "cmas_sound"

.field public static final COMPATIBILITY_MODE:Ljava/lang/String; = "compatibility_mode"

.field public static final CONTACT_IS_UPDATED:Ljava/lang/String; = "contact_is_updated"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRY_CODE:Ljava/lang/String; = "country_code"

.field public static final COUNT_FOR_VVM:Ljava/lang/String; = "count_for_vvm"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"

.field public static final DB_KEY_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field public static final DEBUG_APP:Ljava/lang/String; = "debug_app"

.field public static final DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_CMAS_SOUND_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_NOTIFICATION_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGTONE_URI:Landroid/net/Uri; = null

.field public static final DESK_DOCK_SOUND:Ljava/lang/String; = "desk_dock_sound"

.field public static final DESK_UNDOCK_SOUND:Ljava/lang/String; = "desk_undock_sound"

.field public static final DEVICELOCK_FAILED_ATTEMPTS:Ljava/lang/String; = "devicelock_failed_attempts"

.field public static final DEVICELOCK_ITPOLICY_ENABLED:Ljava/lang/String; = "devicelock_itpolicy_enabled"

.field public static final DEVICELOCK_ITPOLICY_SETTIME:Ljava/lang/String; = "devicelock_itpolicy_settime"

.field public static final DEVICELOCK_PATTERN_ENABLED:Ljava/lang/String; = "devicelock_pattern_enabled"

.field public static final DEVICELOCK_RECOVERY_PASSWORD:Ljava/lang/String; = "devicelock_recovery_password"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIM_SCREEN:Ljava/lang/String; = "dim_screen"

.field public static final DOCK_SOUNDS_ENABLED:Ljava/lang/String; = "dock_sounds_enabled"

.field public static final DTMF_TONE_TYPE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone_type"

.field public static final DTMF_TONE_WHEN_DIALING:Ljava/lang/String; = "dtmf_tone"

.field public static final DUN_ENABLE:Ljava/lang/String; = "dun_enable"

.field public static final DUN_LAUNCHER_TYPE:Ljava/lang/String; = "launcher_type"

.field public static final EMERGENCY_CALL_NUM_1:Ljava/lang/String; = "emergency_first_num"

.field public static final EMERGENCY_CALL_NUM_2:Ljava/lang/String; = "emergency_second_num"

.field public static final EMERGENCY_CALL_NUM_3:Ljava/lang/String; = "emergency_third_num"

.field public static final EMERGENCY_NUMS:[Ljava/lang/String; = null

.field public static final EMERGENCY_TEST_NUM:Ljava/lang/String; = "emergency_test_num"

.field public static final EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field public static final END_BUTTON_BEHAVIOR:Ljava/lang/String; = "end_button_behavior"

.field public static final END_BUTTON_BEHAVIOR_DEFAULT:I = 0x2

.field public static final END_BUTTON_BEHAVIOR_HOME:I = 0x1

.field public static final END_BUTTON_BEHAVIOR_SLEEP:I = 0x2

.field public static final FANCY_IME_ANIMATIONS:Ljava/lang/String; = "fancy_ime_animations"

.field public static final FONT_SCALE:Ljava/lang/String; = "font_scale"

.field public static final HAPTIC_FEEDBACK_ENABLED:Ljava/lang/String; = "haptic_feedback_enabled"

.field public static final HEARING_AID:Ljava/lang/String; = "hearing_aid"

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_SOUNDS_ENABLED:Ljava/lang/String; = "lockscreen_sounds_enabled"

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SOUND:Ljava/lang/String; = "lock_sound"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOW_BATTERY_SOUND:Ljava/lang/String; = "low_battery_sound"

.field public static final MIFI_ALLOW_ALL_DEVICE_CHECKED:[Ljava/lang/String; = null

.field public static final MIFI_ALLOW_ALL_DEVICE_CHECKED_1:Ljava/lang/String; = "mifi_allow_all_device_checked_1"

.field public static final MIFI_ALLOW_ALL_DEVICE_CHECKED_2:Ljava/lang/String; = "mifi_allow_all_device_checked_2"

.field public static final MIFI_ALLOW_ALL_DEVICE_CHECKED_3:Ljava/lang/String; = "mifi_allow_all_device_checked_3"

.field public static final MIFI_AP_BLACK_MAC_ADDR:Ljava/lang/String; = "mifi_ap_black_mac_addr"

.field public static final MIFI_AP_BLACK_MAC_CNT:Ljava/lang/String; = "mifi_ap_black_mac_cnt"

.field public static final MIFI_AP_CHANNEL:[Ljava/lang/String; = null

.field public static final MIFI_AP_CHANNEL_1:Ljava/lang/String; = "mifi_ap_channel_1"

.field public static final MIFI_AP_CHANNEL_2:Ljava/lang/String; = "mifi_ap_channel_2"

.field public static final MIFI_AP_CHANNEL_3:Ljava/lang/String; = "mifi_ap_channel_3"

.field public static final MIFI_AP_GROUP_CIPHER:[Ljava/lang/String; = null

.field public static final MIFI_AP_GROUP_CIPHER_1:Ljava/lang/String; = "mifi_ap_group_cipher_1"

.field public static final MIFI_AP_GROUP_CIPHER_2:Ljava/lang/String; = "mifi_ap_group_cipher_2"

.field public static final MIFI_AP_GROUP_CIPHER_3:Ljava/lang/String; = "mifi_ap_group_cipher_3"

.field public static final MIFI_AP_HIDE:[Ljava/lang/String; = null

.field public static final MIFI_AP_HIDE_1:Ljava/lang/String; = "mifi_ap_hide_1"

.field public static final MIFI_AP_HIDE_2:Ljava/lang/String; = "mifi_ap_hide_2"

.field public static final MIFI_AP_HIDE_3:Ljava/lang/String; = "mifi_ap_hide_3"

.field public static final MIFI_AP_MODE:[Ljava/lang/String; = null

.field public static final MIFI_AP_MODE_1:Ljava/lang/String; = "mifi_ap_mode_1"

.field public static final MIFI_AP_MODE_2:Ljava/lang/String; = "mifi_ap_mode_2"

.field public static final MIFI_AP_MODE_3:Ljava/lang/String; = "mifi_ap_mode_3"

.field public static final MIFI_AP_PASSWD:[Ljava/lang/String; = null

.field public static final MIFI_AP_PASSWD_1:Ljava/lang/String; = "mifi_ap_passwd_1"

.field public static final MIFI_AP_PASSWD_2:Ljava/lang/String; = "mifi_ap_passwd_2"

.field public static final MIFI_AP_PASSWD_3:Ljava/lang/String; = "mifi_ap_passwd_3"

.field public static final MIFI_AP_PROFILE_NUM:Ljava/lang/String; = "mifi_ap_profile_num"

.field public static final MIFI_AP_SAVED_STATE:[Ljava/lang/String; = null

.field public static final MIFI_AP_SAVED_STATE_1:Ljava/lang/String; = "mifi_ap_saved_state_1"

.field public static final MIFI_AP_SAVED_STATE_2:Ljava/lang/String; = "mifi_ap_saved_state_2"

.field public static final MIFI_AP_SAVED_STATE_3:Ljava/lang/String; = "mifi_ap_saved_state_3"

.field public static final MIFI_AP_SECURITY:[Ljava/lang/String; = null

.field public static final MIFI_AP_SECURITY_1:Ljava/lang/String; = "mifi_ap_security_1"

.field public static final MIFI_AP_SECURITY_2:Ljava/lang/String; = "mifi_ap_security_2"

.field public static final MIFI_AP_SECURITY_3:Ljava/lang/String; = "mifi_ap_security_3"

.field public static final MIFI_AP_SSID:[Ljava/lang/String; = null

.field public static final MIFI_AP_SSID_1:Ljava/lang/String; = "mifi_ap_ssid_1"

.field public static final MIFI_AP_SSID_2:Ljava/lang/String; = "mifi_ap_ssid_2"

.field public static final MIFI_AP_SSID_3:Ljava/lang/String; = "mifi_ap_ssid_3"

.field public static final MIFI_AP_WEP_INDEX:[Ljava/lang/String; = null

.field public static final MIFI_AP_WEP_INDEX_1:Ljava/lang/String; = "mifi_ap_wep_index_1"

.field public static final MIFI_AP_WEP_INDEX_2:Ljava/lang/String; = "mifi_ap_wep_index_2"

.field public static final MIFI_AP_WEP_INDEX_3:Ljava/lang/String; = "mifi_ap_wep_index_3"

.field public static final MIFI_AP_WEP_KEY:[Ljava/lang/String; = null

.field public static final MIFI_AP_WEP_KEY_1:Ljava/lang/String; = "mifi_ap_wep_key_1"

.field public static final MIFI_AP_WEP_KEY_2:Ljava/lang/String; = "mifi_ap_wep_key_2"

.field public static final MIFI_AP_WEP_KEY_3:Ljava/lang/String; = "mifi_ap_wep_key_3"

.field public static final MIFI_AP_WHITE_MAC_ADDR:Ljava/lang/String; = "mifi_ap_white_mac_addr"

.field public static final MIFI_AP_WHITE_MAC_CNT:Ljava/lang/String; = "mifi_ap_white_mac_cnt"

.field public static final MMS_DOMAIN:Ljava/lang/String; = "mms_domain"

.field public static final MMS_DOMESTIC_TEST_MODE:Ljava/lang/String; = "mms_domestic_test_mode"

.field public static final MMS_POST_URL:Ljava/lang/String; = "mms_post_url"

.field public static final MMS_SUBSCRIBER_ID:Ljava/lang/String; = "mms_subscriber_id"

.field public static final MMS_USER_AGENT:Ljava/lang/String; = "mms_user_agent"

.field public static final MMS_X_WAP_PROFILE_URL:Ljava/lang/String; = "mms_x_wap_profile_url"

.field public static final MODE_RINGER:Ljava/lang/String; = "mode_ringer"

.field public static final MODE_RINGER_STREAMS_AFFECTED:Ljava/lang/String; = "mode_ringer_streams_affected"

.field private static final MOVED_TO_SECURE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MT_STATUS:Ljava/lang/String; = "mt_status"

.field public static final MUTE_STREAMS_AFFECTED:Ljava/lang/String; = "mute_streams_affected"

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NEXT_ALARM_FORMATTED:Ljava/lang/String; = "next_alarm_formatted"

.field public static final NOTIFICATIONS_USE_RING_VOLUME:Ljava/lang/String; = "notifications_use_ring_volume"

.field public static final NOTIFICATION_LIGHT_PULSE:Ljava/lang/String; = "notification_light_pulse"

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTER_LOCATION:Ljava/lang/String; = "pointer_location"

.field public static final POWER_SAVING_MODE:Ljava/lang/String; = "power_saving_mode"

.field public static final POWER_SOUNDS_ENABLED:Ljava/lang/String; = "power_sounds_enabled"

.field public static final RADIO_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final RADIO_CELL:Ljava/lang/String; = "cell"

.field public static final RADIO_WIFI:Ljava/lang/String; = "wifi"

.field public static final RADIO_WIMAX:Ljava/lang/String; = "wimax"

.field public static final RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SCREEN_BRIGHTNESS:Ljava/lang/String; = "screen_brightness"

.field public static final SCREEN_BRIGHTNESS_MODE:Ljava/lang/String; = "screen_brightness_mode"

.field public static final SCREEN_BRIGHTNESS_MODE_AUTOMATIC:I = 0x1

.field public static final SCREEN_BRIGHTNESS_MODE_MANUAL:I = 0x0

.field public static final SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "screen_off_timeout"

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String; = null

.field public static final SETUP_WIZARD_HAS_RUN:Ljava/lang/String; = "setup_wizard_has_run"

.field public static final SHOW_GPS_DIALOG:Ljava/lang/String; = "GPSDoNotShowAgainCheck"

.field public static final SHOW_GTALK_SERVICE_STATUS:Ljava/lang/String; = "SHOW_GTALK_SERVICE_STATUS"

.field public static final SHOW_PROCESSES:Ljava/lang/String; = "show_processes"

.field public static final SHOW_WEB_SUGGESTIONS:Ljava/lang/String; = "show_web_suggestions"

.field public static final SIP_ADDRESS_ONLY:Ljava/lang/String; = "SIP_ADDRESS_ONLY"

.field public static final SIP_ALWAYS:Ljava/lang/String; = "SIP_ALWAYS"

.field public static final SIP_ASK_ME_EACH_TIME:Ljava/lang/String; = "SIP_ASK_ME_EACH_TIME"

.field public static final SIP_CALL_OPTIONS:Ljava/lang/String; = "sip_call_options"

.field public static final SIP_RECEIVE_CALLS:Ljava/lang/String; = "sip_receive_calls"

.field public static final SOUND_EFFECTS_ENABLED:Ljava/lang/String; = "sound_effects_enabled"

.field public static final STAY_ON_WHILE_PLUGGED_IN:Ljava/lang/String; = "stay_on_while_plugged_in"

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_system_version"

.field public static final TEXT_AUTO_CAPS:Ljava/lang/String; = "auto_caps"

.field public static final TEXT_AUTO_PUNCTUATE:Ljava/lang/String; = "auto_punctuate"

.field public static final TEXT_AUTO_REPLACE:Ljava/lang/String; = "auto_replace"

.field public static final TEXT_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field public static final TIME_12_24:Ljava/lang/String; = "time_12_24"

.field public static final TRANSITION_ANIMATION_SCALE:Ljava/lang/String; = "transition_animation_scale"

.field public static final TTY_MODE:Ljava/lang/String; = "tty_mode"

.field public static final TV_STATUS:Ljava/lang/String; = "tv_out"

.field public static final TV_SYSTEM:Ljava/lang/String; = "tv_system"

.field public static final UART_APCP_MODE:Ljava/lang/String; = "uartapcpmode"

.field public static final UNA_SETTING:Ljava/lang/String; = "una_setting"

.field public static final UNLOCK_COUNTER:Ljava/lang/String; = "unlock_counter"

.field public static final UNLOCK_SOUND:Ljava/lang/String; = "unlock_sound"

.field public static final USB_APCP_MODE:Ljava/lang/String; = "usbapcpmode"

.field public static final USB_ASKON_MTP_ON:Ljava/lang/String; = "usb_askon_mtp_on"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VIBRATE_IN_SILENT:Ljava/lang/String; = "vibrate_in_silent"

.field public static final VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field public static final VIB_FEEDBACK_MAGNITUDE:Ljava/lang/String; = "VIB_FEEDBACK_MAGNITUDE"

.field public static final VIB_NOTIFICATION_MAGNITUDE:Ljava/lang/String; = "VIB_NOTIFICATION_MAGNITUDE"

.field public static final VIB_RECVCALL_MAGNITUDE:Ljava/lang/String; = "VIB_RECVCALL_MAGNITUDE"

.field public static final VIDEO_CALL_RINGTONE:Ljava/lang/String; = "video_call_ringtone"

.field public static final VOLUME_ALARM:Ljava/lang/String; = "volume_alarm"

.field public static final VOLUME_BLUETOOTH_SCO:Ljava/lang/String; = "volume_bluetooth_sco"

.field public static final VOLUME_MUSIC:Ljava/lang/String; = "volume_music"

.field public static final VOLUME_NOTIFICATION:Ljava/lang/String; = "volume_notification"

.field public static final VOLUME_RING:Ljava/lang/String; = "volume_ring"

.field public static final VOLUME_SETTINGS:[Ljava/lang/String; = null

.field public static final VOLUME_SYSTEM:Ljava/lang/String; = "volume_system"

.field public static final VOLUME_VOICE:Ljava/lang/String; = "volume_voice"

.field public static final WAIT_FOR_DEBUGGER:Ljava/lang/String; = "wait_for_debugger"

.field public static final WALLPAPER_ACTIVITY:Ljava/lang/String; = "wallpaper_activity"

.field public static final WALLPAPER_MODE:Ljava/lang/String; = "wallpaper_mode"

.field public static final WIFI_HTTP_PORT:Ljava/lang/String; = "wifi_http_port"

.field public static final WIFI_HTTP_PROXY:Ljava/lang/String; = "wifi_http_proxy"

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NUM_ALLOWED_CHANNELS:Ljava/lang/String; = "wifi_num_allowed_channels"

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLEEP_POLICY:Ljava/lang/String; = "wifi_sleep_policy"

.field public static final WIFI_SLEEP_POLICY_DEFAULT:I = 0x0

.field public static final WIFI_SLEEP_POLICY_NEVER:I = 0x2

.field public static final WIFI_SLEEP_POLICY_NEVER_WHILE_PLUGGED:I = 0x1

.field public static final WIFI_SLEEP_POLICY_SAMSUNG_DEFAULT:I = 0x2

.field public static final WIFI_STATIC_DNS1:Ljava/lang/String; = "wifi_static_dns1"

.field public static final WIFI_STATIC_DNS2:Ljava/lang/String; = "wifi_static_dns2"

.field public static final WIFI_STATIC_GATEWAY:Ljava/lang/String; = "wifi_static_gateway"

.field public static final WIFI_STATIC_IP:Ljava/lang/String; = "wifi_static_ip"

.field public static final WIFI_STATIC_NETMASK:Ljava/lang/String; = "wifi_static_netmask"

.field public static final WIFI_USE_STATIC_IP:Ljava/lang/String; = "wifi_use_static_ip"

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WINDOW_ANIMATION_SCALE:Ljava/lang/String; = "window_animation_scale"

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 719
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 723
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    .line 724
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "http_proxy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "install_non_market_apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "location_providers_allowed"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "logging_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_last_update"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "parental_control_redirect_url"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "settings_classname"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_mass_storage_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_setting_mode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "usb_askon_mtp_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "use_google_mail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ap_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_background_check_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_initial_ignored_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_max_ap_checks"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_count"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_delay_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "wifi_watchdog_ping_timeout_ms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "license_transfer_track"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string v1, "expiry_reminder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    const-string/jumbo v1, "roaming_download"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1065
    const-string v0, "content://settings/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 1305
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_ssid_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_ssid_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_ssid_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_SSID:[Ljava/lang/String;

    .line 1316
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_security_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_security_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_security_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_SECURITY:[Ljava/lang/String;

    .line 1327
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_passwd_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_passwd_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_passwd_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_PASSWD:[Ljava/lang/String;

    .line 1339
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_hide_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_hide_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_hide_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_HIDE:[Ljava/lang/String;

    .line 1351
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_saved_state_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_saved_state_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_saved_state_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_SAVED_STATE:[Ljava/lang/String;

    .line 1364
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_wep_index_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_wep_index_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_wep_index_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_WEP_INDEX:[Ljava/lang/String;

    .line 1378
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_wep_key_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_wep_key_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_wep_key_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_WEP_KEY:[Ljava/lang/String;

    .line 1384
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_mode_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_mode_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_mode_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_MODE:[Ljava/lang/String;

    .line 1391
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_group_cipher_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_group_cipher_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_group_cipher_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_GROUP_CIPHER:[Ljava/lang/String;

    .line 1399
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_ap_channel_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_ap_channel_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_ap_channel_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_AP_CHANNEL:[Ljava/lang/String;

    .line 1416
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mifi_allow_all_device_checked_1"

    aput-object v1, v0, v3

    const-string v1, "mifi_allow_all_device_checked_2"

    aput-object v1, v0, v4

    const-string v1, "mifi_allow_all_device_checked_3"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->MIFI_ALLOW_ALL_DEVICE_CHECKED:[Ljava/lang/String;

    .line 1655
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "volume_voice"

    aput-object v1, v0, v3

    const-string/jumbo v1, "volume_system"

    aput-object v1, v0, v4

    const-string/jumbo v1, "volume_ring"

    aput-object v1, v0, v5

    const-string/jumbo v1, "volume_music"

    aput-object v1, v0, v6

    const-string/jumbo v1, "volume_alarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "volume_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    .line 1696
    const-string/jumbo v0, "ringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 1717
    const-string v0, "cmas_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_CMAS_SOUND_URI:Landroid/net/Uri;

    .line 1725
    const-string/jumbo v0, "notification_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1741
    const-string v0, "alarm_alert"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    .line 2127
    const/16 v0, 0x66

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "stay_on_while_plugged_in"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wifi_sleep_policy"

    aput-object v1, v0, v4

    const-string/jumbo v1, "wifi_http_proxy"

    aput-object v1, v0, v5

    const-string/jumbo v1, "wifi_http_port"

    aput-object v1, v0, v6

    const-string v1, "mifi_ap_profile_num"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mifi_ap_ssid_1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mifi_ap_security_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mifi_ap_passwd_1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mifi_ap_hide_1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mifi_ap_saved_state_1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mifi_ap_wep_index_1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mifi_ap_wep_key_1"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mifi_ap_mode_1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mifi_ap_channel_1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mifi_ap_group_cipher_1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mifi_ap_ssid_2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mifi_ap_security_2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mifi_ap_passwd_2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mifi_ap_hide_2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "mifi_ap_saved_state_2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mifi_ap_wep_index_2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mifi_ap_wep_key_2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "mifi_ap_mode_2"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "mifi_ap_channel_2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mifi_ap_group_cipher_2"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mifi_ap_ssid_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mifi_ap_security_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "mifi_ap_passwd_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mifi_ap_hide_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "mifi_ap_saved_state_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mifi_ap_wep_index_3"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "mifi_ap_wep_key_3"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "mifi_ap_mode_3"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "mifi_ap_channel_3"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "mifi_ap_group_cipher_3"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "mifi_ap_white_mac_cnt"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "mifi_ap_black_mac_cnt"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "mifi_ap_white_mac_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "mifi_ap_black_mac_addr"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "wifi_use_static_ip"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "wifi_static_ip"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "wifi_static_gateway"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "wifi_static_netmask"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "wifi_static_dns1"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "wifi_static_dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "bluetooth_discoverability"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "bluetooth_discoverability_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "dim_screen"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "screen_off_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "screen_brightness"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "screen_brightness_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "vibrate_on"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "notifications_use_ring_volume"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "mode_ringer"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "mode_ringer_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "mute_streams_affected"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "volume_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "volume_system"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "volume_ring"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "volume_music"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "volume_alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "volume_notification"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "volume_bluetooth_sco"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "volume_voice_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "volume_system_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "volume_ring_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "volume_music_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "volume_alarm_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "volume_notification_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "volume_bluetooth_sco_last_audible"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "vibrate_in_silent"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "auto_replace"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "auto_caps"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "auto_punctuate"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "show_password"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "auto_time"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "time_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "date_format"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "accelerometer_rotation"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "dtmf_tone_type"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "call_auto_retry"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "hearing_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "tty_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "sound_effects_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "haptic_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "power_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "dock_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "lockscreen_sounds_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "show_web_suggestions"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "uartapcpmode"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "usbapcpmode"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "notification_light_pulse"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "sip_call_options"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "sip_receive_calls"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "mms_x_wap_profile_url"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "mms_user_agent"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "mms_post_url"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "mms_domestic_test_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "carrier_wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "carrier_power_onoff"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 2254
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "emergency_first_num"

    aput-object v1, v0, v3

    const-string v1, "emergency_second_num"

    aput-object v1, v0, v4

    const-string v1, "emergency_third_num"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Settings$System;->EMERGENCY_NUMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "cr"
    .parameter "outConfig"

    .prologue
    .line 1030
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1032
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1033
    const/high16 v0, 0x3f80

    iput v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 1035
    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 968
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 972
    :goto_0
    return v2

    :cond_0
    move v2, p2

    .line 970
    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 972
    goto :goto_0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, v:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 831
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, v:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 835
    :goto_0
    return v2

    :cond_0
    move v2, p2

    .line 833
    goto :goto_0

    .line 834
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, p2

    .line 835
    goto :goto_0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 4
    .parameter "cr"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 928
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, valString:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 899
    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, valString:Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    move-wide v2, v4

    .line 906
    .local v2, value:J
    :goto_0
    return-wide v2

    .end local v2           #value:J
    :cond_0
    move-wide v2, p2

    .line 902
    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2       #value:J
    goto :goto_0
.end method

.method public static getShowGTalkServiceStatus(Landroid/content/ContentResolver;)Z
    .locals 2
    .parameter "cr"

    .prologue
    const/4 v1, 0x0

    .line 1055
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 773
    const-class v0, Landroid/provider/Settings$System;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has moved from android.provider.Settings.System"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to android.provider.Settings.Secure, returning read-only value."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 782
    :goto_0
    monitor-exit v0

    return-object v1

    .line 778
    :cond_0
    :try_start_1
    sget-object v1, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v1, :cond_1

    .line 779
    new-instance v1, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_system_version"

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_system"

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v1, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 782
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v1, p0, p1}, Landroid/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "name"

    .prologue
    .line 808
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, returning Secure URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 813
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$System;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static hasInterestingConfigurationChanges(I)Z
    .locals 1
    .parameter "changes"

    .prologue
    .line 1051
    const/high16 v0, 0x4000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "cr"
    .parameter "config"

    .prologue
    .line 1046
    const-string v0, "font_scale"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1018
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 881
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 950
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 793
    sget-object v0, Landroid/provider/Settings$System;->MOVED_TO_SECURE:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has moved from android.provider.Settings.System"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to android.provider.Settings.Secure, value is unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v0, 0x0

    .line 798
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setShowGTalkServiceStatus(Landroid/content/ContentResolver;Z)V
    .locals 2
    .parameter "cr"
    .parameter "flag"

    .prologue
    .line 1059
    const-string v0, "SHOW_GTALK_SERVICE_STATUS"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    return-void

    .line 1059
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
