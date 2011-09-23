.class public Lcom/android/server/status/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DELAYED_TIME_DISCHARGE_POPUP:I = 0x4e20

.field private static final DELAYED_TIME_DISCHARGE_TONE:I = 0x4e20

.field private static final DELAYED_TIME_FULLCHARGE_TONE:I = 0x2710

.field private static final EVENT_AUTHBATTERY_POPUP:I = 0x41

.field private static final EVENT_BATTERY_CLOSE:I = 0x4

.field private static final EVENT_DISCHARGE_POPUP:I = 0x8

.field private static final EVENT_DISCHARGE_TONE:I = 0x10

.field private static final EVENT_FULLCHARGE_TONE:I = 0x20

.field private static final GPS_NOTI_STATUS:Ljava/lang/String; = "gps_notification_sounds"

.field private static IsAuthBattery:Z = false

.field private static final SHOW_BATTERY_WARNINGS_IN_CALL:Z = true

.field private static final SHOW_LOW_BATTERY_WARNING:Z = true

.field private static final SUPPORT_BATT_FULL_POPUP:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBarPolicy"

.field private static final VIBRATE_REQUEST:I = 0x7010001

.field private static final VIBRATION_DURATION:I = 0x3e8

.field private static final mWifiApOnIcon:[I = null

.field private static final mWifiApSuspendIcon:I = 0x10802d3

.field private static final sDataNetType_1x:[I = null

.field private static final sDataNetType_1xrtt:[I = null

.field private static final sDataNetType_3g:[I = null

.field private static final sDataNetType_e:[I = null

.field private static final sDataNetType_evdo:[I = null

.field private static final sDataNetType_g:[I = null

.field private static final sDataNetType_h:[I = null

.field private static sInstance:Lcom/android/server/status/StatusBarPolicy; = null

.field private static final sRoamingIndicatorImages_cdma:[I = null

.field private static final sSignalImages:[I = null

.field private static final sSignalImages_cdma:[I = null

.field private static final sSignalImages_cdma_r:[I = null

.field private static final sSignalImages_r:[I = null

.field private static final sWifiSignalImages:[I = null

.field private static final sWifiTemporarilyNotConnectedImage:I = 0x1080311


# instance fields
.field private ALARM_ACTION:Ljava/lang/String;

.field private AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

.field private mAlarmClockIcon:Landroid/os/IBinder;

.field private mAlarmClockIconData:Lcom/android/server/status/IconData;

.field private mAuthBatteryDialog:Landroid/app/AlertDialog;

.field private mAuthBatteryKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mBattIntent:Landroid/app/PendingIntent;

.field private mBatteryData:Lcom/android/server/status/IconData;

.field private mBatteryFirst:Z

.field private mBatteryHealth:I

.field private mBatteryIcon:Landroid/os/IBinder;

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothData:Lcom/android/server/status/IconData;

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothHidConnected:Z

.field private mBluetoothIcon:Landroid/os/IBinder;

.field private mCalendar:Ljava/util/Calendar;

.field private mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

.field private mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

.field private mCityzoneIconData:Lcom/android/server/status/IconData;

.field private mClockData:Lcom/android/server/status/IconData;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mClockIcon:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataData:Lcom/android/server/status/IconData;

.field private mDataIcon:Landroid/os/IBinder;

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mDisChargeDialog:Landroid/app/AlertDialog;

.field private mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDisChargeTextView:Landroid/widget/TextView;

.field mDunDataActivity:I

.field private mDunDataIconVisible:Z

.field mDunDataState:I

.field private mE911ModeEnableIconData:Lcom/android/server/status/IconData;

.field private mE911ModeIcon:Landroid/os/IBinder;

.field private mFullChargeDialog:Landroid/app/AlertDialog;

.field private mFullChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFullChargeTextView:Landroid/widget/TextView;

.field private mGpsAndroidEnabled:Z

.field private mGpsAndroidFixed:Z

.field private mGpsEnabledIconData:Lcom/android/server/status/IconData;

.field private mGpsFixIconData:Lcom/android/server/status/IconData;

.field private mGpsIcon:Landroid/os/IBinder;

.field private mGpsVzwEnabled:Z

.field private mGpsVzwFixed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHomezoneIcon:Landroid/os/IBinder;

.field private mHomezoneIconData:Lcom/android/server/status/IconData;

.field private mHspaDataDistinguishable:Z

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAuthBattery:Z

.field private mIsDisCharged:Z

.field private mIsDockConnected:Z

.field private mIsFullCharged:Z

.field private mIsWifiConnected:Z

.field private mLBSModeEnableIconData:Lcom/android/server/status/IconData;

.field private mLBSModeIcon:Landroid/os/IBinder;

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mMyContext:Landroid/content/Context;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneData:Lcom/android/server/status/IconData;

.field private mPhoneEvdoData:Lcom/android/server/status/IconData;

.field private mPhoneIcon:Landroid/os/IBinder;

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:Lcom/android/server/status/StatusBarService;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageNotification:Lcom/android/server/status/StorageNotification;

.field private mSyncActiveIcon:Landroid/os/IBinder;

.field private mSyncFailingIcon:Landroid/os/IBinder;

.field private mTTYModeEnableIconData:Lcom/android/server/status/IconData;

.field private mTTYModeIcon:Landroid/os/IBinder;

.field private mVolumeData:Lcom/android/server/status/IconData;

.field private mVolumeIcon:Landroid/os/IBinder;

.field private mVolumeVisible:Z

.field private mWL:Landroid/os/PowerManager$WakeLock;

.field private mWifiApData:Lcom/android/server/status/IconData;

.field private mWifiApIcon:Landroid/os/IBinder;

.field private mWifiData:Lcom/android/server/status/IconData;

.field private mWifiIcon:Landroid/os/IBinder;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 209
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .line 216
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_r:[I

    .line 225
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 233
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_cdma_r:[I

    .line 252
    const/16 v0, 0x54

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 358
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    .line 364
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    .line 370
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_e:[I

    .line 377
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_h:[I

    .line 386
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1x:[I

    .line 394
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_evdo:[I

    .line 402
    new-array v0, v2, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    .line 444
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    .line 467
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->mWifiApOnIcon:[I

    .line 525
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/status/StatusBarPolicy;->IsAuthBattery:Z

    return-void

    .line 209
    nop

    :array_0
    .array-data 0x4
        0xf3t 0x2t 0x8t 0x1t
        0xf5t 0x2t 0x8t 0x1t
        0xf7t 0x2t 0x8t 0x1t
        0xf9t 0x2t 0x8t 0x1t
        0xfbt 0x2t 0x8t 0x1t
    .end array-data

    .line 216
    :array_1
    .array-data 0x4
        0xdct 0x2t 0x8t 0x1t
        0xdet 0x2t 0x8t 0x1t
        0xe0t 0x2t 0x8t 0x1t
        0xe2t 0x2t 0x8t 0x1t
        0xe4t 0x2t 0x8t 0x1t
    .end array-data

    .line 225
    :array_2
    .array-data 0x4
        0x99t 0x3t 0x8t 0x1t
        0x9at 0x3t 0x8t 0x1t
        0x9bt 0x3t 0x8t 0x1t
        0x9ct 0x3t 0x8t 0x1t
        0x9dt 0x3t 0x8t 0x1t
    .end array-data

    .line 233
    :array_3
    .array-data 0x4
        0x94t 0x3t 0x8t 0x1t
        0x95t 0x3t 0x8t 0x1t
        0x96t 0x3t 0x8t 0x1t
        0x97t 0x3t 0x8t 0x1t
        0x98t 0x3t 0x8t 0x1t
    .end array-data

    .line 252
    :array_4
    .array-data 0x4
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xf1t 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
        0xedt 0x2t 0x8t 0x1t
    .end array-data

    .line 358
    :array_5
    .array-data 0x4
        0xb3t 0x2t 0x8t 0x1t
        0xbat 0x2t 0x8t 0x1t
        0xc4t 0x2t 0x8t 0x1t
        0xbft 0x2t 0x8t 0x1t
    .end array-data

    .line 364
    :array_6
    .array-data 0x4
        0xb1t 0x2t 0x8t 0x1t
        0xb8t 0x2t 0x8t 0x1t
        0xc2t 0x2t 0x8t 0x1t
        0xbdt 0x2t 0x8t 0x1t
    .end array-data

    .line 370
    :array_7
    .array-data 0x4
        0xb2t 0x2t 0x8t 0x1t
        0xb9t 0x2t 0x8t 0x1t
        0xc3t 0x2t 0x8t 0x1t
        0xbet 0x2t 0x8t 0x1t
    .end array-data

    .line 377
    :array_8
    .array-data 0x4
        0xb4t 0x2t 0x8t 0x1t
        0xbbt 0x2t 0x8t 0x1t
        0xc5t 0x2t 0x8t 0x1t
        0xc0t 0x2t 0x8t 0x1t
    .end array-data

    .line 386
    :array_9
    .array-data 0x4
        0xb0t 0x2t 0x8t 0x1t
        0xb7t 0x2t 0x8t 0x1t
        0xc1t 0x2t 0x8t 0x1t
        0xbct 0x2t 0x8t 0x1t
    .end array-data

    .line 394
    :array_a
    .array-data 0x4
        0xb1t 0x2t 0x8t 0x1t
        0xb8t 0x2t 0x8t 0x1t
        0xc2t 0x2t 0x8t 0x1t
        0xbdt 0x2t 0x8t 0x1t
        0xb6t 0x2t 0x8t 0x1t
    .end array-data

    .line 402
    :array_b
    .array-data 0x4
        0xb0t 0x2t 0x8t 0x1t
        0xb7t 0x2t 0x8t 0x1t
        0xc1t 0x2t 0x8t 0x1t
        0xbct 0x2t 0x8t 0x1t
        0xb5t 0x2t 0x8t 0x1t
    .end array-data

    .line 444
    :array_c
    .array-data 0x4
        0x12t 0x3t 0x8t 0x1t
        0x13t 0x3t 0x8t 0x1t
        0x14t 0x3t 0x8t 0x1t
        0x15t 0x3t 0x8t 0x1t
    .end array-data

    .line 467
    :array_d
    .array-data 0x4
        0xd4t 0x2t 0x8t 0x1t
        0xd5t 0x2t 0x8t 0x1t
        0xd6t 0x2t 0x8t 0x1t
        0xd7t 0x2t 0x8t 0x1t
        0xd8t 0x2t 0x8t 0x1t
        0xd9t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    .locals 11
    .parameter "context"
    .parameter "service"

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/status/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/server/status/StatusBarPolicy;Lcom/android/server/status/StatusBarPolicy$1;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 169
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    .line 179
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsAuthBattery:Z

    .line 192
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 197
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 356
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_g:[I

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 411
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 412
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    .line 413
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    .line 416
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataState:I

    .line 417
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataActivity:I

    .line 419
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 453
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 454
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 526
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDockConnected:Z

    .line 529
    const-string v6, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->ALARM_ACTION:Ljava/lang/String;

    .line 530
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$1;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$1;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1432
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$3;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$3;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mAuthBatteryKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1444
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$4;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$4;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1453
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$5;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$5;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1490
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$6;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$6;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1501
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$7;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$7;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1523
    new-instance v6, Lcom/android/server/status/StatusBarPolicy$8;

    invoke-direct {v6, p0}, Lcom/android/server/status/StatusBarPolicy$8;-><init>(Lcom/android/server/status/StatusBarPolicy;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 635
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 636
    iput-object p2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    .line 637
    new-instance v6, Landroid/telephony/SignalStrength;

    invoke-direct {v6}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 638
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 641
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    .line 642
    const-string v6, "clock"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/server/status/IconData;->makeText(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    .line 643
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    .line 644
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateClock()V

    .line 647
    new-instance v6, Lcom/android/server/status/StorageNotification;

    invoke-direct {v6, p1}, Lcom/android/server/status/StorageNotification;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mStorageNotification:Lcom/android/server/status/StorageNotification;

    .line 648
    const-string v6, "storage"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 649
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mStorageNotification:Lcom/android/server/status/StorageNotification;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 652
    const-string v6, "battery"

    const/4 v7, 0x0

    const v8, 0x10802ad

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    .line 654
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIcon:Landroid/os/IBinder;

    .line 657
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 658
    const-string v6, "phone_signal"

    const/4 v7, 0x0

    const v8, 0x1080303

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    .line 660
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    .line 663
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x7e1

    invoke-virtual {p1, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 674
    const-string v6, "data_connection"

    const/4 v7, 0x0

    const v8, 0x10802b3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    .line 676
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    .line 677
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 680
    const-string v6, "wifi"

    const/4 v7, 0x0

    sget-object v8, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    .line 681
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    .line 682
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 688
    const-string v6, "wifi_ap"

    const/4 v7, 0x0

    sget-object v8, Lcom/android/server/status/StatusBarPolicy;->mWifiApOnIcon:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    .line 691
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    .line 692
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 696
    const-string v6, "tty"

    const/4 v7, 0x0

    const v8, 0x1080309

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    .line 698
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    .line 699
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 701
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vzw_lbs"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    .line 702
    .local v5, mVZWlbs:Z
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 703
    .local v3, mGPSprovider:Z
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "network"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 706
    .local v4, mNETprovider:Z
    const-string v6, "e911"

    const/4 v7, 0x0

    const v8, 0x10802d0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeEnableIconData:Lcom/android/server/status/IconData;

    .line 707
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    .line 710
    const-string v6, "lbs"

    const/4 v7, 0x0

    const v8, 0x10802d2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeEnableIconData:Lcom/android/server/status/IconData;

    .line 711
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    .line 713
    if-nez v5, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    .line 714
    :cond_0
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 715
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 723
    :goto_0
    const-string v6, "cdma_eri"

    const/4 v7, 0x0

    const v8, 0x10802ed

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    .line 725
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    .line 726
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 729
    const-string v6, "bluetooth"

    const/4 v7, 0x0

    const v8, 0x1080080

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    .line 731
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    .line 732
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 733
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_2

    .line 734
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 738
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 739
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 740
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    .line 742
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 745
    const-string v6, "gps"

    const/4 v7, 0x0

    const v8, 0x10802ce

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    .line 747
    const-string v6, "gps"

    const/4 v7, 0x0

    const v8, 0x10802cf

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconData:Lcom/android/server/status/IconData;

    .line 749
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    .line 750
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 752
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidEnabled:Z

    .line 753
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidFixed:Z

    .line 754
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwEnabled:Z

    .line 755
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwFixed:Z

    .line 758
    const-string v6, "alarm_clock"

    const/4 v7, 0x0

    const v8, 0x1080295

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIconData:Lcom/android/server/status/IconData;

    .line 761
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    .line 762
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 765
    const-string v6, "sync_active"

    const/4 v7, 0x0

    const v8, 0x1080299

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    .line 767
    const-string v6, "sync_failing"

    const/4 v7, 0x0

    const v8, 0x108029a

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIcon:Landroid/os/IBinder;

    .line 769
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 770
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncFailingIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 773
    const-string v6, "volume"

    const/4 v7, 0x0

    const v8, 0x10802eb

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    .line 775
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    .line 776
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 777
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateVolume()V

    .line 780
    const-string v6, "homezone"

    const/4 v7, 0x0

    const v8, 0x1080359

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIconData:Lcom/android/server/status/IconData;

    .line 782
    const-string v6, "homezone"

    const/4 v7, 0x0

    const v8, 0x1080358

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/status/IconData;->makeIcon(Ljava/lang/String;Ljava/lang/String;III)Lcom/android/server/status/IconData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mCityzoneIconData:Lcom/android/server/status/IconData;

    .line 784
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIconData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->addIcon(Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    .line 785
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 787
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 795
    const-string v6, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    const-string v6, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 798
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    const-string v6, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v6, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v6, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v6, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v6, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v6, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v6, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 808
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v6, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v6, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v6, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v6, "com.vzw.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v6, "com.vzw.location.GPS_FIX_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v6, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v6, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v6, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->ALARM_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 833
    :try_start_0
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10d000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_2
    return-void

    .line 718
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 719
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_0

    .line 736
    .restart local v0       #adapter:Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 835
    .restart local v2       #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 836
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_2
.end method

.method private final AuthBatteryCheck()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "StatusBarPolicy"

    .line 1416
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 1417
    .local v2, tPM:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 1418
    .local v0, IsScreenOn:Z
    if-nez v0, :cond_0

    .line 1420
    const-string v3, "StatusBarPolicy"

    const-string v3, "auth battery fail Screen turn on"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1423
    :cond_0
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1424
    const/4 v3, 0x6

    const-string v4, "StatusBarPolicy"

    invoke-virtual {v2, v3, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 1425
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1426
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x41

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1427
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1428
    return-void
.end method

.method private GenerateBeep()V
    .locals 5

    .prologue
    .line 2175
    const/4 v1, 0x0

    .line 2179
    .local v1, mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x1

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #mFocusToneGenerator:Landroid/media/ToneGenerator;
    .local v2, mFocusToneGenerator:Landroid/media/ToneGenerator;
    move-object v1, v2

    .line 2185
    .end local v2           #mFocusToneGenerator:Landroid/media/ToneGenerator;
    .restart local v1       #mFocusToneGenerator:Landroid/media/ToneGenerator;
    :goto_0
    if-eqz v1, :cond_0

    .line 2186
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2187
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 2189
    :cond_0
    return-void

    .line 2180
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2182
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mMyContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/status/StatusBarPolicy;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateWifiAp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateLBS(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateHomezone(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateClock()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->AuthBatteryCheck()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateDockState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hideBatteryPopup()V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/status/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mIsAuthBattery:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/status/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/status/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mAuthBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/status/StatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/status/StatusBarPolicy;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/status/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/status/StatusBarPolicy;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateDunDataNetType(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDunDataIcon()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/status/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/status/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/status/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/status/StatusBarPolicy;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarPolicy;->showDisChargePopup(ZI)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/status/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/status/StatusBarPolicy;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/status/StatusBarPolicy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/status/StatusBarPolicy;->playDelayedTone(II)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->showAuthBatteryPopup()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1518
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1521
    :cond_0
    return-void
.end method

.method private getCdmaLevel()I
    .locals 5

    .prologue
    .line 1771
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1772
    .local v0, cdmaDbm:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1773
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 1774
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 1776
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1783
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1789
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1777
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1778
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1779
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1780
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1784
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1785
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1786
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1787
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1789
    goto :goto_2
.end method

.method private getDhcpClientNum()I
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v11, " "

    const-string v13, "StatusBarPolicy"

    .line 2542
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v8

    .line 2544
    .local v8, sta_list:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2545
    .local v5, numClient:I
    const/4 v6, 0x0

    .line 2547
    .local v6, numDhcpClient:I
    if-eqz v8, :cond_3

    .line 2549
    const-string v10, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2552
    .local v9, tok:[Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2556
    :goto_0
    const-string v10, "StatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDhcpClientNum numClient:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    if-gtz v5, :cond_0

    .line 2559
    const-string v10, "StatusBarPolicy"

    const-string v10, "getDhcpClientNum is none"

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v14

    .line 2590
    .end local v9           #tok:[Ljava/lang/String;
    :goto_1
    return v10

    .line 2553
    .restart local v9       #tok:[Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 2554
    .local v4, nfe:Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2563
    .end local v4           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_2
    if-gt v1, v5, :cond_4

    .line 2567
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x2000

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2569
    .local v0, buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, mData:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2571
    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2572
    .local v7, sta_info:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x4

    if-lt v10, v11, :cond_1

    const/4 v10, 0x0

    aget-object v10, v7, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    aget-object v10, v7, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    aget-object v10, v7, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    aget-object v10, v7, v10

    if-eqz v10, :cond_1

    .line 2573
    aget-object v10, v9, v1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    aget-object v10, v7, v10

    aget-object v11, v9, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2574
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2578
    .end local v7           #sta_info:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2563
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v3           #mData:Ljava/lang/String;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2579
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 2580
    .local v2, io:Ljava/io/IOException;
    const-string v10, "StatusBarPolicy"

    const-string v10, "mac read exception"

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    const/4 v6, 0x0

    goto :goto_4

    .line 2586
    .end local v1           #i:I
    .end local v2           #io:Ljava/io/IOException;
    .end local v9           #tok:[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 2588
    :cond_4
    const-string v10, "StatusBarPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DhcpClientnum : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v6

    .line 2590
    goto/16 :goto_1
.end method

.method private getEvdoLevel()I
    .locals 5

    .prologue
    .line 1793
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1794
    .local v0, evdoDbm:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1795
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 1796
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 1798
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    const/4 v2, 0x4

    .line 1804
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    const/4 v3, 0x4

    .line 1810
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 1799
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 1800
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    .line 1801
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 1802
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1805
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    const/4 v3, 0x3

    goto :goto_1

    .line 1806
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    const/4 v3, 0x2

    goto :goto_1

    .line 1807
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    .line 1808
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 1810
    goto :goto_2
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 880
    .local v9, b24:Z
    if-eqz v9, :cond_2

    .line 881
    const v17, 0x1040070

    .line 886
    .local v17, res:I
    :goto_0
    const v5, 0xef00

    .line 887
    .local v5, MAGIC1:C
    const v6, 0xef01

    .line 890
    .local v6, MAGIC2:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 891
    .local v11, format:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 897
    const/4 v7, -0x1

    .line 898
    .local v7, a:I
    const/16 v16, 0x0

    .line 899
    .local v16, quoted:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 900
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 902
    .local v10, c:C
    const/16 v20, 0x27

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 903
    if-nez v16, :cond_3

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 906
    :cond_0
    :goto_2
    if-nez v16, :cond_4

    const/16 v20, 0x61

    move v0, v10

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 907
    move v7, v13

    .line 912
    .end local v10           #c:C
    :cond_1
    if-ltz v7, :cond_6

    .line 914
    move v8, v7

    .line 915
    .local v8, b:I
    :goto_3
    if-lez v7, :cond_5

    const/16 v20, 0x1

    sub-int v20, v7, v20

    move-object v0, v11

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 916
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 883
    .end local v5           #MAGIC1:C
    .end local v6           #MAGIC2:C
    .end local v7           #a:I
    .end local v8           #b:I
    .end local v11           #format:Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #quoted:Z
    .end local v17           #res:I
    :cond_2
    const v17, 0x104006f

    .restart local v17       #res:I
    goto :goto_0

    .line 903
    .restart local v5       #MAGIC1:C
    .restart local v6       #MAGIC2:C
    .restart local v7       #a:I
    .restart local v10       #c:C
    .restart local v11       #format:Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v16       #quoted:Z
    :cond_3
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_2

    .line 899
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 918
    .end local v10           #c:C
    .restart local v8       #b:I
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef01

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v8, 0x1

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 922
    .end local v8           #b:I
    :cond_6
    new-instance v19, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v19, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 923
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mClockFormatString:Ljava/lang/String;

    .line 927
    .end local v7           #a:I
    .end local v13           #i:I
    .end local v16           #quoted:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 929
    .local v18, result:Ljava/lang/String;
    const v20, 0xef00

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 930
    .local v14, magic1:I
    const v20, 0xef01

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 932
    .local v15, magic2:I
    if-ltz v14, :cond_8

    if-le v15, v14, :cond_8

    .line 933
    new-instance v12, Landroid/text/SpannableStringBuilder;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 935
    .local v12, formatted:Landroid/text/SpannableStringBuilder;
    new-instance v20, Landroid/text/style/RelativeSizeSpan;

    const v21, 0x3f333333

    invoke-direct/range {v20 .. v21}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v21, 0x22

    move-object v0, v12

    move-object/from16 v1, v20

    move v2, v14

    move v3, v15

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 938
    add-int/lit8 v20, v15, 0x1

    move-object v0, v12

    move v1, v15

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 939
    add-int/lit8 v20, v14, 0x1

    move-object v0, v12

    move v1, v14

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-object/from16 v20, v12

    .line 943
    .end local v12           #formatted:Landroid/text/SpannableStringBuilder;
    :goto_5
    return-object v20

    .line 925
    .end local v14           #magic1:I
    .end local v15           #magic2:I
    .end local v18           #result:Ljava/lang/String;
    .end local v19           #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v19, v0

    .restart local v19       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .restart local v14       #magic1:I
    .restart local v15       #magic2:I
    .restart local v18       #result:Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v18

    .line 943
    goto :goto_5
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1614
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1620
    :pswitch_0
    const/4 v0, 0x1

    .line 1623
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1618
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1623
    goto :goto_0

    .line 1615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideBatteryPopup()V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1347
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1349
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public static installIcons(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    .line 841
    new-instance v0, Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {v0, p0, p1}, Lcom/android/server/status/StatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V

    sput-object v0, Lcom/android/server/status/StatusBarPolicy;->sInstance:Lcom/android/server/status/StatusBarPolicy;

    .line 842
    return-void
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThereKeyguard()Z
    .locals 3

    .prologue
    .line 2534
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2536
    .local v0, tKM:Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    return v1
.end method

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1098
    :cond_0
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1106
    :cond_0
    return-void
.end method

.method private playDelayedTone(II)V
    .locals 4
    .parameter "eventType"
    .parameter "delayedTime"

    .prologue
    .line 1356
    const-string v1, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playDelayedTone() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1359
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1360
    return-void
.end method

.method private playTone(I)V
    .locals 6
    .parameter "tone"

    .prologue
    .line 1363
    const-string v3, "StatusBarPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playTone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v0, -0x1

    .line 1367
    .local v0, ringerMode:I
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1368
    .local v1, tAM:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1370
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1371
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1376
    :goto_0
    return-void

    .line 1373
    :cond_0
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    .line 1374
    .local v2, vib:Landroid/os/Vibrator;
    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private scheduleCloseBatteryView()V
    .locals 4

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1511
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryViewSequence:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1512
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1513
    return-void
.end method

.method private setBatteryLevel(Landroid/view/View;IIII)V
    .locals 4
    .parameter "parent"
    .parameter "id"
    .parameter "height"
    .parameter "background"
    .parameter "level"

    .prologue
    .line 1161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1162
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1163
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    int-to-float v3, p3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1164
    if-eqz p4, :cond_0

    .line 1165
    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1166
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1167
    .local v0, bkg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1169
    .end local v0           #bkg:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private showAuthBatteryPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1172
    const-string v4, "gsm.default.esn"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1173
    const-string v4, "StatusBarPolicy"

    const-string v5, "No AuthBattery popup because factory mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iput-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1176
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1178
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1179
    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    .line 1187
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040478

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1188
    .local v2, disChargeText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1090076

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1189
    .local v3, v:Landroid/view/View;
    const v4, 0x1020232

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1190
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1192
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1193
    const v4, 0x1040474

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1195
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1197
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1198
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mAuthBatteryKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1199
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1200
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1201
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mAuthBatteryDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showBatteryView()V
    .locals 18

    .prologue
    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 1114
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    move/from16 v16, v0

    .line 1116
    .local v16, level:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x109001d

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1117
    .local v9, v:Landroid/view/View;
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/status/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1118
    const/4 v7, -0x3

    .line 1119
    .local v7, pixelFormat:I
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1120
    .local v15, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v15, :cond_1

    .line 1121
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    .line 1124
    :cond_1
    const/16 v6, 0x1a

    .line 1128
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1130
    or-int/lit8 v6, v6, 0x4

    .line 1133
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d5

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1140
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1142
    .local v14, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    const/high16 v4, 0x3f00

    invoke-virtual {v14, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1143
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1145
    const-string v3, "Battery"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1147
    const v3, 0x102017d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1148
    .local v17, levelTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    const v4, 0x1040395

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v6           #flags:I
    move-result-object v7

    .end local v7           #pixelFormat:I
    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    const v10, 0x1020181

    const/16 v3, 0x64

    sub-int v11, v3, v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/status/StatusBarPolicy;->setBatteryLevel(Landroid/view/View;IIII)V

    .line 1152
    const v10, 0x1020182

    const v12, 0x10800a1

    move-object/from16 v8, p0

    move/from16 v11, v16

    move/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Lcom/android/server/status/StatusBarPolicy;->setBatteryLevel(Landroid/view/View;IIII)V

    .line 1155
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    invoke-direct/range {p0 .. p0}, Lcom/android/server/status/StatusBarPolicy;->scheduleCloseBatteryView()V

    .line 1158
    return-void
.end method

.method private showDisChargePopup(ZI)V
    .locals 8
    .parameter "muteMode"
    .parameter "BattHealth"

    .prologue
    const/4 v7, 0x0

    .line 1275
    const-string v4, "StatusBarPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showDisChargePopup() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v4, 0x6

    if-ne p2, v4, :cond_0

    .line 1286
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040477

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1292
    .local v2, disChargeText:Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1090076

    invoke-static {v4, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1294
    .local v3, v:Landroid/view/View;
    const v4, 0x1020232

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1295
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1298
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1299
    const v4, 0x1040474

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1300
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1301
    const v4, 0x104000a

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1303
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1304
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1305
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1306
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1307
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    .line 1314
    return-void

    .line 1290
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #d:Landroid/app/AlertDialog;
    .end local v2           #disChargeText:Ljava/lang/CharSequence;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040475

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #disChargeText:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showFullChargePopup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1318
    const-string v4, "StatusBarPolicy"

    const-string v5, "showFullChargePopup()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1040476

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1321
    .local v2, fullChargeText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v5, 0x1090076

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1323
    .local v3, v:Landroid/view/View;
    const v4, 0x1020232

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeTextView:Landroid/widget/TextView;

    .line 1324
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1327
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1328
    const v4, 0x1040474

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1329
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1330
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1333
    .local v1, d:Landroid/app/AlertDialog;
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1334
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1335
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1336
    iput-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    .line 1338
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    .line 1342
    return-void
.end method

.method private showLowBatteryWarning()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1206
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->closeLastBatteryView()V

    .line 1210
    iget v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    const/4 v10, 0x5

    if-ge v9, v10, :cond_1

    .line 1211
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x104047a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1215
    .local v4, levelText:Ljava/lang/CharSequence;
    :goto_0
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    .line 1216
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1254
    :goto_1
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1255
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v9, "power_sounds_enabled"

    invoke-static {v1, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 1258
    const-string v9, "low_battery_sound"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1260
    .local v6, soundPath:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1261
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1262
    .local v7, soundUri:Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 1263
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 1264
    .local v5, sfx:Landroid/media/Ringtone;
    if-eqz v5, :cond_0

    .line 1265
    invoke-virtual {v5, v11}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1266
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 1271
    .end local v5           #sfx:Landroid/media/Ringtone;
    .end local v6           #soundPath:Ljava/lang/String;
    .end local v7           #soundUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 1213
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #levelText:Ljava/lang/CharSequence;
    :cond_1
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x1040479

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #levelText:Ljava/lang/CharSequence;
    goto :goto_0

    .line 1218
    :cond_2
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v10, 0x109001c

    invoke-static {v9, v10, v12}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1219
    .local v8, v:Landroid/view/View;
    const v9, 0x102017d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1221
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1224
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1225
    const v9, 0x1040397

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1226
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1227
    const v9, 0x1080027

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1228
    const v9, 0x104000a

    invoke-virtual {v0, v9, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1230
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x5880

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1235
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 1236
    const v9, 0x104039a

    new-instance v10, Lcom/android/server/status/StatusBarPolicy$2;

    invoke-direct {v10, p0, v3}, Lcom/android/server/status/StatusBarPolicy$2;-><init>(Lcom/android/server/status/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1247
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1248
    .local v2, d:Landroid/app/AlertDialog;
    iget-object v9, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1249
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d9

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1250
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1251
    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 957
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 958
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mAlarmClockIcon:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 959
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 970
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const-string v7, "icon-small"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 971
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    const-string v7, "level"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/server/status/IconData;->iconLevel:I

    .line 972
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v11}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 974
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsAuthBattery:Z

    if-eqz v6, :cond_0

    .line 975
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_0

    .line 976
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 977
    iput-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 981
    :cond_0
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v3, v10

    .line 982
    .local v3, plugged:Z
    :goto_0
    const-string v6, "level"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 991
    .local v1, level:I
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:Z

    .line 993
    .local v2, oldPlugged:Z
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:Z

    .line 994
    iput v1, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryLevel:I

    .line 996
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v6, :cond_1

    .line 997
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryFirst:Z

    .line 1017
    :cond_1
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    .line 1019
    const-string v6, "status"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1020
    .local v4, status:I
    const-string v6, "health"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1021
    .local v0, batteryHealth:I
    iput v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryHealth:I

    .line 1022
    const-string v6, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BAT. status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " health:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    .line 1025
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    .line 1026
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    .line 1027
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1030
    :cond_2
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsFullCharged:Z

    .line 1031
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_3

    .line 1032
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1035
    :cond_3
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1079
    :cond_4
    :goto_1
    return-void

    .end local v0           #batteryHealth:I
    .end local v1           #level:I
    .end local v2           #oldPlugged:Z
    .end local v3           #plugged:Z
    .end local v4           #status:I
    :cond_5
    move v3, v9

    .line 981
    goto :goto_0

    .line 1037
    .restart local v0       #batteryHealth:I
    .restart local v1       #level:I
    .restart local v2       #oldPlugged:Z
    .restart local v3       #plugged:Z
    .restart local v4       #status:I
    :cond_6
    if-ne v4, v12, :cond_9

    .line 1038
    if-eq v0, v12, :cond_7

    const/4 v6, 0x7

    if-eq v0, v6, :cond_7

    if-ne v0, v13, :cond_4

    .line 1040
    :cond_7
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1041
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_8

    .line 1042
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    if-nez v6, :cond_8

    .line 1043
    const/16 v6, 0xd

    invoke-direct {p0, v6}, Lcom/android/server/status/StatusBarPolicy;->playTone(I)V

    .line 1044
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 1045
    .local v5, tPM:Landroid/os/PowerManager;
    const-string v6, "StatusBarPolicy"

    invoke-virtual {v5, v13, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1046
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1047
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    invoke-direct {p0, v6, v0}, Lcom/android/server/status/StatusBarPolicy;->showDisChargePopup(ZI)V

    .line 1051
    .end local v5           #tPM:Landroid/os/PowerManager;
    :cond_8
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    goto :goto_1

    .line 1053
    :cond_9
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    if-eqz v6, :cond_c

    const/4 v6, 0x2

    if-ne v0, v6, :cond_c

    .line 1054
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDisCharged:Z

    .line 1056
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v6, :cond_a

    .line 1057
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1058
    iput-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1061
    :cond_a
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_b

    .line 1062
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1065
    :cond_b
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 1067
    :cond_c
    const/4 v6, 0x5

    if-ne v4, v6, :cond_4

    .line 1068
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsFullCharged:Z

    if-nez v6, :cond_4

    .line 1069
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDockConnected:Z

    if-nez v6, :cond_4

    .line 1070
    iput-boolean v10, p0, Lcom/android/server/status/StatusBarPolicy;->mIsFullCharged:Z

    .line 1072
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_4

    .line 1073
    #invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->showFullChargePopup()V

    goto/16 :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2009
    const v3, 0x1080080

    .line 2010
    .local v3, iconId:I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2011
    .local v1, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2012
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2013
    .local v4, state:I
    const/16 v5, 0xc

    if-ne v4, v5, :cond_3

    move v5, v8

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 2038
    .end local v4           #state:I
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-eqz v5, :cond_1

    .line 2042
    :cond_0
    const v3, 0x10802af

    .line 2045
    :cond_1
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    iput v3, v5, Lcom/android/server/status/IconData;->iconId:I

    .line 2046
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothData:Lcom/android/server/status/IconData;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2047
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothIcon:Landroid/os/IBinder;

    iget-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2048
    :cond_2
    return-void

    .restart local v4       #state:I
    :cond_3
    move v5, v7

    .line 2013
    goto :goto_0

    .line 2014
    .end local v4           #state:I
    :cond_4
    const-string v5, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2015
    const-string v5, "android.bluetooth.headset.extra.STATE"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 2017
    :cond_5
    const-string v5, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2018
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 2019
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 2020
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 2022
    :cond_6
    iput-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 2024
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_7
    const-string v5, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2025
    new-instance v2, Lcom/broadcom/bt/service/hid/BluetoothHID;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/broadcom/bt/service/hid/BluetoothHID;-><init>(Landroid/content/Context;)V

    .line 2026
    .local v2, hid:Lcom/broadcom/bt/service/hid/BluetoothHID;
    invoke-virtual {v2}, Lcom/broadcom/bt/service/hid/BluetoothHID;->getConnectedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_8

    .line 2027
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    goto :goto_1

    .line 2029
    :cond_8
    iput-boolean v7, p0, Lcom/android/server/status/StatusBarPolicy;->mBluetoothHidConnected:Z

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1379
    iput p1, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    .line 1385
    iget v0, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1386
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 1387
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 1389
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isThereKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1394
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1410
    :cond_1
    :goto_0
    return-void

    .line 1397
    :cond_2
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1398
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1403
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mFullChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1405
    :cond_4
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "StatusBarPolicy"

    .line 2377
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2378
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2460
    :goto_0
    return-void

    .line 2382
    :cond_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2383
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 2387
    :cond_1
    sget-object v1, Lcom/android/server/status/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 2388
    .local v1, iconList:[I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2389
    .local v0, iconIndex:I
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 2391
    .local v2, iconMode:I
    if-ne v0, v4, :cond_2

    .line 2392
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2396
    :cond_2
    if-ne v2, v4, :cond_3

    .line 2397
    const-string v3, "StatusBarPolicy"

    const-string v3, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2402
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2459
    :goto_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_0

    .line 2406
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2409
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    aget v4, v1, v0

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2410
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2411
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2414
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    const v4, 0x10802ee

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2416
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2417
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2420
    :pswitch_3
    if-lez v2, :cond_4

    .line 2422
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    const v4, 0x10802ae

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2424
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2425
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2429
    :cond_4
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    aget v4, v1, v0

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2430
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2431
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCdmaRoamingIndicatorIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2402
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateClock()V
    .locals 4

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 951
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/status/IconData;->text:Ljava/lang/CharSequence;

    .line 953
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v1, p0, Lcom/android/server/status/StatusBarPolicy;->mClockIcon:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mClockData:Lcom/android/server/status/IconData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 954
    return-void
.end method

.method private final updateDataIcon()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1855
    const/4 v3, 0x1

    .line 1857
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1859
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_3

    .line 1860
    :cond_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    if-ne v4, v6, :cond_2

    .line 1861
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 1872
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v7

    .line 1875
    .local v0, iconId:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1876
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1912
    .end local v0           #iconId:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1914
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v4, v3, :cond_1

    .line 1921
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1922
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconVisible:Z

    .line 1924
    :cond_1
    return-void

    .line 1863
    .end local v1           #ident:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 1864
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1866
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1867
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1869
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v10

    .line 1870
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1878
    .end local v0           #iconId:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1881
    :cond_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    const v5, 0x10802da

    iput v5, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1882
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1886
    :cond_4
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    if-ne v4, v6, :cond_5

    .line 1887
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    packed-switch v4, :pswitch_data_1

    .line 1901
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v7

    .line 1904
    .restart local v0       #iconId:I
    :goto_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1905
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1889
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v9

    .line 1890
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1892
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1893
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1895
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v10

    .line 1896
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1898
    .end local v0           #iconId:I
    :pswitch_6
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    const/4 v5, 0x4

    aget v0, v4, v5

    .line 1899
    .restart local v0       #iconId:I
    goto :goto_3

    .line 1907
    .end local v0           #iconId:I
    :cond_5
    iput v7, p0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 1908
    const/4 v3, 0x0

    goto :goto_1

    .line 1917
    .restart local v1       #ident:J
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1915
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1887
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 3
    .parameter "net"

    .prologue
    const-string v2, "CDMA"

    .line 1816
    const-string v0, "CDMA"

    const-string v0, "[CDMA value] updateDataNetType"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CDMA value] net : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    packed-switch p1, :pswitch_data_0

    .line 1848
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 1851
    :goto_0
    return-void

    .line 1821
    :pswitch_0
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_e:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1824
    :pswitch_1
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1829
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/status/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1830
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_h:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1832
    :cond_0
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_3g:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1837
    :pswitch_3
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1840
    :pswitch_4
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1845
    :pswitch_5
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_evdo:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1819
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final updateDockState(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v5, "StatusBarPolicy"

    .line 2478
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, action:Ljava/lang/String;
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateDockState"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2481
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2482
    .local v1, dockState:I
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    if-nez v1, :cond_1

    .line 2484
    iput-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDockConnected:Z

    .line 2488
    .end local v1           #dockState:I
    :cond_0
    :goto_0
    return-void

    .line 2486
    .restart local v1       #dockState:I
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mIsDockConnected:Z

    goto :goto_0
.end method

.method private final updateDunDataIcon()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1948
    const/4 v3, 0x1

    .line 1950
    .local v3, visible:Z
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataState:I

    if-ne v4, v6, :cond_1

    .line 1951
    iget v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataActivity:I

    packed-switch v4, :pswitch_data_0

    .line 1965
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v5

    .line 1968
    .local v0, iconId:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    iput v0, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 1969
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mDataData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1975
    .end local v0           #iconId:I
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1977
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1983
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataIconVisible:Z

    if-eq v4, v3, :cond_0

    .line 1984
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1985
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataIconVisible:Z

    .line 1987
    :cond_0
    return-void

    .line 1953
    .end local v1           #ident:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    const/4 v5, 0x1

    aget v0, v4, v5

    .line 1954
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1956
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    aget v0, v4, v6

    .line 1957
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1959
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    .line 1960
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1962
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    const/4 v5, 0x4

    aget v0, v4, v5

    .line 1963
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1971
    .end local v0           #iconId:I
    :cond_1
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mDunDataActivity:I

    .line 1972
    const/4 v3, 0x0

    goto :goto_1

    .line 1980
    .restart local v1       #ident:J
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1978
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1951
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDunDataNetType(I)V
    .locals 3
    .parameter "net"

    .prologue
    const-string v2, "CDMA"

    .line 1929
    const-string v0, "CDMA"

    const-string v0, "[CDMA value] updateDunDataNetType"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CDMA value] net : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    packed-switch p1, :pswitch_data_0

    .line 1941
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    .line 1944
    :goto_0
    return-void

    .line 1934
    :pswitch_0
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_1xrtt:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1938
    :pswitch_1
    sget-object v0, Lcom/android/server/status/StatusBarPolicy;->sDataNetType_evdo:[I

    iput-object v0, p0, Lcom/android/server/status/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1932
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2193
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, action:Ljava/lang/String;
    const-string v2, "enabled"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2196
    .local v1, enabled:Z
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2198
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidEnabled:Z

    .line 2199
    if-nez v1, :cond_0

    .line 2200
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidFixed:Z

    .line 2217
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidEnabled:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwEnabled:Z

    if-eqz v2, :cond_8

    .line 2220
    :cond_1
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2222
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidFixed:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwEnabled:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwFixed:Z

    if-eqz v2, :cond_7

    .line 2228
    :cond_3
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsFixIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2229
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2230
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2327
    :goto_1
    return-void

    .line 2202
    :cond_4
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2204
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsAndroidFixed:Z

    goto :goto_0

    .line 2206
    :cond_5
    const-string v2, "com.vzw.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2208
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwEnabled:Z

    .line 2209
    if-nez v1, :cond_0

    .line 2210
    iput-boolean v5, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwFixed:Z

    goto :goto_0

    .line 2212
    :cond_6
    const-string v2, "com.vzw.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2214
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsVzwFixed:Z

    goto :goto_0

    .line 2235
    :cond_7
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsEnabledIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2237
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2238
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2266
    :cond_8
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mGpsIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2268
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vzw_lbs"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2274
    :cond_9
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2275
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2279
    :cond_a
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2280
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_1
.end method

.method private final updateHomezone(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "android.servicestate.HOME_ZONE_CHANGE"

    .line 2463
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2464
    .local v0, action:Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2466
    .local v1, type:I
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v5, :cond_1

    .line 2467
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2468
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2475
    :cond_0
    :goto_0
    return-void

    .line 2469
    :cond_1
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 2470
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 2471
    :cond_2
    const-string v2, "android.servicestate.HOME_ZONE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2472
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mCityzoneIconData:Lcom/android/server/status/IconData;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2473
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mHomezoneIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method private final updateLBS(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, "LBSsettings"

    .line 2348
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2349
    .local v0, action:Ljava/lang/String;
    const-string v5, "lbsEnabled"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2350
    .local v1, enabled:Z
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vzw_lbs"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 2351
    .local v4, mVZWlbs:Z
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gps"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 2352
    .local v2, mGPSprovider:Z
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "network"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 2354
    .local v3, mNETprovider:Z
    const-string v5, "LBSsettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateLBS: enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const-string v5, "LBSsettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> mVZWlbs / mVZWlbs / mNETprovider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    if-eqz v1, :cond_0

    .line 2359
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2360
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2361
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2374
    :goto_0
    return-void

    .line 2364
    :cond_0
    if-nez v4, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 2365
    :cond_1
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2366
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0

    .line 2369
    :cond_2
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLBSModeIcon:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2370
    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mE911ModeIcon:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 14

    .prologue
    .line 1628
    const/4 v4, -0x1

    .line 1629
    .local v4, iconLevel:I
    const/4 v2, -0x1

    .line 1632
    .local v2, evdoIconLevel:I
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "preferred_network_mode"

    const/4 v12, 0x4

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 1637
    .local v9, settingsNetworkMode:I
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->hasService()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1639
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1641
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const v11, 0x108039e

    iput v11, v10, Lcom/android/server/status/IconData;->iconId:I

    .line 1645
    :goto_0
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v12, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 1768
    :goto_1
    return-void

    .line 1643
    :cond_0
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const v11, 0x108039f

    iput v11, v10, Lcom/android/server/status/IconData;->iconId:I

    goto :goto_0

    .line 1649
    :cond_1
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->isCdma()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1651
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v4

    .line 1668
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1669
    sget-object v5, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_r:[I

    .line 1675
    .local v5, iconList:[I
    :goto_2
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1766
    :goto_3
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    aget v11, v5, v4

    iput v11, v10, Lcom/android/server/status/IconData;->iconId:I

    .line 1767
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    iget-object v12, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneData:Lcom/android/server/status/IconData;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 1671
    .end local v5           #iconList:[I
    :cond_2
    sget-object v5, Lcom/android/server/status/StatusBarPolicy;->sSignalImages:[I

    .restart local v5       #iconList:[I
    goto :goto_2

    .line 1678
    .end local v5           #iconList:[I
    :cond_3
    const/4 v10, 0x6

    if-ne v9, v10, :cond_4

    .line 1681
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 1686
    :goto_4
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v3

    .line 1687
    .local v3, iconIndex:I
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v6

    .line 1689
    .local v6, iconMode:I
    sget-object v5, Lcom/android/server/status/StatusBarPolicy;->sSignalImages_cdma:[I

    .line 1702
    .restart local v5       #iconList:[I
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1703
    .local v0, cdmaDbm:I
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v10}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1704
    .local v1, cdmaEcio:I
    const/4 v7, 0x0

    .line 1705
    .local v7, levelDbm:I
    const/4 v8, 0x0

    .line 1707
    .local v8, levelEcio:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_5

    const/4 v7, 0x0

    .line 1725
    :goto_5
    move v4, v7

    goto :goto_3

    .line 1683
    .end local v0           #cdmaDbm:I
    .end local v1           #cdmaEcio:I
    .end local v3           #iconIndex:I
    .end local v5           #iconList:[I
    .end local v6           #iconMode:I
    .end local v7           #levelDbm:I
    .end local v8           #levelEcio:I
    :cond_4
    iget-object v10, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v11, p0, Lcom/android/server/status/StatusBarPolicy;->mPhoneIcon:Landroid/os/IBinder;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_4

    .line 1708
    .restart local v0       #cdmaDbm:I
    .restart local v1       #cdmaEcio:I
    .restart local v3       #iconIndex:I
    .restart local v5       #iconList:[I
    .restart local v6       #iconMode:I
    .restart local v7       #levelDbm:I
    .restart local v8       #levelEcio:I
    :cond_5
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_6

    const/4 v7, 0x6

    goto :goto_5

    .line 1709
    :cond_6
    const/16 v10, -0x55

    if-lt v0, v10, :cond_7

    const/4 v7, 0x5

    goto :goto_5

    .line 1710
    :cond_7
    const/16 v10, -0x5a

    if-lt v0, v10, :cond_8

    const/4 v7, 0x4

    goto :goto_5

    .line 1711
    :cond_8
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_9

    const/4 v7, 0x3

    goto :goto_5

    .line 1712
    :cond_9
    const/16 v10, -0x64

    if-lt v0, v10, :cond_a

    const/4 v7, 0x2

    goto :goto_5

    .line 1713
    :cond_a
    const/16 v10, -0x69

    if-lt v0, v10, :cond_b

    const/4 v7, 0x1

    goto :goto_5

    .line 1714
    :cond_b
    const/4 v7, 0x0

    goto :goto_5
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1577
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1578
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1579
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1598
    :goto_0
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->updateDataIcon()V

    .line 1599
    return-void

    .line 1581
    :cond_0
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1582
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1584
    :cond_1
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1585
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1587
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1589
    :cond_2
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1590
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1593
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1596
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 962
    const-string v2, "active"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 963
    .local v0, isActive:Z
    const-string v2, "failing"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 964
    .local v1, isFailing:Z
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mSyncActiveIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 967
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 2330
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2331
    .local v0, action:Ljava/lang/String;
    const-string v2, "ttyEnabled"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2335
    .local v1, enabled:Z
    if-eqz v1, :cond_0

    .line 2338
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeEnableIconData:Lcom/android/server/status/IconData;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2339
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2345
    :goto_0
    return-void

    .line 2343
    :cond_0
    iget-object v2, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mTTYModeIcon:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 1990
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1991
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1992
    .local v2, ringerMode:I
    if-eqz v2, :cond_0

    if-ne v2, v6, :cond_3

    :cond_0
    move v3, v6

    .line 1994
    .local v3, visible:Z
    :goto_0
    if-ne v2, v6, :cond_4

    const v4, 0x10802ec

    move v1, v4

    .line 1998
    .local v1, iconId:I
    :goto_1
    if-eqz v3, :cond_1

    .line 1999
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    iput v1, v4, Lcom/android/server/status/IconData;->iconId:I

    .line 2000
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeData:Lcom/android/server/status/IconData;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2002
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v3, v4, :cond_2

    .line 2003
    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeIcon:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2004
    iput-boolean v3, p0, Lcom/android/server/status/StatusBarPolicy;->mVolumeVisible:Z

    .line 2006
    :cond_2
    return-void

    .line 1992
    .end local v1           #iconId:I
    .end local v3           #visible:Z
    :cond_3
    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    .line 1994
    .restart local v3       #visible:Z
    :cond_4
    const v4, 0x10802eb

    move v1, v4

    goto :goto_1
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2051
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2052
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2054
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move v1, v9

    .line 2057
    .local v1, enabled:Z
    :goto_0
    if-nez v1, :cond_0

    .line 2059
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2110
    .end local v1           #enabled:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v8

    .line 2054
    goto :goto_0

    .line 2062
    :cond_2
    const-string v6, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2063
    const-string v6, "connected"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2065
    .restart local v1       #enabled:Z
    if-nez v1, :cond_0

    .line 2066
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 2068
    .end local v1           #enabled:Z
    :cond_3
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2070
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 2074
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2075
    iput-boolean v9, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 2076
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v6, v7, :cond_4

    .line 2077
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v2, v6, v8

    .line 2083
    .local v2, iconId:I
    :goto_2
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v9}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2094
    :goto_3
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    iput v2, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 2095
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_1

    .line 2079
    .end local v2           #iconId:I
    :cond_4
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    iget v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v2, v6, v7

    .restart local v2       #iconId:I
    goto :goto_2

    .line 2086
    .end local v2           #iconId:I
    :cond_5
    iput v7, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 2087
    iput-boolean v8, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    .line 2088
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v2, v6, v8

    .line 2091
    .restart local v2       #iconId:I
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    goto :goto_3

    .line 2096
    .end local v2           #iconId:I
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2097
    const-string v6, "newRssi"

    const/16 v7, -0xc8

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2098
    .local v4, newRssi:I
    sget-object v6, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    array-length v6, v6

    invoke-static {v4, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v5

    .line 2100
    .local v5, newSignalLevel:I
    iget v6, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v5, v6, :cond_0

    .line 2101
    iput v5, p0, Lcom/android/server/status/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 2102
    iget-boolean v6, p0, Lcom/android/server/status/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v6, :cond_7

    .line 2103
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    sget-object v7, Lcom/android/server/status/StatusBarPolicy;->sWifiSignalImages:[I

    aget v7, v7, v5

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    .line 2107
    :goto_4
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiIcon:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_1

    .line 2105
    :cond_7
    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiData:Lcom/android/server/status/IconData;

    const v7, 0x1080311

    iput v7, v6, Lcom/android/server/status/IconData;->iconId:I

    goto :goto_4
.end method

.method private final updateWifiAp(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "StatusBarPolicy"

    .line 2113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2114
    .local v0, action:Ljava/lang/String;
    const-string v3, "StatusBarPolicy"

    const-string v3, "action : WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const/4 v2, 0x0

    .line 2118
    .local v2, numClient:I
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2120
    const-string v3, "wifi_state"

    const/4 v4, 0x6

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2128
    .local v1, enabled:I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 2129
    const-string v3, "StatusBarPolicy"

    const-string v3, "action : WifiManager.WIFI_AP_STATE_ENABLED"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    sget-object v4, Lcom/android/server/status/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v4, v4, v2

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2133
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2134
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    .line 2170
    .end local v1           #enabled:I
    :cond_0
    :goto_0
    return-void

    .line 2135
    .restart local v1       #enabled:I
    :cond_1
    if-ne v1, v7, :cond_2

    .line 2136
    const-string v3, "StatusBarPolicy"

    const-string v3, "action : WifiManager.WIFI_AP_STATE_DISABLED"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2138
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_0

    .line 2140
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    .line 2141
    const-string v3, "StatusBarPolicy"

    const-string v3, "action : WifiManager.WIFI_AP_STATE_SUSPENDED"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    const v4, 0x10802d3

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2143
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_0

    .line 2145
    :cond_3
    if-ne v1, v8, :cond_0

    .line 2146
    const-string v3, "StatusBarPolicy"

    const-string v3, "action : WifiManager.WIFI_AP_STATE_UNSUSPENDED"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v2

    .line 2149
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 2151
    :cond_4
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    sget-object v4, Lcom/android/server/status/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v4, v4, v2

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2152
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_0

    .line 2157
    .end local v1           #enabled:I
    :cond_5
    const-string v3, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/android/server/status/StatusBarPolicy;->getDhcpClientNum()I

    move-result v2

    .line 2163
    if-le v2, v8, :cond_6

    const/4 v2, 0x5

    .line 2165
    :cond_6
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    sget-object v4, Lcom/android/server/status/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v4, v4, v2

    iput v4, v3, Lcom/android/server/status/IconData;->iconId:I

    .line 2166
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    invoke-virtual {v3, v4, v7}, Lcom/android/server/status/StatusBarService;->setIconVisibility(Landroid/os/IBinder;Z)V

    .line 2167
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy;->mService:Lcom/android/server/status/StatusBarService;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApIcon:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy;->mWifiApData:Lcom/android/server/status/IconData;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/status/StatusBarService;->updateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto/16 :goto_0
.end method


# virtual methods
.method getAuthBattery()V
    .locals 10

    .prologue
    const-string v9, "StatusBarPolicy"

    .line 847
    const-string v5, "sys/class/power_supply/battery/auth_battery"

    .line 851
    .local v5, str_auth_battery_locate:Ljava/lang/String;
    const/4 v2, 0x0

    .line 852
    .local v2, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x1000

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v3, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 856
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 862
    .end local v3           #in:Ljava/io/BufferedReader;
    .end local v4           #s:Ljava/lang/String;
    .local v6, value:I
    :goto_0
    if-nez v6, :cond_0

    .line 864
    const-string v7, "StatusBarPolicy"

    const-string v7, "auth battery fail"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/status/StatusBarPolicy;->IsAuthBattery:Z

    .line 868
    :cond_0
    sget-boolean v7, Lcom/android/server/status/StatusBarPolicy;->IsAuthBattery:Z

    if-nez v7, :cond_1

    .line 869
    const-string v7, "StatusBarPolicy"

    const-string v7, "SendIntent AUTHBATTERY_ALERT"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, LowAlertDlg:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/status/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 873
    .end local v0           #LowAlertDlg:Landroid/content/Intent;
    :cond_1
    return-void

    .line 857
    .end local v6           #value:I
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 858
    .local v1, e:Ljava/lang/Exception;
    :goto_1
    const-string v7, "StatusBarPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v6, 0x0

    .restart local v6       #value:I
    goto :goto_0

    .line 857
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v6           #value:I
    .restart local v3       #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    goto :goto_1
.end method
