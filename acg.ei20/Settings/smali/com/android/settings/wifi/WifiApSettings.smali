.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    }
.end annotation


# static fields
.field private static final BATTERY_TIME_10_MIN:I = 0x2

.field private static final BATTERY_TIME_20_MIN:I = 0x3

.field private static final BATTERY_TIME_30_MIN:I = 0x4

.field private static final BATTERY_TIME_5_MIN:I = 0x1

.field private static final BATTERY_TIME_60_MIN:I = 0x5

.field private static final BATTERY_TIME_NEVER_TURN_OFF:I = 0x0

.field private static final BUFFER_SIZE:I = 0x2000

.field private static final CONFIGING_MODE:I = 0x1

.field private static final CONFIGURE_AUTOMATIC:I = 0x1

.field private static final CONFIGURE_MANUAL:I = 0x2

.field private static final CONFIGURE_MODE_VALUE:I = 0x3

.field private static final CONFIG_SUBTEXT:I = 0x7f0905b6

.field private static final CONNECTED_DEVICES:Ljava/lang/String; = "wifi_ap_connected_devices"

.field private static final DEFAULT_CONFIGURE:I = 0x0

.field private static final DEFAULT_MODE:I = 0x0

.field private static final DEFAULT_POWERMODE:I = 0x708

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final DIALOG_BATTERY_MANAGE:I = 0x11

.field private static final DIALOG_CONFIGURE:I = 0xb

.field private static final DIALOG_CONFIGURE_SWITCH_AUTOMATIC:I = 0x17

.field private static final DIALOG_CONFIGURE_SWITCH_MANUAL:I = 0x18

.field private static final DIALOG_CONFIGURE_TURN_ON:I = 0xb

.field private static final DIALOG_DEACTIVATING:I = 0x6

.field private static final DIALOG_DISCONNECT_CONNECTION_PASSWORD:I = 0x5

.field private static final DIALOG_DISCONNECT_CONNECTION_SSID:I = 0x8

.field private static final DIALOG_DISCONNECT_WIFI:I = 0x4

.field private static final DIALOG_INITIAL_CONFIGURE:I = 0x16

.field private static final DIALOG_INITIAL_CONFIGURE_NO_DISPLAY_CHECKED:I = 0x4

.field private static final DIALOG_MANAGE_DEVICE:I = 0x10

.field private static final DIALOG_NETWORK_SETTINGS:I = 0x15

.field private static final DIALOG_NONE_SECURITY_WARN:I = 0x14

.field private static final DIALOG_NO_SIM:I = 0x2

.field private static final DIALOG_NULL_PASSWORD_WARN:I = 0xf

.field private static final DIALOG_OUT_COVERAGE:I = 0x3

.field private static final DIALOG_OUT_COVERAGE2:I = 0xa

.field private static final DIALOG_OUT_COVERAGE2_NO_DISPLAY_CHECKED:I = 0x1

.field private static final DIALOG_ROAMING:I = 0x7

.field private static final DIALOG_SECURITY_CHANGE_WARN:I = 0x13

.field private static final DIALOG_TURN_ON:I = 0x9

.field private static final DIALOG_TURN_ON_NO_DISPLAY_CHECKED:I = 0x2

.field private static final DIALOG_WRONG_SSID_WARN:I = 0xd

.field private static final DIALOG_WRONG_WEP_PASSWORD_WARN:I = 0xe

.field private static final DIALOG_WRONG_WPA_PASSWORD_WARN:I = 0x12

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final KEY_WIFIAP_POWERMODE:Ljava/lang/String; = "wifi_ap_powermode"

.field private static final MAXCLIENT_VALUE:I = 0x2

.field private static final MAX_NAME_LENGTH:I = 0x20

.field private static final MAX_PASSWORD_LENGTH:I = 0x40

.field private static final MIN_PASSWORD_LENGTH:I = 0x8

.field private static final OPEN_INDEX:I = 0x0

.field private static final POWERMODE_VALUE:I = 0x1

.field private static final PREF_NAME:Ljava/lang/String; = "SAMSUNG_HOTSPOT"

.field private static final SECURITY_TYPE_OPEN:I = 0x0

.field private static final SECURITY_TYPE_WEP:I = 0x1

.field private static final SECURITY_TYPE_WPA2:I = 0x2

.field private static final STA_DISCONNECT_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "WifiApSettings"

.field public static final WIFIAP_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_ALARM_START:I = 0x0

.field public static final WIFIAP_ALARM_STOP:I = 0x2

.field public static final WIFIAP_BATTERY_MANAGE_ACTION:Ljava/lang/String; = "com/android/settings/wifi.WIFIAPSETTINGS_BATTERY_ALARM"

.field public static final WIFIAP_BATTERY_MANAGE_ALARM_OPTION:Ljava/lang/String; = "option"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "com.android.settings.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field private static final WIFI_AP_BATTERY_MANAGE:Ljava/lang/String; = "wifi_ap_battery_management"

.field private static final WIFI_AP_CONFIGURE:Ljava/lang/String; = "wifi_ap_configure"

.field private static final WIFI_AP_MANAGE_DEVICE:Ljava/lang/String; = "wifi_ap_manage device"

.field private static final WIFI_AP_NETWORK_SETTINGS:Ljava/lang/String; = "wifi_ap_network_settings"

.field private static final WIFI_AP_SETTINGS:Ljava/lang/String; = "wifi_ap_settings"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WPA_INDEX:I = 0x1

.field private static mLowBatteryLevel:I


# instance fields
.field private WifiDisconnectMode:I

.field private bLowBattery:Z

.field private bNoSim:Z

.field private bOutOfCoverage:Z

.field private bRoaming:Z

.field private defaultSsid:Ljava/lang/String;

.field private displayToastFlag:Z

.field private hasClient:Z

.field private isHide:Z

.field private mBatteryManage:Landroid/preference/Preference;

.field private mConfigMode:I

.field private mConfigure:Landroid/preference/Preference;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mCurrentOrientation:I

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mDialogNoSim:Landroid/app/AlertDialog;

.field private mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mFootView:Landroid/widget/LinearLayout;

.field private mHelpImage:Landroid/widget/ImageView;

.field private mHelpOrientTitle:Landroid/widget/TextView;

.field private mHelpTitle:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListView:Landroid/widget/ListView;

.field private mLpWindow:Landroid/view/WindowManager$LayoutParams;

.field private mManageDevice:Landroid/preference/Preference;

.field private mNetworkSettings:Landroid/preference/Preference;

.field private mOrientedFootView:Landroid/widget/LinearLayout;

.field private mOrientedHelpImage:Landroid/widget/ImageView;

.field private mOrientedWifiApHelpText:Landroid/widget/TextView;

.field private mPowerModeValue:I

.field private mPrefHelpActivationText:Landroid/preference/Preference;

.field private mPrefHelpImage:Landroid/preference/Preference;

.field private mPrefHelpInactivationText:Landroid/preference/Preference;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialog2:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiAp:Landroid/preference/Preference;

.field private mWifiApApHelpLayout:Landroid/widget/LinearLayout;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApHelpText:Landroid/widget/TextView;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWindowManager:Landroid/view/WindowManager;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private prefs:Landroid/content/SharedPreferences;

.field private rememberedPassword:Ljava/lang/String;

.field private rememberedSecurity:I

.field private rememberedSsid:Ljava/lang/String;

.field private settingChanged:Z

.field private ssid_warn:Z

.field private viewForHelp:Landroid/view/View;

.field private wifiEnabled:I

.field private wifi_turn_off_processing:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 207
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    .line 212
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    .line 264
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 267
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 284
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    .line 287
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 333
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    .line 337
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 559
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2624
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/WifiApSettings;Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/settings/wifi/WifiApSettings;->mLowBatteryLevel:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->getBatteryManageTime(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getDisplayFlags()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->loadPreference(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    return p1
.end method

.method private addIntentFilter()V
    .locals 2

    .prologue
    .line 543
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com/android/settings/wifi.WIFIAPSETTINGS_BATTERY_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private dimissAllDialog()V
    .locals 1

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2495
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2499
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    .line 2500
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 2502
    :cond_2
    return-void
.end method

.method private displayConfigureFinishedToast()V
    .locals 2

    .prologue
    .line 2805
    const v1, 0x7f0901de

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2806
    .local v0, s:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2807
    return-void
.end method

.method private getBatteryManageTime(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2735
    packed-switch p1, :pswitch_data_0

    .line 2755
    const/4 v0, 0x0

    .line 2758
    .local v0, sec:I
    :goto_0
    return v0

    .line 2737
    .end local v0           #sec:I
    :pswitch_0
    const/4 v0, 0x0

    .line 2738
    .restart local v0       #sec:I
    goto :goto_0

    .line 2740
    .end local v0           #sec:I
    :pswitch_1
    const/16 v0, 0x12c

    .line 2741
    .restart local v0       #sec:I
    goto :goto_0

    .line 2743
    .end local v0           #sec:I
    :pswitch_2
    const/16 v0, 0x258

    .line 2744
    .restart local v0       #sec:I
    goto :goto_0

    .line 2746
    .end local v0           #sec:I
    :pswitch_3
    const/16 v0, 0x4b0

    .line 2747
    .restart local v0       #sec:I
    goto :goto_0

    .line 2749
    .end local v0           #sec:I
    :pswitch_4
    const/16 v0, 0x708

    .line 2750
    .restart local v0       #sec:I
    goto :goto_0

    .line 2752
    .end local v0           #sec:I
    :pswitch_5
    const/16 v0, 0xe10

    .line 2753
    .restart local v0       #sec:I
    goto :goto_0

    .line 2735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getBatterySpinnerPosition()I
    .locals 2

    .prologue
    .line 2701
    const/4 v0, 0x0

    .line 2703
    .local v0, position:I
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    sparse-switch v1, :sswitch_data_0

    .line 2723
    const/4 v0, 0x0

    .line 2727
    :goto_0
    return v0

    .line 2705
    :sswitch_0
    const/4 v0, 0x0

    .line 2706
    goto :goto_0

    .line 2708
    :sswitch_1
    const/4 v0, 0x1

    .line 2709
    goto :goto_0

    .line 2711
    :sswitch_2
    const/4 v0, 0x2

    .line 2712
    goto :goto_0

    .line 2714
    :sswitch_3
    const/4 v0, 0x3

    .line 2715
    goto :goto_0

    .line 2717
    :sswitch_4
    const/4 v0, 0x4

    .line 2718
    goto :goto_0

    .line 2720
    :sswitch_5
    const/4 v0, 0x5

    .line 2721
    goto :goto_0

    .line 2703
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDisplayFlags()V
    .locals 4

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2584
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v3, "wifi_ap_dont_display_checked_flag"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2591
    :goto_0
    return-void

    .line 2586
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2587
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiApSettings"

    const-string v3, "AP settings not found, returning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    goto :goto_0
.end method

.method private getWhiteListMac()V
    .locals 5

    .prologue
    const-string v4, "WifiApSettings"

    .line 2597
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2598
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v3, "mifi_ap_white_mac_addr"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 2599
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteListMac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v3, "mifi_ap_white_mac_cnt"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2608
    :goto_0
    return-void

    .line 2602
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2603
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiApSettings"

    const-string v2, "AP settings not found, returning"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const v3, 0x7f0905d5

    const/4 v2, 0x0

    .line 2455
    packed-switch p1, :pswitch_data_0

    .line 2488
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2457
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 2458
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 2459
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2461
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 2462
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2464
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    if-eqz v1, :cond_0

    .line 2465
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V

    .line 2466
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    goto :goto_0

    .line 2473
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2474
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2476
    const v1, 0x7f0905cf

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2477
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2478
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2479
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 2480
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2481
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2482
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2483
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "Turn Mobile AP on"

    const-string v1, "WifiApSettings"

    .line 2504
    const-string v0, "WifiApSettings"

    const-string v0, "handleWifiStateChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    .line 2508
    if-ne p1, v3, :cond_0

    .line 2510
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    packed-switch v0, :pswitch_data_0

    .line 2574
    :goto_0
    iput v2, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    .line 2577
    :cond_0
    return-void

    .line 2514
    :pswitch_0
    const-string v0, "WifiApSettings"

    const-string v0, "onReceive : Turned WiFi off(DIALOG_DISCONNECT_WIFI)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2519
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    if-ne v0, v3, :cond_3

    .line 2520
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    .line 2521
    const-string v0, "WifiApSettings"

    const-string v0, "Turn Mobile AP on"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 2523
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 2524
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 2526
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 2527
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2530
    :cond_2
    iput v2, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    goto :goto_0

    .line 2532
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 2534
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    .line 2535
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 2538
    :cond_4
    const-string v0, "WifiApSettings"

    const-string v0, "Turn Mobile AP on"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 2540
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 2541
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    goto :goto_0

    .line 2543
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    .line 2544
    const-string v0, "WifiApSettings"

    const-string v0, "showDialog DIALOG_OUT_COVERAGE2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 2548
    :cond_6
    const-string v0, "WifiApSettings"

    const-string v0, "showDialog DIALOG_TURN_ON"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 2510
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isHexString(Ljava/lang/String;)Z
    .locals 3
    .parameter "wepPass"

    .prologue
    .line 2614
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2615
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2616
    const/4 v1, 0x0

    .line 2618
    :goto_1
    return v1

    .line 2614
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2618
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isOpenNetwrok()Z
    .locals 2

    .prologue
    .line 2303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 2308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadPreference(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 2686
    const-string v0, "WifiApSettings"

    const-string v1, "loadPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const-string v0, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    .line 2690
    if-ne v2, p1, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "POWERMODE_VALUE"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    .line 2693
    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 2694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CONFIGURE_MODE_VALUE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    .line 2696
    :cond_1
    return-void
.end method

.method private reloadWifiConfig()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    .line 2765
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2767
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    packed-switch v0, :pswitch_data_0

    .line 2797
    :goto_0
    return-void

    .line 2770
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 2771
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, ""

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2772
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v2, ""

    aput-object v3, v0, v1

    .line 2773
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_0

    .line 2777
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 2778
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2779
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    .line 2781
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 2785
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, ""

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2783
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 2790
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 2791
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 2792
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2793
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2794
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 2767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private savePreference(I)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 2670
    const-string v1, "WifiApSettings"

    const-string v2, "savePreference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/WifiApSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    .line 2673
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2675
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-ne v3, p1, :cond_0

    .line 2676
    const-string v1, "POWERMODE_VALUE"

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2678
    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 2679
    const-string v1, "CONFIGURE_MODE_VALUE"

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2681
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2682
    return-void
.end method

.method private saveRememberedVariablesFromConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "WifiApSettings"

    .line 2153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2155
    :cond_0
    iput v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 2156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    .line 2174
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    .line 2184
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rememberedSecurity     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rememberedSsid     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rememberedPassword     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return-void

    .line 2158
    :cond_1
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    goto :goto_0

    .line 2162
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 2171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method private setHelpMessage()V
    .locals 24

    .prologue
    .line 2313
    const-string v11, ""

    .line 2314
    .local v11, password:Ljava/lang/String;
    const-string v14, ""

    .line 2316
    .local v14, ssid:Ljava/lang/String;
    const-string v5, ""

    .line 2317
    .local v5, battery:Ljava/lang/String;
    const/4 v15, 0x0

    .line 2318
    .local v15, startPointBattery:I
    const/4 v6, 0x0

    .line 2320
    .local v6, lengthBattery:I
    const/16 v17, 0x0

    .line 2321
    .local v17, startPointPassword:I
    const/16 v19, 0x0

    .line 2322
    .local v19, startPointSsid:I
    const/16 v18, 0x0

    .line 2323
    .local v18, startPointSecondSsid:I
    const/16 v16, 0x0

    .line 2324
    .local v16, startPointDefaultSsid:I
    const/4 v8, 0x0

    .line 2325
    .local v8, lengthPassword:I
    const/4 v10, 0x0

    .line 2326
    .local v10, lengthSsid:I
    const/4 v7, 0x0

    .line 2327
    .local v7, lengthDefaultSsid:I
    const/4 v9, 0x0

    .line 2329
    .local v9, lengthS:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v20

    if-nez v20, :cond_12

    .line 2330
    const-string v20, "WifiApSettings"

    const-string v21, "start message"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2337
    const v20, 0x7f0905cf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2338
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0905d5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 2340
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0905d5

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 2390
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 2391
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    .line 2392
    const-string v20, ""

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 2393
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 2394
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    move/from16 v0, v17

    move v1, v9

    if-lt v0, v1, :cond_1c

    .line 2395
    :cond_2
    const/16 v17, 0x0

    .line 2396
    const/4 v8, 0x0

    .line 2399
    :cond_3
    :goto_1
    const-string v20, ""

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 2400
    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    .line 2401
    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 2402
    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    move/from16 v0, v19

    move v1, v9

    if-lt v0, v1, :cond_5

    .line 2403
    :cond_4
    const/16 v19, 0x0

    .line 2405
    :cond_5
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    .line 2408
    :cond_6
    const-string v20, ""

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 2409
    invoke-virtual {v12, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 2410
    const/16 v20, -0x1

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    if-lt v15, v9, :cond_8

    .line 2411
    :cond_7
    const/4 v15, 0x0

    .line 2413
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2416
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 2418
    const-string v20, "WifiApSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startPointDefaultSsid ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move/from16 v0, v16

    move v1, v9

    if-lt v0, v1, :cond_b

    .line 2420
    :cond_a
    const/16 v16, 0x0

    .line 2422
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v7

    .line 2424
    const-string v20, "WifiApSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "lengthDefaultSsid ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    :cond_c
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2428
    .local v13, sps:Landroid/text/SpannableStringBuilder;
    if-lez v17, :cond_d

    .line 2429
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v21, v17, v8

    const/16 v22, 0x21

    move-object v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2431
    :cond_d
    if-lez v19, :cond_e

    .line 2432
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v21, v19, v10

    const/16 v22, 0x21

    move-object v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2433
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v21, v18, v10

    const/16 v22, 0x21

    move-object v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2437
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-nez v20, :cond_f

    if-lez v16, :cond_f

    .line 2438
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v21, v16, v7

    const/16 v22, 0x21

    move-object v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2442
    :cond_f
    if-lez v15, :cond_10

    .line 2443
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x106003b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v21, v15, v6

    const/16 v22, 0x21

    move-object v0, v13

    move-object/from16 v1, v20

    move v2, v15

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2444
    new-instance v20, Landroid/text/style/StyleSpan;

    const/16 v21, 0x2

    invoke-direct/range {v20 .. v21}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int v21, v15, v6

    const/16 v22, 0x21

    move-object v0, v13

    move-object/from16 v1, v20

    move v2, v15

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2447
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2450
    .end local v13           #sps:Landroid/text/SpannableStringBuilder;
    :cond_11
    return-void

    .line 2344
    .end local v12           #s:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 2349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0905d6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 2350
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 2351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const v21, 0x7f0905d6

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(I)V

    .line 2352
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1b

    .line 2353
    const-string v20, "WifiApSettings"

    const-string v21, "mWifiConfig != null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const/16 v16, 0x0

    .line 2355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object v11, v0

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 2359
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v21, v0

    aget-object v11, v20, v21

    .line 2364
    :cond_16
    const v20, 0x7f0905b3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object v14, v0

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v20

    if-nez v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 2371
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 2372
    :cond_18
    const v20, 0x7f0905d1

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    const/16 v22, 0x1

    aput-object v14, v21, v22

    const/16 v22, 0x2

    aput-object v11, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 2373
    .end local v12           #s:Ljava/lang/String;
    :cond_19
    const v20, 0x7f0905b2

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    const/16 v22, 0x1

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 2375
    .end local v12           #s:Ljava/lang/String;
    :cond_1a
    const v20, 0x7f0905d0

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v14, v21, v22

    const/16 v22, 0x1

    aput-object v14, v21, v22

    const/16 v22, 0x2

    aput-object v11, v21, v22

    const/16 v22, 0x3

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 2384
    .end local v12           #s:Ljava/lang/String;
    :cond_1b
    const-string v20, "WifiApSettings"

    const-string v21, "mWifiConfig == null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    const-string v11, ""

    .line 2386
    const v20, 0x7f0905b2

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v5, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 2397
    :cond_1c
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    goto/16 :goto_1
.end method

.method private updateConnectedDevices()V
    .locals 24

    .prologue
    .line 2813
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    .local v10, connectedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/WifiApConnectedDevice;>;"
    const/4 v5, 0x0

    .line 2817
    .local v5, DeviceName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2818
    .local v8, Mac:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2822
    .local v7, Ip:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v19

    .line 2824
    .local v19, sta_list:Ljava/lang/String;
    if-eqz v19, :cond_7

    .line 2826
    const-string v21, "WifiApSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateConnectedDevices sta_list:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const-string v21, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2830
    .local v20, tok:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 2832
    .local v17, numClient:I
    const/4 v6, 0x0

    .line 2835
    .local v6, DhcpNumClient:I
    const/16 v21, 0x0

    :try_start_0
    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 2839
    :goto_0
    const-string v21, "WifiApSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateConnectedDevices numClient:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    if-gtz v17, :cond_1

    .line 2844
    const-string v21, "WifiApSettings"

    const-string v22, "updateConnectedDevices removePreference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    .end local v6           #DhcpNumClient:I
    .end local v17           #numClient:I
    .end local v20           #tok:[Ljava/lang/String;
    .end local p0
    :cond_0
    :goto_1
    return-void

    .line 2836
    .restart local v6       #DhcpNumClient:I
    .restart local v17       #numClient:I
    .restart local v20       #tok:[Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception v21

    move-object/from16 v16, v21

    .line 2837
    .local v16, nfe:Ljava/lang/NumberFormatException;
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Could not parse "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2849
    .end local v16           #nfe:Ljava/lang/NumberFormatException;
    :cond_1
    const-string v21, "WifiApSettings"

    const-string v22, "updateConnectedDevices addPreference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    const/4 v12, 0x1

    .local v12, i:I
    :goto_2
    move v0, v12

    move/from16 v1, v17

    if-gt v0, v1, :cond_5

    .line 2855
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    const-string v22, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct/range {v21 .. v22}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x2000

    move-object v0, v9

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2857
    .local v9, buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, mData:Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 2859
    const-string v21, " "

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 2860
    .local v18, sta_info:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    const/16 v21, 0x0

    aget-object v21, v18, v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    aget-object v21, v18, v21

    if-eqz v21, :cond_2

    const/16 v21, 0x2

    aget-object v21, v18, v21

    if-eqz v21, :cond_2

    const/16 v21, 0x3

    aget-object v21, v18, v21

    if-eqz v21, :cond_2

    .line 2861
    const-string v21, "WifiApSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "tok[i] ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v20, v12

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    aget-object v21, v20, v12

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    aget-object v21, v18, v21

    aget-object v22, v20, v12

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2863
    const/16 v21, 0x3

    aget-object v21, v18, v21

    const-string v22, "*"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2864
    const-string v5, "EMPTY"

    .line 2867
    :goto_4
    aget-object v8, v20, v12

    .line 2868
    const/16 v21, 0x2

    aget-object v7, v18, v21

    .line 2870
    new-instance v11, Lcom/android/settings/wifi/WifiApConnectedDevice;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v8

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    .local v11, device:Lcom/android/settings/wifi/WifiApConnectedDevice;
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2873
    add-int/lit8 v6, v6, 0x1

    .line 2875
    const-string v21, "WifiApSettings"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateConnectedDevices added :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2881
    .end local v9           #buf:Ljava/io/BufferedReader;
    .end local v11           #device:Lcom/android/settings/wifi/WifiApConnectedDevice;
    .end local v15           #mData:Ljava/lang/String;
    .end local v18           #sta_info:[Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object/from16 v14, v21

    .line 2882
    .local v14, io:Ljava/io/IOException;
    const-string v21, "WifiApSettings"

    const-string v22, "mac read exception"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    .end local v14           #io:Ljava/io/IOException;
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2865
    .restart local v9       #buf:Ljava/io/BufferedReader;
    .restart local v15       #mData:Ljava/lang/String;
    .restart local v18       #sta_info:[Ljava/lang/String;
    :cond_3
    const/16 v21, 0x3

    :try_start_2
    aget-object v5, v18, v21

    goto :goto_4

    .line 2880
    .end local v18           #sta_info:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 2888
    .end local v9           #buf:Ljava/io/BufferedReader;
    .end local v15           #mData:Ljava/lang/String;
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p0
    .local v13, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiApConnectedDevice;

    goto :goto_6

    .line 2893
    :cond_6
    if-nez v6, :cond_0

    .line 2896
    const-string v21, "WifiApSettings"

    const-string v22, "updateConnectedDevices removePreference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2904
    .end local v6           #DhcpNumClient:I
    .end local v12           #i:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #numClient:I
    .end local v20           #tok:[Ljava/lang/String;
    .restart local p0
    :cond_7
    const-string v21, "WifiApSettings"

    const-string v22, "updateConnectedDevices removePreference"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2230
    const-string v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2231
    .local v3, mProductModel:Ljava/lang/String;
    const-string v4, ""

    .line 2232
    .local v4, mWifiMacAddr:Ljava/lang/String;
    const-string v7, "ril.wifi_macaddr"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2234
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 2236
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 2237
    .local v5, rnd:Ljava/util/Random;
    const/16 v7, 0x383

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v6, v7, 0x64

    .line 2238
    .local v6, sequence:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 2247
    .end local v5           #rnd:Ljava/util/Random;
    .end local v6           #sequence:I
    :goto_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2248
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2250
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v10, v7, Landroid/net/wifi/WifiConfiguration;->useMifi:Z

    .line 2253
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2256
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2257
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2258
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2259
    :cond_0
    const-string v7, "WifiApSettings"

    const-string v8, "preSharedKey:no data"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v8, "0000000016"

    iput-object v8, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2263
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v11, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2265
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v11, v7, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 2268
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->set(I)V

    .line 2272
    iget-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v7, v12}, Ljava/util/BitSet;->set(I)V

    .line 2277
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfiguration()V

    .line 2278
    return-void

    .line 2241
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v12

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 2242
    .local v2, mLast2digitNum:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x5

    sub-int/2addr v8, v9

    invoke-static {v7, v8, v10}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 2243
    .local v1, mLast1digitNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "WifiApSettings"

    .line 1845
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1846
    const/4 v0, 0x0

    .line 1848
    .local v0, numClient:I
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rememberedSsid  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")      rememberedPassword  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     rememberedSecurity  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/4 v2, -0x1

    if-ne p2, v2, :cond_18

    .line 1851
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1853
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getDisplayFlags()V

    .line 1855
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 1856
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: save button: connected client number:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_3

    .line 1858
    const/4 v1, 0x0

    .line 1860
    .local v1, security:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1861
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1862
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 1863
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1864
    :cond_1
    const/4 v1, 0x1

    .line 1865
    const-string v2, "WifiApSettings"

    const-string v2, "onClick: SECURITY_TYPE_WEP"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_7

    .line 1877
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_6

    move v2, v7

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    .line 1878
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssid_warn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1880
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->removeDialog(I)V

    .line 1881
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 2009
    .end local v1           #security:I
    :cond_3
    :goto_2
    return-void

    .line 1867
    .restart local v1       #security:I
    :cond_4
    const/4 v1, 0x0

    .line 1868
    const-string v2, "WifiApSettings"

    const-string v2, "onClick: SECURITY_TYPE_OPEN"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1871
    :cond_5
    const/4 v1, 0x2

    .line 1872
    const-string v2, "WifiApSettings"

    const-string v2, "onClick: SECURITY_TYPE_WPA2"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v2, v6

    .line 1877
    goto :goto_1

    .line 1882
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-nez v2, :cond_9

    .line 1886
    const-string v2, "WifiApSettings"

    const-string v2, "WEP password is null"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1888
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_2

    .line 1889
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1896
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1897
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1898
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 1899
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1900
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1901
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_11

    .line 1902
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1903
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1904
    :cond_11
    if-eqz v0, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1908
    const-string v2, "WifiApSettings"

    const-string v2, "Password is chagned"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1910
    :cond_12
    if-eqz v0, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1914
    const-string v2, "WifiApSettings"

    const-string v2, "SSID is chagned"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1916
    :cond_13
    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-eq v2, v1, :cond_14

    .line 1919
    const-string v2, "WifiApSettings"

    const-string v2, "Security Mode chagned"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1922
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfiguration()V

    .line 1926
    iput v9, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    .line 1929
    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    if-eq v2, v9, :cond_15

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    if-ne v2, v8, :cond_16

    .line 1932
    :cond_15
    iput v7, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    .line 1934
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1936
    :cond_16
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1937
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1938
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 1948
    :goto_3
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    .line 1950
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3

    .line 1952
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 1953
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_2

    .line 1941
    :cond_17
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V

    .line 1942
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V

    .line 1943
    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1944
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    goto :goto_3

    .line 1992
    .end local v1           #security:I
    :cond_18
    const/4 v2, -0x2

    if-ne p2, v2, :cond_3

    .line 1993
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_19

    .line 1994
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1995
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1996
    const-string v2, "WifiApSettings"

    const-string v2, "onClick :   BUTTON_NEGATIVE"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setHideDeviceStatus(Z)V

    goto/16 :goto_2

    .line 2000
    :cond_19
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    .line 2001
    const-string v2, ""

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    .line 2002
    iput v6, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 2003
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 2004
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 2005
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 2283
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2288
    :try_start_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 2290
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2301
    :goto_0
    return-void

    .line 2292
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 2293
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2296
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2297
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "WifiApSettings"

    const-string v2, "onConfigurationChanged : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "WifiApSettings"

    .line 414
    const-string v1, "WifiApSettings"

    const-string v1, "-----onCreate----- "

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->addIntentFilter()V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/wifi/WifiApSettings;->mLowBatteryLevel:I

    .line 421
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 424
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 429
    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 434
    const-string v1, "enable_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 438
    const-string v1, "wifi_ap_configure"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigure:Landroid/preference/Preference;

    .line 439
    const-string v1, "wifi_ap_manage device"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mManageDevice:Landroid/preference/Preference;

    .line 440
    const-string v1, "wifi_ap_battery_management"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryManage:Landroid/preference/Preference;

    .line 449
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V

    .line 452
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0901fe

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 461
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 462
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCurrentOrientation:I

    .line 466
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 468
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030043

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    .line 469
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010003

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    .line 471
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    .line 473
    const v1, 0x7f030044

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    .line 474
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00ac

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    .line 475
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010004

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    .line 476
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    .line 480
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCurrentOrientation:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 486
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 489
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 491
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_3

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->generateDefaultSSID()V

    .line 513
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getDisplayFlags()V

    .line 516
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: rememberedSsid  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 522
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 523
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 524
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    .line 528
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    if-eqz v2, :cond_5

    :cond_1
    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setProhibitionWifiAp(Z)V

    .line 539
    return-void

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 508
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    goto :goto_1

    .line 526
    :cond_4
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    goto :goto_2

    :cond_5
    move v2, v3

    .line 530
    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 48
    .parameter "id"

    .prologue
    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    .line 597
    .local v33, cr:Landroid/content/ContentResolver;
    const/16 v44, 0x1

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    .line 600
    :try_start_0
    const-string v44, "wifi_ap_hide"

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_0

    const/16 v44, 0x1

    :goto_0
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    .line 601
    const-string v44, "WifiApSettings"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "DIALOG_AP_SETTINGS: isHide int "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, "wifi_ap_hide"

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_1
    new-instance v44, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, v45

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/AdapterView$OnItemSelectedListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/settings/wifi/WifiApDialog;->setDefaultSsidText(Ljava/lang/String;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Lcom/android/settings/wifi/WifiApDialog;->setCheckHideMyDeivce(Z)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v44, v0

    .line 1675
    :goto_2
    return-object v44

    .line 600
    :cond_0
    const/16 v44, 0x0

    goto :goto_0

    .line 602
    :catch_0
    move-exception v44

    move-object/from16 v35, v44

    .line 603
    .local v35, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v44, "WifiApSettings"

    const-string v45, "AP settings not found, returning"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    goto :goto_1

    .line 625
    .end local v35           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    const/16 v44, 0x4

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_2

    .line 626
    const-string v44, "WifiApSettings"

    const-string v45, "DIALOG_DISCONNECT_WIFI"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 629
    .local v10, Disconnect_wifi_Dialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x1040014

    move-object v0, v10

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f030074

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v10

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0151

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/Button;

    .line 634
    .local v43, wifi_off:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0152

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/Button;

    .line 636
    .local v34, dont_wifi_off:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$3;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v43 .. v44}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$4;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 684
    .end local v10           #Disconnect_wifi_Dialog:Landroid/app/AlertDialog$Builder;
    .end local v34           #dont_wifi_off:Landroid/widget/Button;
    .end local v43           #wifi_off:Landroid/widget/Button;
    :cond_2
    const/16 v44, 0x2

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_3

    .line 685
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x7f0905c2

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0903a6

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$5;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 696
    :cond_3
    const/16 v44, 0x3

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_4

    .line 697
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x7f0905c3

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0903a6

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$6;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 708
    :cond_4
    const/16 v44, 0x6

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_5

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f030064

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 711
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090005

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$8;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090006

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$7;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 726
    :cond_5
    const/16 v44, 0x7

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_6

    .line 728
    const-string v44, "WifiApSettings"

    const-string v45, "show DIALOG_ROAMING"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 756
    .local v19, RoamingWormDialog:Landroid/app/AlertDialog$Builder;
    new-instance v42, Landroid/widget/TextView;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 758
    .local v42, warnningmsg:Landroid/widget/TextView;
    const v44, 0x7f0905dc

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 759
    const/16 v44, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 760
    const/high16 v44, 0x4190

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 761
    const/16 v44, 0xa

    const/16 v45, 0xa

    const/16 v46, 0xa

    const/16 v47, 0xa

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 762
    const/high16 v44, 0x4000

    const/high16 v45, 0x3f80

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 764
    move-object/from16 v0, v19

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 765
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 766
    const v44, 0x7f090620

    new-instance v45, Lcom/android/settings/wifi/WifiApSettings$10;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v19

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 782
    const/high16 v44, 0x104

    new-instance v45, Lcom/android/settings/wifi/WifiApSettings$11;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v19

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 806
    .end local v19           #RoamingWormDialog:Landroid/app/AlertDialog$Builder;
    .end local v42           #warnningmsg:Landroid/widget/TextView;
    :cond_6
    const/16 v44, 0x5

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    .line 807
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x7f0905c8

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090005

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$13;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090006

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$12;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 846
    :cond_7
    const/16 v44, 0x8

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_8

    .line 847
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x7f0905c7

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090005

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$15;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$15;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090006

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$14;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$14;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 886
    :cond_8
    const/16 v44, 0x9

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_a

    .line 888
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    .local v7, BatteryReminderWarningDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x1040014

    move-object v0, v7

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03005a

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v7

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0111

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/Button;

    .line 896
    .local v38, mobile_on:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0112

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/Button;

    .line 898
    .local v37, mobile_off:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0113

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    .line 900
    .local v30, battery_mnt:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0114

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/CheckBox;

    .line 902
    .local v32, checkBox:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    move/from16 v44, v0

    and-int/lit8 v44, v44, 0x2

    if-eqz v44, :cond_9

    .line 903
    const/16 v44, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 908
    :goto_3
    invoke-virtual/range {v32 .. v32}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v40

    .line 909
    .local v40, prev_checked:Z
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$16;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings$16;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$17;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings$17;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$18;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings$18;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    const/high16 v44, 0x104

    new-instance v45, Lcom/android/settings/wifi/WifiApSettings$19;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiApSettings$19;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;Z)V

    move-object v0, v7

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 968
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 905
    .end local v40           #prev_checked:Z
    :cond_9
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 988
    .end local v7           #BatteryReminderWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v30           #battery_mnt:Landroid/widget/Button;
    .end local v32           #checkBox:Landroid/widget/CheckBox;
    .end local v37           #mobile_off:Landroid/widget/Button;
    .end local v38           #mobile_on:Landroid/widget/Button;
    :cond_a
    const/16 v44, 0xa

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_b

    .line 989
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1050
    .local v16, MobileApFeatureWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v42, Landroid/widget/TextView;

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1052
    .restart local v42       #warnningmsg:Landroid/widget/TextView;
    const v44, 0x7f0905dc

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1053
    const/16 v44, -0x1

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1054
    const/high16 v44, 0x4190

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1055
    const/16 v44, 0xa

    const/16 v45, 0xa

    const/16 v46, 0xa

    const/16 v47, 0xa

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1056
    const/high16 v44, 0x4000

    const/high16 v45, 0x3f80

    move-object/from16 v0, v42

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1058
    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1059
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v44

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1060
    const v44, 0x7f090620

    new-instance v45, Lcom/android/settings/wifi/WifiApSettings$21;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$21;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v16

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1075
    const/high16 v44, 0x104

    new-instance v45, Lcom/android/settings/wifi/WifiApSettings$22;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$22;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v16

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1081
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1083
    .end local v16           #MobileApFeatureWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v42           #warnningmsg:Landroid/widget/TextView;
    :cond_b
    const/16 v44, 0xb

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_c

    .line 1085
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1086
    .local v14, MobileApConfigureDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x7f0905b8

    move-object v0, v14

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03005b

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v14

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0116

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1090
    .local v5, Automatic_configure:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0117

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1092
    .local v13, Manual_configure:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$23;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$23;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object v0, v5

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1160
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$24;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$24;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object v0, v13

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1174
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1175
    .end local v5           #Automatic_configure:Landroid/widget/Button;
    .end local v13           #Manual_configure:Landroid/widget/Button;
    .end local v14           #MobileApConfigureDialog:Landroid/app/AlertDialog$Builder;
    :cond_c
    const/16 v44, 0xb

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_d

    .line 1176
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1177
    .local v15, MobileApConfigureTurnOnDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x1040014

    move-object v0, v15

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1179
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03005e

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v15

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b011e

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1182
    .restart local v5       #Automatic_configure:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b011f

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 1184
    .restart local v13       #Manual_configure:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$25;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$25;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object v0, v5

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$26;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$26;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object v0, v13

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1245
    .end local v5           #Automatic_configure:Landroid/widget/Button;
    .end local v13           #Manual_configure:Landroid/widget/Button;
    .end local v15           #MobileApConfigureTurnOnDialog:Landroid/app/AlertDialog$Builder;
    :cond_d
    const/16 v44, 0xd

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_f

    .line 1246
    const-string v44, "WifiApSettings"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "ssid_warn 2: "

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x1040014

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    move/from16 v45, v0

    if-eqz v45, :cond_e

    const v45, 0x7f0901f4

    :goto_4
    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0905db

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$28;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$28;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const/high16 v45, 0x104

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$27;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$27;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    :cond_e
    const v45, 0x7f0901f3

    goto :goto_4

    .line 1275
    :cond_f
    const/16 v44, 0xe

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_10

    .line 1276
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x1040014

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0901f5

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0905db

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$30;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$30;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const/high16 v45, 0x104

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$29;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$29;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1303
    :cond_10
    const/16 v44, 0x12

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_11

    .line 1304
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x1040014

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0901f6

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0905db

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$32;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$32;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const/high16 v45, 0x104

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$31;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$31;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1332
    :cond_11
    const/16 v44, 0x13

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 1333
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x7f0905c9

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090005

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$34;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$34;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f090006

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$33;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$33;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1372
    :cond_12
    const/16 v44, 0xf

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    .line 1373
    new-instance v44, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v45, 0x1040014

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0901fa

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x7f0905db

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$36;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$36;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const/high16 v45, 0x104

    new-instance v46, Lcom/android/settings/wifi/WifiApSettings$35;

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$35;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual/range {v44 .. v46}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1403
    :cond_13
    const/16 v44, 0x10

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_14

    .line 1404
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1406
    .local v12, ManageDeviceDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x7f0901dd

    move-object v0, v12

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1409
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f030069

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v12

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0128

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/Button;

    .line 1412
    .local v31, bview_device:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0139

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/Button;

    .line 1414
    .local v29, ballowed_device:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$37;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$37;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1421
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$38;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$38;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1429
    .end local v12           #ManageDeviceDialog:Landroid/app/AlertDialog$Builder;
    .end local v29           #ballowed_device:Landroid/widget/Button;
    .end local v31           #bview_device:Landroid/widget/Button;
    :cond_14
    const/16 v44, 0x11

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    .line 1430
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1431
    .local v6, BatteryManageDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x7f0901e1

    move-object v0, v6

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1432
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f030059

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v6

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b010f

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/Spinner;

    .line 1435
    .local v36, mBatteryManage:Landroid/widget/Spinner;
    const/16 v44, 0x1

    move-object v0, v6

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1437
    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->loadPreference(I)V

    .line 1438
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getBatterySpinnerPosition()I

    move-result v39

    .line 1439
    .local v39, pos:I
    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1441
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$39;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$39;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1502
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1504
    .end local v6           #BatteryManageDialog:Landroid/app/AlertDialog$Builder;
    .end local v36           #mBatteryManage:Landroid/widget/Spinner;
    .end local v39           #pos:I
    :cond_15
    const/16 v44, 0x14

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_16

    .line 1505
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1506
    .local v18, NoneSecurityWarningDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x1040014

    move-object/from16 v0, v18

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03006c

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b013e

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    .line 1511
    .local v22, bChange_security:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b013f

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    .line 1513
    .local v25, bContinue:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$40;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$40;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1523
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$41;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$41;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    const/high16 v44, 0x104

    new-instance v45, Lcom/android/settings/wifi/WifiApSettings$42;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$42;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v18

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1540
    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1541
    .end local v18           #NoneSecurityWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v22           #bChange_security:Landroid/widget/Button;
    .end local v25           #bContinue:Landroid/widget/Button;
    :cond_16
    const/16 v44, 0x15

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 1542
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1543
    .local v17, NetworkSettingsDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x7f090007

    move-object/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1544
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03006b

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b013a

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/Button;

    .line 1547
    .local v23, bConfigure:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b013b

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    .line 1548
    .local v26, bManage_devices:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b013c

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    .line 1550
    .local v20, bBattery_management:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$43;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$43;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1576
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$44;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$44;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1582
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$45;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$45;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1588
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1589
    .end local v17           #NetworkSettingsDialog:Landroid/app/AlertDialog$Builder;
    .end local v20           #bBattery_management:Landroid/widget/Button;
    .end local v23           #bConfigure:Landroid/widget/Button;
    .end local v26           #bManage_devices:Landroid/widget/Button;
    :cond_17
    const/16 v44, 0x16

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_18

    .line 1590
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1591
    .local v11, InitialConfigDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x1040014

    move-object v0, v11

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v44

    const v45, 0x1080027

    invoke-virtual/range {v44 .. v45}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f030067

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0122

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 1596
    .local v28, bYes:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0123

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/Button;

    .line 1598
    .local v27, bNo:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$46;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$46;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1604
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$47;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$47;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1610
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1611
    .end local v11           #InitialConfigDialog:Landroid/app/AlertDialog$Builder;
    .end local v27           #bNo:Landroid/widget/Button;
    .end local v28           #bYes:Landroid/widget/Button;
    :cond_18
    const/16 v44, 0x17

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_19

    .line 1612
    const-string v44, "WifiApSettings"

    const-string v45, "DIALOG_CONFIGURE_SWITCH_AUTOMATIC"

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1615
    .local v8, ConfigureSwitchAutomaticDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x7f0901db

    move-object v0, v8

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1616
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03005c

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v8

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0118

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 1619
    .local v41, tConfigureSwitch:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b0119

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 1620
    .local v24, bConfigure_switch_btn:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b011a

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 1622
    .local v21, bCancel:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$48;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$48;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1640
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$49;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$49;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1646
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1647
    .end local v8           #ConfigureSwitchAutomaticDialog:Landroid/app/AlertDialog$Builder;
    .end local v21           #bCancel:Landroid/widget/Button;
    .end local v24           #bConfigure_switch_btn:Landroid/widget/Button;
    .end local v41           #tConfigureSwitch:Landroid/widget/TextView;
    :cond_19
    const/16 v44, 0x18

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_1a

    .line 1649
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1650
    .local v9, ConfigureSwitchManualDialog:Landroid/app/AlertDialog$Builder;
    const v44, 0x7f0901db

    move-object v0, v9

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v44

    const v45, 0x7f03005d

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    move-object v0, v9

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b011b

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 1654
    .restart local v41       #tConfigureSwitch:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b011c

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 1655
    .restart local v24       #bConfigure_switch_btn:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0b011d

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 1657
    .restart local v21       #bCancel:Landroid/widget/Button;
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$50;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$50;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1664
    new-instance v44, Lcom/android/settings/wifi/WifiApSettings$51;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiApSettings$51;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    goto/16 :goto_2

    .line 1675
    .end local v9           #ConfigureSwitchManualDialog:Landroid/app/AlertDialog$Builder;
    .end local v21           #bCancel:Landroid/widget/Button;
    .end local v24           #bConfigure_switch_btn:Landroid/widget/Button;
    .end local v41           #tConfigureSwitch:Landroid/widget/TextView;
    :cond_1a
    const/16 v44, 0x0

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1725
    const-string v0, "WifiApSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1728
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_1

    .line 1732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 1734
    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0, p3}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 2015
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 2017
    if-nez p3, :cond_0

    .line 2018
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 2019
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 2023
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 2025
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1718
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1719
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 1720
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1721
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/16 v5, 0xb

    const-string v4, "WifiApSettings"

    .line 1739
    const-string v2, "WifiApSettings"

    const-string v2, "onPreferenceTreeClick "

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v1

    .line 1741
    .local v1, wifiState:I
    const/4 v0, 0x0

    .line 1742
    .local v0, numClient:I
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rememberedSsid  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")      rememberedPassword  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     rememberedSecurity  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1760
    const-string v2, "WifiApSettings"

    const-string v2, "preference == mEnableWifiAp"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1783
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1785
    const-string v2, "WifiApSettings"

    const-string v2, "show dialog"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1787
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 1790
    const-string v2, "WifiApSettings"

    const-string v2, "Turn Mobile AP on"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1792
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0

    .line 1794
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 1796
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1798
    :cond_4
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1809
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1810
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 1811
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn off button: connected client number:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    if-eqz v0, :cond_6

    .line 1813
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1815
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiApDisable()V

    goto :goto_0

    .line 1823
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigure:Landroid/preference/Preference;

    if-ne p2, v2, :cond_9

    .line 1824
    const-string v2, "WifiApSettings"

    const-string v2, "preference == mConfigure"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1826
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1828
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1830
    :cond_9
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mManageDevice:Landroid/preference/Preference;

    if-ne p2, v2, :cond_a

    .line 1831
    const-string v2, "WifiApSettings"

    const-string v2, "preference == mManageDevice"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 1833
    :cond_a
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mBatteryManage:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 1834
    const-string v2, "WifiApSettings"

    const-string v2, "preference == mBatteryManage"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 1702
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1703
    const-string v1, "WifiApSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 1705
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    .line 1706
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1707
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1709
    .local v0, wifiApState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1711
    :cond_0
    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1712
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    .line 1714
    :cond_1
    return-void
.end method

.method public saveConfiguration()V
    .locals 9

    .prologue
    const/16 v8, 0x1a

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2040
    const-string v1, "WifiApSettings"

    const-string v2, "saveConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWhiteListMac()V

    .line 2045
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_3

    .line 2046
    const v1, 0x7f0905bd

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2047
    .local v0, s:Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2048
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2049
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2051
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2052
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v1, v6, :cond_0

    .line 2053
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 2054
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2055
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 2140
    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-void

    .line 2064
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v1, v5, :cond_2

    .line 2065
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2066
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2067
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 2068
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2070
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2073
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2083
    .end local v0           #s:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_8

    .line 2088
    const v1, 0x7f0905be

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    .restart local v0       #s:Ljava/lang/String;
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2090
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2091
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2093
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2094
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v1, v6, :cond_5

    .line 2095
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 2096
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2097
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2106
    :cond_5
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v1, v5, :cond_7

    .line 2107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2108
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2109
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_6

    .line 2110
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2112
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2116
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2126
    .end local v0           #s:Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    .line 2127
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2128
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 2130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    goto/16 :goto_0

    .line 2131
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0
.end method

.method public saveDefaultConfiguration()V
    .locals 3

    .prologue
    .line 2029
    const-string v0, "WifiApSettings"

    const-string v1, "saveDefaultConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWhiteListMac()V

    .line 2031
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    .line 2032
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2034
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 2035
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 2038
    :goto_0
    return-void

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1679
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1682
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1683
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0905d3

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1685
    return-void
.end method

.method public showProgressDialog2()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1688
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    .line 1689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1690
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1691
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    const v1, 0x7f0901ff

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1696
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1697
    return-void
.end method

.method public showToast()V
    .locals 2

    .prologue
    .line 2143
    const v1, 0x7f0901ed

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2144
    .local v0, s:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2145
    return-void
.end method
