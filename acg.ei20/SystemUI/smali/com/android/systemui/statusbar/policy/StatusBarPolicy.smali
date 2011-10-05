.class public Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;
    }
.end annotation


# static fields
.field private static hotspotNotification:Landroid/app/Notification;

.field private static hotspotNotificationManager:Landroid/app/NotificationManager;

.field private static mLowBatteryNotification:Landroid/app/Notification;

.field private static final mWifiApOnIcon:[I

.field private static final sDataNetType_1x:[[I

.field private static final sDataNetType_3g:[[I

.field private static final sDataNetType_e:[[I

.field private static final sDataNetType_evdo:[[I

.field private static final sDataNetType_g:[[I

.field private static final sDataNetType_h:[[I

.field private static final sLBSImages:[I

.field private static final sRoamingIndicatorImages_cdma:[I

.field private static final sSignalImages:[[I

.field private static final sSignalImages_r:[[I

.field private static final sSignalImages_vzw:[[I

.field private static final sWifiSignalImages:[[I

.field private static final sWimaxSignalImages:[[I


# instance fields
.field private AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

.field private mAuthBatteryDialog:Landroid/app/AlertDialog;

.field private mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mBattIntent:Landroid/app/PendingIntent;

.field private mBatteryFirst:Z

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelTextView:Landroid/widget/TextView;

.field private mBatteryPlugged:Z

.field private mBatteryShowLowOnEndCall:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryView:Landroid/view/View;

.field private mBatteryViewSequence:I

.field private mBluetoothA2dpConnected:Z

.field private mBluetoothEnabled:Z

.field private mBluetoothHeadsetState:I

.field private mBluetoothPbapState:I

.field private final mContext:Landroid/content/Context;

.field mDataActivity:I

.field private mDataIconList:[I

.field private mDataIconVisible:Z

.field mDataState:I

.field private mDisChargeDialog:Landroid/app/AlertDialog;

.field private mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDisChargeTextView:Landroid/widget/TextView;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAuthBattery:Z

.field private mIsDisCharged:Z

.field private mIsFullCharged:Z

.field private mIsWifiConnected:Z

.field private mIsWimaxConnected:Z

.field private mIsWimaxEnabled:Z

.field private mLastWifiSignalLevel:I

.field private mLowBatteryDialog:Landroid/app/AlertDialog;

.field private mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mMyContext:Landroid/content/Context;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneSignalIconId:I

.field mPhoneState:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mService:Landroid/app/StatusBarManager;

.field mServiceState:Landroid/telephony/ServiceState;

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCard$State;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVolumeVisible:Z

.field private mWL:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxSignal:I

.field private mWimaxState:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 199
    new-array v0, v2, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_vzw:[[I

    .line 214
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    .line 226
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    .line 238
    const/16 v0, 0xf0

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 500
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    .line 510
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    .line 520
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    .line 531
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    .line 544
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    .line 556
    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_evdo:[[I

    .line 592
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    .line 616
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[[I

    .line 635
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_17

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    .line 652
    new-array v0, v2, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sLBSImages:[I

    return-void

    .line 199
    :array_0
    .array-data 0x4
        0xb1t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xb2t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
    .end array-data

    .line 214
    :array_2
    .array-data 0x4
        0x94t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x95t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 226
    :array_4
    .array-data 0x4
        0x83t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x84t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 238
    :array_6
    .array-data 0x4
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 500
    :array_7
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
    .end array-data

    .line 510
    :array_9
    .array-data 0x4
        0x2bt 0x0t 0x2t 0x7ft
        0x52t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x5at 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x34t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
        0x4bt 0x0t 0x2t 0x7ft
        0x44t 0x0t 0x2t 0x7ft
    .end array-data

    .line 520
    :array_b
    .array-data 0x4
        0x2dt 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
    .end array-data

    .line 531
    :array_d
    .array-data 0x4
        0x30t 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x66t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x39t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
    .end array-data

    .line 544
    :array_f
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x33t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
    .end array-data

    .line 556
    :array_11
    .array-data 0x4
        0x2et 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 592
    :array_13
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0xa4t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
    .end array-data

    .line 616
    :array_15
    .array-data 0x4
        0x67t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x68t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x6et 0x0t 0x2t 0x7ft
    .end array-data

    .line 635
    :array_17
    .array-data 0x4
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
        0x7ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 652
    :array_18
    .array-data 0x4
        0x73t 0x0t 0x2t 0x7ft
        0x75t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "bluetooth"

    const-string v3, "alarm_clock"

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 176
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 498
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_g:[[I

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 571
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 572
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 573
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 574
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 605
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 606
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 629
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 630
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    .line 631
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    .line 632
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    .line 649
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 661
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1382
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1397
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1417
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1497
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 754
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    .line 755
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    .line 756
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 757
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 760
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 761
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {v1, p1}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "battery"

    const v2, 0x10802d7

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 768
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 769
    const v0, 0x7f02009f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 770
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    const v2, 0x7f02002f

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "data_connection"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v2, v2, v4

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 791
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi_ap"

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi_ap"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 800
    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    const v2, 0x7f02006f

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->checkLBSStatus()Z

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v2, 0x7f0200a1

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v2, 0x7f02008f

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    const v1, 0x7f020028

    invoke-virtual {v0, v6, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 823
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 829
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 830
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 831
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v2, 0x7f020072

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    const v1, 0x7f020024

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    invoke-virtual {v0, v3, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 843
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    const v2, 0x10802b5

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 844
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    const v2, 0x10802b6

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    const v2, 0x7f02008d

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 850
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 851
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    .line 853
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 856
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 882
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v1, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    const-string v1, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_1
    return-void

    .line 827
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_1
.end method

.method private final AuthBatteryCheck()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "StatusBarPolicy"

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1369
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1370
    if-nez v1, :cond_0

    .line 1372
    const-string v1, "StatusBarPolicy"

    const-string v1, "auth battery fail Screen turn on"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1375
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1376
    const/4 v1, 0x6

    const-string v2, "StatusBarPolicy"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1379
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1380
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWifiAp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mMyContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWifi(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateGps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSimState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateTTY(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateConnectivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateLBS(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBatteryCheck()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBattery(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2400()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateAlarm(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAuthBatteryDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryViewSequence:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showAuthBatteryPopup()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showDisChargePopup(ZI)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryLow(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->onBatteryOkay(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateBluetooth(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method private addFullChargeNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2438
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2440
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020026

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2441
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 2442
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2445
    const/high16 v1, 0x701

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2446
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 2448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->turnOnScreenWithForce()V

    .line 2449
    return-void
.end method

.method private checkLBSStatus()Z
    .locals 6

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 2459
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 2460
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 2461
    const-string v3, "LBSsettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> mVZWlbs / mVZWlbs / mNETprovider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeLastBatteryView()V
    .locals 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1439
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1442
    :cond_0
    return-void
.end method

.method private createHotspotNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2159
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    .line 2160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2161
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2162
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2163
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2164
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2165
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 2166
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2167
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    const v1, 0x7f0200a0

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2169
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    const-wide v1, -0x7fffffffffffffffL

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 2170
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    const-string v2, "com.android.internal"

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2171
    return-void
.end method

.method private getCdmaLevel()I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1697
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1698
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1718
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_0

    const/4 v0, 0x5

    .line 1726
    :goto_0
    const/16 v2, -0x50

    if-lt v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1734
    :goto_1
    const-string v2, "StatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "levelDbm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", levelEcio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    if-le v0, v1, :cond_a

    :goto_2
    return v0

    .line 1719
    :cond_0
    const/16 v2, -0x55

    if-lt v0, v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 1720
    :cond_1
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_2

    move v0, v6

    goto :goto_0

    .line 1721
    :cond_2
    const/16 v2, -0x64

    if-lt v0, v2, :cond_3

    move v0, v5

    goto :goto_0

    .line 1722
    :cond_3
    const/16 v2, -0x69

    if-lt v0, v2, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1723
    goto :goto_0

    .line 1727
    :cond_5
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_6

    move v1, v7

    goto :goto_1

    .line 1728
    :cond_6
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_7

    move v1, v6

    goto :goto_1

    .line 1729
    :cond_7
    const/16 v2, -0x82

    if-lt v1, v2, :cond_8

    move v1, v5

    goto :goto_1

    .line 1730
    :cond_8
    const/16 v2, -0x96

    if-lt v1, v2, :cond_9

    move v1, v4

    goto :goto_1

    :cond_9
    move v1, v3

    .line 1731
    goto :goto_1

    :cond_a
    move v0, v1

    .line 1736
    goto :goto_2
.end method

.method private getDhcpClientNum()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v2, " "

    const-string v9, "StatusBarPolicy"

    .line 2327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0

    .line 2332
    if-eqz v0, :cond_4

    .line 2334
    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2337
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2341
    :goto_0
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDhcpClientNum numClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    if-gtz v1, :cond_0

    .line 2344
    const-string v0, "StatusBarPolicy"

    const-string v0, "getDhcpClientNum is none"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2375
    :goto_1
    return v0

    .line 2338
    :catch_0
    move-exception v1

    .line 2339
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v8

    goto :goto_0

    :cond_0
    move v2, v5

    move v3, v8

    .line 2348
    :goto_2
    if-gt v2, v1, :cond_3

    .line 2352
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2354
    :cond_1
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2356
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2357
    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_1

    const/4 v6, 0x0

    aget-object v6, v5, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, v5, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    aget-object v6, v5, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    aget-object v6, v5, v6

    if-eqz v6, :cond_1

    .line 2358
    aget-object v6, v0, v2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2359
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2363
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2348
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2364
    :catch_1
    move-exception v3

    .line 2365
    const-string v3, "StatusBarPolicy"

    const-string v3, "mac read exception"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 2366
    goto :goto_4

    :cond_3
    move v0, v3

    .line 2373
    :goto_5
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DhcpClientnum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    move v0, v8

    .line 2371
    goto :goto_5
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1587
    :pswitch_0
    const/4 v0, 0x1

    .line 1590
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1585
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1590
    goto :goto_0

    .line 1582
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

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

.method private onBatteryLow(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1070
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1078
    :cond_0
    return-void
.end method

.method private playTone(I)V
    .locals 3
    .parameter

    .prologue
    .line 1324
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTone("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 1328
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1330
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1331
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1336
    :goto_0
    return-void

    .line 1333
    :cond_0
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 1334
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private removeFullChargeNotification()V
    .locals 2

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2454
    const/high16 v0, 0x701

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2455
    return-void
.end method

.method private showAuthBatteryPopup()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v7, "TRUE"

    const-string v6, "StatusBarPolicy"

    .line 1094
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1095
    if-eqz v0, :cond_2

    .line 1097
    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1098
    const-string v1, "gsm.default.esn"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v3, :cond_0

    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1099
    :cond_0
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No AuthBattery popup because factory mode phonenumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1105
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 1140
    :cond_1
    :goto_0
    return-void

    .line 1112
    :cond_2
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1113
    const-string v0, "StatusBarPolicy"

    const-string v0, "No AuthBattery popup because factory mode"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1116
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1119
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 1124
    :cond_3
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10404c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1090078

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1128
    const v0, 0x1020258

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1131
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1132
    const v1, 0x10404bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1133
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1134
    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1137
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1138
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1139
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAuthBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private showDisChargePopup(ZI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    const/4 v6, 0x0

    const-string v2, "power"

    const-string v9, "StatusBarPolicy"

    .line 1274
    const-string v0, "StatusBarPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showDisChargePopup() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1278
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1279
    if-nez v1, :cond_0

    .line 1281
    const-string v1, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1283
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V

    .line 1284
    const/16 v2, 0x14

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1291
    const-string v1, "StatusBarPolicy"

    invoke-virtual {v0, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1296
    :cond_1
    if-ne p2, v7, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10404c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1304
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1090078

    invoke-static {v0, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1306
    const v0, 0x1020258

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1310
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1311
    const v1, 0x10404bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1312
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1313
    const v1, 0x104000a

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1315
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1317
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1318
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1319
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    .line 1321
    return-void

    .line 1302
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10404be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1285
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showLowBatteryWarning()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "StatusBarPolicy"

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1146
    if-eqz v0, :cond_2

    .line 1148
    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1149
    const-string v1, "gsm.default.esn"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v4, :cond_0

    const-string v1, "000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1150
    :cond_0
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No LowBattery popup because factory mode phonenumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_1
    :goto_0
    return-void

    .line 1156
    :cond_2
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1157
    const-string v0, "StatusBarPolicy"

    const-string v0, "No LowBattery popup because factory mode"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1161
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1174
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1181
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1221
    const-string v1, "power_sounds_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1224
    const-string v1, "low_battery_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_1

    .line 1227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1230
    if-nez v0, :cond_7

    .line 1231
    const-string v0, "StatusBarPolicy"

    const-string v0, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1177
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1184
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f030001

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1185
    const v0, 0x7f090003

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1190
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1191
    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1192
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1193
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1194
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1196
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    const/high16 v2, 0x5880

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1201
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1202
    const v2, 0x7f070008

    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1213
    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1214
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1215
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1216
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1217
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1235
    :cond_7
    const-string v2, " "

    .line 1236
    const-string v3, " "

    .line 1238
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    if-nez v1, :cond_8

    .line 1239
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    .line 1240
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    const v4, 0x1080020

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 1241
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 1242
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iput v7, v1, Landroid/app/Notification;->flags:I

    .line 1243
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1246
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1247
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 1248
    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    const-string v4, "system/media/audio/ui/TW_Low_Battery.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1254
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1255
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1257
    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1259
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1250
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 1251
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    goto :goto_3
.end method

.method private turnOnScreenWithForce()V
    .locals 5

    .prologue
    .line 2429
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 2431
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2434
    :goto_0
    return-void

    .line 2432
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 928
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 929
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 930
    return-void
.end method

.method private final updateBattery(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 941
    const-string v0, "icon-small"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 942
    const-string v1, "level"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 943
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "battery"

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 945
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    .line 946
    :goto_0
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 955
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 957
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 958
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    .line 960
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v0, :cond_0

    .line 961
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 975
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    .line 977
    const-string v0, "status"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 978
    const-string v1, "health"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 979
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    .line 980
    const-string v2, "StatusBarPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BAT. S:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " H:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    if-eqz v2, :cond_1

    .line 984
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 986
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 987
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 991
    :cond_1
    if-ne v0, v8, :cond_7

    .line 992
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1001
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-eqz v0, :cond_4

    .line 1002
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 1003
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeFullChargeNotification()V

    .line 1005
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1007
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1054
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v5

    .line 945
    goto/16 :goto_0

    .line 1010
    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    .line 1011
    if-eq v1, v8, :cond_8

    const/4 v0, 0x7

    if-eq v1, v0, :cond_8

    if-ne v1, v9, :cond_5

    .line 1015
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_9

    .line 1016
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    if-nez v0, :cond_9

    .line 1017
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1019
    const-string v2, "StatusBarPolicy"

    invoke-virtual {v0, v9, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1021
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showDisChargePopup(ZI)V

    .line 1025
    :cond_9
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    goto :goto_1

    .line 1028
    :cond_a
    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    .line 1029
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-nez v0, :cond_b

    .line 1030
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 1031
    ##invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->addFullChargeNotification()V

    .line 1033
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1035
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 1038
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 1039
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 1042
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1044
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_e

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1046
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1049
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method

.method private final updateBluetooth(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "bluetooth"

    .line 1887
    const v0, 0x7f020028

    .line 1888
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1889
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1890
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1891
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1909
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v1, v5, :cond_1

    .line 1911
    :cond_0
    const v0, 0x7f020029

    .line 1923
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v6, v0, v3, v3}, Landroid/app/StatusBarManager;->setIconWithVisible(Ljava/lang/String;IIZ)V

    .line 1925
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1926
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1891
    goto :goto_0

    .line 1892
    :cond_4
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1893
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1895
    :cond_5
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1896
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1897
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1898
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1900
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1902
    :cond_7
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1903
    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    goto :goto_1
.end method

.method private final updateCallState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1340
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 1346
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1347
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 1348
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 1349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1351
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1364
    :cond_1
    :goto_0
    return-void

    .line 1354
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1359
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method private final updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "StatusBarPolicy"

    const-string v4, "cdma_eri"

    .line 2247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2321
    :goto_0
    return-void

    .line 2252
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2253
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2257
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 2258
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 2259
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 2261
    if-ne v1, v7, :cond_2

    .line 2262
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2266
    :cond_2
    if-ne v2, v7, :cond_3

    .line 2267
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2272
    :cond_3
    if-ne v1, v6, :cond_4

    .line 2274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2277
    :cond_4
    if-nez v1, :cond_6

    .line 2278
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2295
    :cond_5
    :goto_1
    if-ne v1, v7, :cond_9

    .line 2297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2281
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    const v2, 0x7f020090

    invoke-virtual {v0, v4, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2285
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 2287
    if-lez v2, :cond_8

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    const v2, 0x7f020027

    invoke-virtual {v0, v4, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2293
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2290
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_2

    .line 2320
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto/16 :goto_0
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "StatusBarPolicy"

    const-string v5, "wifi"

    .line 1445
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1447
    const-string v1, "inetCondition"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1449
    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    move v1, v4

    .line 1451
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1495
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1449
    goto :goto_0

    .line 1453
    :sswitch_0
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_MOBILE"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1455
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    .line 1456
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1460
    :sswitch_1
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_WIFI"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1462
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1465
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v6, :cond_1

    .line 1466
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 1470
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1472
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1482
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1468
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    .line 1474
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1475
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1476
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v0, v0, v3

    aget v0, v0, v3

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1485
    :sswitch_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1486
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1487
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1492
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1490
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    goto :goto_4

    .line 1451
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method private final updateDataIcon()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "data_connection"

    .line 1799
    .line 1801
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1804
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_2

    .line 1805
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    .line 1816
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1819
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    .line 1854
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1856
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1862
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    .line 1863
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1864
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    .line 1866
    :cond_1
    return-void

    .line 1807
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_0

    .line 1810
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_0

    .line 1813
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1821
    goto :goto_1

    .line 1824
    :cond_3
    const v0, 0x7f020082

    .line 1825
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1829
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_5

    .line 1830
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 1844
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1847
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1832
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_3

    .line 1835
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_3

    .line 1838
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    .line 1841
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_3

    .line 1849
    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    move v0, v3

    .line 1850
    goto :goto_1

    .line 1857
    :catch_0
    move-exception v3

    .line 1859
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1805
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1830
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
    .line 1761
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNetType-T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    packed-switch p1, :pswitch_data_0

    .line 1792
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 1795
    :goto_0
    return-void

    .line 1764
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1767
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1772
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1773
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1775
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1780
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1783
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1789
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_evdo:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1762
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final updateGps(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v7, "LBSsettings"

    const-string v6, "lbs"

    const-string v4, "gps"

    .line 2174
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2175
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2179
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x10802e3

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2182
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2183
    const-string v0, "LBSsettings"

    const-string v0, "hide lbs and e911 icons // GPS fixed"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v6, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2210
    :goto_0
    return-void

    .line 2185
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 2187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2189
    const-string v0, "LBSsettings"

    const-string v0, "show lbs and e911 icons // GPS is off"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f020072

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v6, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateLBS(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2231
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2232
    const-string v0, "lbsEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->checkLBSStatus()Z

    move-result v1

    .line 2235
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2243
    :goto_0
    const-string v2, "LBSsettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLBS: enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " icon set to :  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    return-void

    :cond_0
    move v1, v2

    .line 2235
    goto :goto_0
.end method

.method private final updateSignalStrength()V
    .locals 9

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "StatusBarPolicy"

    const-string v5, "phone_signal"

    .line 1595
    .line 1598
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1604
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1605
    :cond_0
    const-string v0, "StatusBarPolicy"

    const-string v0, "updateSignalStrength: No SVC"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1608
    const v0, 0x7f02009e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1612
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1694
    :goto_1
    return-void

    .line 1610
    :cond_1
    const v0, 0x7f02009f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 1616
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1619
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 1652
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1653
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 1685
    :goto_2
    if-le v1, v7, :cond_3

    .line 1686
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resetting to 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    .line 1691
    :cond_3
    const-string v2, "StatusBarPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconLevel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1655
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    .line 1660
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_vzw:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    .line 1665
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 1666
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "phone_signal"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1679
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevel()I

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    .line 1668
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "phone_signal"

    invoke-virtual {v0, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1541
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1562
    :goto_0
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimState-S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1564
    return-void

    .line 1545
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1548
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1549
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1551
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1553
    :cond_2
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1554
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1557
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1560
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0
.end method

.method private final updateSyncState(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 933
    const-string v0, "active"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 934
    const-string v1, "failing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 935
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sync_active"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 938
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "tty"

    .line 2213
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2214
    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2218
    if-eqz v0, :cond_0

    .line 2221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f0200a1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2222
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2228
    :goto_0
    return-void

    .line 2226
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v3, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateVolume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const-string v5, "volume"

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1870
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1871
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_3

    :cond_0
    move v1, v2

    .line 1873
    :goto_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02008e

    .line 1877
    :goto_1
    if-eqz v1, :cond_1

    .line 1878
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v5, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1880
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v1, v0, :cond_2

    .line 1881
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1882
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    .line 1884
    :cond_2
    return-void

    :cond_3
    move v1, v4

    .line 1871
    goto :goto_0

    .line 1873
    :cond_4
    const v0, 0x7f02008d

    goto :goto_1
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f02006f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "wimax"

    .line 1997
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2000
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2001
    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2003
    packed-switch v0, :pswitch_data_0

    .line 2035
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2036
    return-void

    .line 2005
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 2008
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 2011
    :cond_1
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2012
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 2013
    :cond_2
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2014
    const-string v0, "WimaxState"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    .line 2016
    const-string v0, "WimaxStateDetail"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2020
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    move v0, v4

    .line 2033
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 2023
    goto :goto_1

    .line 2025
    :pswitch_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 2026
    const v0, 0x7f020070

    goto :goto_1

    .line 2029
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    goto :goto_1

    .line 2003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2020
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final updateWifi(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "wifi"

    .line 1929
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1930
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1932
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1935
    :goto_0
    if-nez v0, :cond_0

    .line 1937
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1994
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1932
    goto :goto_0

    .line 1951
    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1953
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1954
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1956
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1957
    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1958
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v1, :cond_3

    .line 1959
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 1960
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1962
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1970
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1974
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1975
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1976
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v5, :cond_5

    .line 1983
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1979
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    .line 1985
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1986
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private final updateWifiAp(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f090005

    const v7, 0x7f0200a0

    const/4 v6, 0x0

    const-string v2, "StatusBarPolicy"

    const-string v4, "wifi_ap"

    .line 2062
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2063
    const-string v1, "StatusBarPolicy"

    const-string v1, "action : WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2068
    const-string v0, "wifi_state"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2069
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2070
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_ENABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v0, v0, v6

    .line 2072
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi_ap"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2073
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi_ap"

    invoke-virtual {v1, v4, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2076
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2079
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2080
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2081
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2082
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2084
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020077

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2087
    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v2, v2, v6

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 2088
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2089
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f020077

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2090
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2092
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v0, :cond_2

    .line 2093
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2094
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v1, v1, v6

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2095
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2096
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2097
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_DISABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi_ap"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2102
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2103
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2104
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    goto/16 :goto_0

    .line 2106
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2107
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_SUSPENDED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    const v0, 0x7f020076

    .line 2111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi_ap"

    invoke-virtual {v1, v4, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2112
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2113
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v0, :cond_5

    .line 2114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2115
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f020076

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2116
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2125
    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2126
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_UNSUSPENDED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 2129
    if-gez v0, :cond_7

    move v0, v6

    .line 2130
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v1, v1, v0

    .line 2131
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi_ap"

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2132
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 2133
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v1, :cond_8

    .line 2134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2135
    :cond_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v0, v2, v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2136
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2140
    :cond_9
    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2142
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getDhcpClientNum()I

    move-result v0

    .line 2143
    const/4 v1, 0x5

    if-le v0, v1, :cond_a

    const/4 v0, 0x5

    .line 2146
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v1, v1, v0

    .line 2147
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi_ap"

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2148
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi_ap"

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2149
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 2150
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v1, :cond_b

    .line 2151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2152
    :cond_b
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v0, v2, v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2153
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method


# virtual methods
.method getAuthBattery()V
    .locals 5

    .prologue
    const-string v4, "StatusBarPolicy"

    .line 904
    const-string v0, "sys/class/power_supply/battery/auth_battery"

    .line 909
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 911
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 912
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 913
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 919
    :goto_0
    if-nez v0, :cond_0

    .line 921
    const-string v0, "StatusBarPolicy"

    const-string v0, "auth battery fail"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 925
    :cond_0
    return-void

    .line 914
    :catch_0
    move-exception v1

    .line 915
    const-string v1, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v0, 0x0

    goto :goto_0
.end method
