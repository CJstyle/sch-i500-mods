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
        0xb0t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xb1t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
    .end array-data

    .line 214
    :array_2
    .array-data 0x4
        0x93t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x94t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
    .end array-data

    .line 226
    :array_4
    .array-data 0x4
        0x82t 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
        0x86t 0x0t 0x2t 0x7ft
        0x88t 0x0t 0x2t 0x7ft
        0x8at 0x0t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x83t 0x0t 0x2t 0x7ft
        0x85t 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
        0x89t 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 238
    :array_6
    .array-data 0x4
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
    .end array-data

    .line 500
    :array_7
    .array-data 0x4
        0x2et 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
        0x64t 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x37t 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x4et 0x0t 0x2t 0x7ft
        0x47t 0x0t 0x2t 0x7ft
    .end array-data

    .line 510
    :array_9
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x51t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x59t 0x0t 0x2t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x33t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x4at 0x0t 0x2t 0x7ft
        0x43t 0x0t 0x2t 0x7ft
    .end array-data

    .line 520
    :array_b
    .array-data 0x4
        0x2ct 0x0t 0x2t 0x7ft
        0x53t 0x0t 0x2t 0x7ft
        0x62t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x35t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x4ct 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
    .end array-data

    .line 531
    :array_d
    .array-data 0x4
        0x2ft 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x65t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x38t 0x0t 0x2t 0x7ft
        0x41t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
        0x48t 0x0t 0x2t 0x7ft
    .end array-data

    .line 544
    :array_f
    .array-data 0x4
        0x29t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
        0x5ft 0x0t 0x2t 0x7ft
        0x58t 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x49t 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
    .end array-data

    .line 556
    :array_11
    .array-data 0x4
        0x2dt 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x63t 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x36t 0x0t 0x2t 0x7ft
        0x3ft 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
        0x46t 0x0t 0x2t 0x7ft
        0x3at 0x0t 0x2t 0x7ft
    .end array-data

    .line 592
    :array_13
    .array-data 0x4
        0xa2t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0xa3t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
    .end array-data

    .line 616
    :array_15
    .array-data 0x4
        0x66t 0x0t 0x2t 0x7ft
        0x68t 0x0t 0x2t 0x7ft
        0x6at 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x67t 0x0t 0x2t 0x7ft
        0x69t 0x0t 0x2t 0x7ft
        0x6bt 0x0t 0x2t 0x7ft
        0x6dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 635
    :array_17
    .array-data 0x4
        0x76t 0x0t 0x2t 0x7ft
        0x77t 0x0t 0x2t 0x7ft
        0x78t 0x0t 0x2t 0x7ft
        0x79t 0x0t 0x2t 0x7ft
        0x7at 0x0t 0x2t 0x7ft
        0x7bt 0x0t 0x2t 0x7ft
    .end array-data

    .line 652
    :array_18
    .array-data 0x4
        0x72t 0x0t 0x2t 0x7ft
        0x74t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "bluetooth"

    const-string v7, "alarm_clock"

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    .line 156
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 164
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 171
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 176
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

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

    .line 1378
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1393
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1413
    new-instance v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1493
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
    const v0, 0x7f02009e

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

    const v2, 0x7f02002e

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

    const v2, 0x7f02006e

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->checkLBSStatus()Z

    move-result v0

    .line 806
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "lbs"

    sget-object v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sLBSImages:[I

    if-eqz v0, :cond_1

    move v0, v5

    :goto_0
    aget v0, v3, v0

    invoke-virtual {v1, v2, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v1, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v2, 0x7f0200a0

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    const v2, 0x7f02008e

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    const v1, 0x7f020027

    invoke-virtual {v0, v8, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 819
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 820
    if-eqz v0, :cond_2

    .line 821
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 825
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    .line 826
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    .line 827
    iput v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v8, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v2, 0x7f020071

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    const v1, 0x7f020023

    invoke-virtual {v0, v7, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "alarm_clock"

    invoke-virtual {v0, v7, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    const v2, 0x10802b5

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    const v2, 0x10802b6

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 841
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_active"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 842
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "sync_failing"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    const v2, 0x7f02008c

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "volume"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 847
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateVolume()V

    .line 849
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 852
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 876
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 880
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 883
    const-string v1, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 886
    const-string v1, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 891
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

    .line 896
    :goto_2
    return-void

    :cond_1
    move v0, v4

    .line 806
    goto/16 :goto_0

    .line 823
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    goto/16 :goto_1

    .line 893
    :catch_0
    move-exception v0

    .line 894
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    goto :goto_2
.end method

.method private final AuthBatteryCheck()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "StatusBarPolicy"

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1365
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1366
    if-nez v1, :cond_0

    .line 1368
    const-string v1, "StatusBarPolicy"

    const-string v1, "auth battery fail Screen turn on"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1371
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1372
    const/4 v1, 0x6

    const-string v2, "StatusBarPolicy"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1375
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1376
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

    .line 2428
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2429
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2431
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020025

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2432
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 2433
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2436
    const/high16 v1, 0x701

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2437
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 2439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->turnOnScreenWithForce()V

    .line 2440
    return-void
.end method

.method private checkLBSStatus()Z
    .locals 6

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vzw_lbs"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 2450
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 2451
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 2452
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

    .line 2454
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
    .line 1433
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1435
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryView:Landroid/view/View;

    .line 1438
    :cond_0
    return-void
.end method

.method private createHotspotNotification()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2155
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    .line 2156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2157
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2158
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2159
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2160
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2161
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 2162
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 2163
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    const v1, 0x7f02009f

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 2165
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    const-wide v1, -0x7fffffffffffffffL

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 2166
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    const-string v2, "com.android.internal"

    const v3, 0x7f030002

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2167
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

    .line 1693
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 1694
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 1714
    const/16 v2, -0x4b

    if-lt v0, v2, :cond_0

    const/4 v0, 0x5

    .line 1722
    :goto_0
    const/16 v2, -0x50

    if-lt v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1730
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

    .line 1732
    if-le v0, v1, :cond_a

    :goto_2
    return v0

    .line 1715
    :cond_0
    const/16 v2, -0x55

    if-lt v0, v2, :cond_1

    move v0, v7

    goto :goto_0

    .line 1716
    :cond_1
    const/16 v2, -0x5f

    if-lt v0, v2, :cond_2

    move v0, v6

    goto :goto_0

    .line 1717
    :cond_2
    const/16 v2, -0x64

    if-lt v0, v2, :cond_3

    move v0, v5

    goto :goto_0

    .line 1718
    :cond_3
    const/16 v2, -0x69

    if-lt v0, v2, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    .line 1719
    goto :goto_0

    .line 1723
    :cond_5
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_6

    move v1, v7

    goto :goto_1

    .line 1724
    :cond_6
    const/16 v2, -0x6e

    if-lt v1, v2, :cond_7

    move v1, v6

    goto :goto_1

    .line 1725
    :cond_7
    const/16 v2, -0x82

    if-lt v1, v2, :cond_8

    move v1, v5

    goto :goto_1

    .line 1726
    :cond_8
    const/16 v2, -0x96

    if-lt v1, v2, :cond_9

    move v1, v4

    goto :goto_1

    :cond_9
    move v1, v3

    .line 1727
    goto :goto_1

    :cond_a
    move v0, v1

    .line 1732
    goto :goto_2
.end method

.method private getDhcpClientNum()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v2, " "

    const-string v9, "StatusBarPolicy"

    .line 2318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v0

    .line 2323
    if-eqz v0, :cond_4

    .line 2325
    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2328
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2332
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

    .line 2334
    if-gtz v1, :cond_0

    .line 2335
    const-string v0, "StatusBarPolicy"

    const-string v0, "getDhcpClientNum is none"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 2366
    :goto_1
    return v0

    .line 2329
    :catch_0
    move-exception v1

    .line 2330
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

    .line 2339
    :goto_2
    if-gt v2, v1, :cond_3

    .line 2343
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2345
    :cond_1
    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2347
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2348
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

    .line 2349
    aget-object v6, v0, v2

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2350
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2354
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2339
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2355
    :catch_1
    move-exception v3

    .line 2356
    const-string v3, "StatusBarPolicy"

    const-string v3, "mac read exception"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    .line 2357
    goto :goto_4

    :cond_3
    move v0, v3

    .line 2364
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

    .line 2362
    goto :goto_5
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1583
    :pswitch_0
    const/4 v0, 0x1

    .line 1586
    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1581
    goto :goto_0

    :cond_0
    move v0, v1

    .line 1586
    goto :goto_0

    .line 1578
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
    .line 1563
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
    .line 1061
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1066
    return-void
.end method

.method private onBatteryOkay(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1074
    :cond_0
    return-void
.end method

.method private playTone(I)V
    .locals 3
    .parameter

    .prologue
    .line 1320
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

    .line 1323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 1324
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1326
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1327
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1332
    :goto_0
    return-void

    .line 1329
    :cond_0
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 1330
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method private removeFullChargeNotification()V
    .locals 2

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2445
    const/high16 v0, 0x701

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2446
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

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_2

    .line 1093
    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1094
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

    .line 1095
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

    .line 1096
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1101
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 1136
    :cond_1
    :goto_0
    return-void

    .line 1108
    :cond_2
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1109
    const-string v0, "StatusBarPolicy"

    const-string v0, "No AuthBattery popup because factory mode"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1115
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 1120
    :cond_3
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10404c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1090078

    invoke-static {v0, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1124
    const v0, 0x1020258

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1127
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1128
    const v1, 0x10404bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1129
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1130
    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1132
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mAuthBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1133
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1134
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1135
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

    .line 1270
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

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1274
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    .line 1275
    if-nez v1, :cond_0

    .line 1277
    const-string v1, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1279
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V

    .line 1280
    const/16 v2, 0x14

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1287
    const-string v1, "StatusBarPolicy"

    invoke-virtual {v0, v7, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1292
    :cond_1
    if-ne p2, v7, :cond_2

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10404c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1300
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x1090078

    invoke-static {v0, v2, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1302
    const v0, 0x1020258

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1306
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1307
    const v1, 0x10404bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1308
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1309
    const v1, 0x104000a

    invoke-virtual {v0, v1, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1312
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1313
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1314
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1315
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    .line 1317
    return-void

    .line 1298
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x10404be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1281
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

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1142
    if-eqz v0, :cond_2

    .line 1144
    const/4 v1, 0x6

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1145
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

    .line 1146
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

    .line 1266
    :cond_1
    :goto_0
    return-void

    .line 1152
    :cond_2
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1153
    const-string v0, "StatusBarPolicy"

    const-string v0, "No LowBattery popup because factory mode"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->closeLastBatteryView()V

    .line 1170
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1177
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1217
    const-string v1, "power_sounds_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1220
    const-string v1, "low_battery_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    if-eqz v0, :cond_1

    .line 1223
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

    .line 1224
    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1226
    if-nez v0, :cond_7

    .line 1227
    const-string v0, "StatusBarPolicy"

    const-string v0, "notifyFullBatteryNotification : fail to get NotificationManager reference"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1173
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1180
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v2, 0x7f030001

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1181
    const v0, 0x7f090003

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1186
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1187
    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1188
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1189
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1190
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1192
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    const/high16 v2, 0x5880

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1198
    const v2, 0x7f070008

    new-instance v3, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$2;-><init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1209
    :cond_6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1211
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1212
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1213
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1231
    :cond_7
    const-string v2, " "

    .line 1232
    const-string v3, " "

    .line 1234
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    if-nez v1, :cond_8

    .line 1235
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    .line 1236
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    const v4, 0x1080020

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 1237
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 1238
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iput v7, v1, Landroid/app/Notification;->flags:I

    .line 1239
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1242
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1243
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 1244
    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    const-string v4, "system/media/audio/ui/TW_Low_Battery.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1250
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1251
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1253
    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1255
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1246
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget v4, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 1247
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryNotification:Landroid/app/Notification;

    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->defaults:I

    goto :goto_3
.end method

.method private turnOnScreenWithForce()V
    .locals 5

    .prologue
    .line 2420
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 2422
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2425
    :goto_0
    return-void

    .line 2423
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final updateAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 924
    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 925
    .local v0, alarmSet:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 926
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

    .line 937
    const-string v0, "icon-small"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 938
    const-string v1, "level"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 939
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "battery"

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 941
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    .line 942
    :goto_0
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 951
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 953
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    .line 954
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryLevel:I

    .line 956
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    if-eqz v0, :cond_0

    .line 957
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryFirst:Z

    .line 971
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIntent:Landroid/content/Intent;

    .line 973
    const-string v0, "status"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 974
    const-string v1, "health"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 975
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryHealth:I

    .line 976
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

    .line 978
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsAuthBattery:Z

    if-eqz v2, :cond_1

    .line 980
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 982
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 983
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->AuthBattery_WL:Landroid/os/PowerManager$WakeLock;

    .line 987
    :cond_1
    if-ne v0, v8, :cond_7

    .line 988
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    .line 989
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 997
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-eqz v0, :cond_4

    .line 998
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 999
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->removeFullChargeNotification()V

    .line 1001
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1003
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1050
    :cond_5
    :goto_1
    return-void

    :cond_6
    move v0, v5

    .line 941
    goto/16 :goto_0

    .line 1006
    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_a

    .line 1007
    if-eq v1, v8, :cond_8

    const/4 v0, 0x7

    if-eq v1, v0, :cond_8

    if-ne v1, v9, :cond_5

    .line 1011
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_9

    .line 1012
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    if-nez v0, :cond_9

    .line 1013
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->playTone(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1015
    const-string v2, "StatusBarPolicy"

    invoke-virtual {v0, v9, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1017
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showDisChargePopup(ZI)V

    .line 1021
    :cond_9
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    goto :goto_1

    .line 1024
    :cond_a
    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    .line 1025
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    if-nez v0, :cond_b

    .line 1026
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsFullCharged:Z

    .line 1027
    #invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->addFullChargeNotification()V

    .line 1029
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1031
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 1034
    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    .line 1035
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsDisCharged:Z

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1040
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_e

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1042
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWL:Landroid/os/PowerManager$WakeLock;

    .line 1045
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBattIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 1046
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

    .line 1883
    const v0, 0x7f020027

    .line 1884
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1885
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1886
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1887
    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    .line 1905
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    if-eq v1, v5, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothPbapState:I

    if-ne v1, v5, :cond_1

    .line 1907
    :cond_0
    const v0, 0x7f020028

    .line 1919
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v6, v0, v3, v3}, Landroid/app/StatusBarManager;->setIconWithVisible(Ljava/lang/String;IIZ)V

    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "bluetooth"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothEnabled:Z

    invoke-virtual {v0, v6, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1922
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1887
    goto :goto_0

    .line 1888
    :cond_4
    const-string v2, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1889
    const-string v1, "android.bluetooth.headset.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothHeadsetState:I

    goto :goto_1

    .line 1891
    :cond_5
    const-string v2, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1892
    new-instance v1, Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 1893
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1894
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1896
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBluetoothA2dpConnected:Z

    goto :goto_1

    .line 1898
    :cond_7
    const-string v2, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1899
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
    .line 1336
    iput p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    .line 1342
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneState:I

    if-nez v0, :cond_2

    .line 1343
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    if-eqz v0, :cond_1

    .line 1344
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryPlugged:Z

    if-nez v0, :cond_0

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showLowBatteryWarning()V

    .line 1347
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1360
    :cond_1
    :goto_0
    return-void

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLowBatteryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryShowLowOnEndCall:Z

    .line 1355
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDisChargeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1356
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

    .line 2238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2312
    :goto_0
    return-void

    .line 2243
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2244
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2248
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sRoamingIndicatorImages_cdma:[I

    .line 2249
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    .line 2250
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v2

    .line 2252
    if-ne v1, v7, :cond_2

    .line 2253
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmaEriIconIndex returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2257
    :cond_2
    if-ne v2, v7, :cond_3

    .line 2258
    const-string v0, "StatusBarPolicy"

    const-string v0, "getCdmeEriIconMode returned null, skipping ERI icon update"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2263
    :cond_3
    if-ne v1, v6, :cond_4

    .line 2265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2268
    :cond_4
    if-nez v1, :cond_6

    .line 2269
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2286
    :cond_5
    :goto_1
    if-ne v1, v7, :cond_9

    .line 2288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "cdma_eri"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2272
    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 2273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    const v2, 0x7f02008f

    invoke-virtual {v0, v4, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2276
    :cond_7
    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 2278
    if-lez v2, :cond_8

    .line 2279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    const v2, 0x7f020026

    invoke-virtual {v0, v4, v2, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2284
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "cdma_eri"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2281
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "cdma_eri"

    aget v0, v0, v1

    invoke-virtual {v2, v4, v0, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_2

    .line 2311
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

    .line 1441
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1443
    const-string v1, "inetCondition"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1445
    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    move v1, v4

    .line 1447
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1491
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1445
    goto :goto_0

    .line 1449
    :sswitch_0
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_MOBILE"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1451
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V

    .line 1452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1456
    :sswitch_1
    const-string v2, "StatusBarPolicy"

    const-string v2, "updateConnectivity-TYPE_WIFI"

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1458
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1459
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1461
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v6, :cond_1

    .line 1462
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    aget v0, v0, v3

    .line 1466
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1478
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V

    goto :goto_1

    .line 1464
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    .line 1470
    :cond_2
    iput v6, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1471
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1472
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v0, v0, v3

    aget v0, v0, v3

    .line 1474
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1476
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v5, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1481
    :sswitch_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    .line 1482
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1483
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    .line 1484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    invoke-virtual {v0, v1, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1488
    :goto_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateWiMAX(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1486
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxConnected:Z

    goto :goto_4

    .line 1447
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

    .line 1795
    .line 1797
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1799
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    .line 1800
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_2

    .line 1801
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_0

    .line 1812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1815
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    .line 1850
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1852
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1858
    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    if-eq v1, v0, :cond_1

    .line 1859
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1860
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconVisible:Z

    .line 1862
    :cond_1
    return-void

    .line 1803
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_0

    .line 1806
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_0

    .line 1809
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1817
    goto :goto_1

    .line 1820
    :cond_3
    const v0, 0x7f020081

    .line 1821
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1825
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    if-ne v0, v2, :cond_5

    .line 1826
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    packed-switch v0, :pswitch_data_1

    .line 1840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v3

    .line 1843
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "data_connection"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    move v0, v4

    goto :goto_1

    .line 1828
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v4

    goto :goto_3

    .line 1831
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v2

    goto :goto_3

    .line 1834
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    .line 1837
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    goto :goto_3

    .line 1845
    :cond_5
    iput v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    move v0, v3

    .line 1846
    goto :goto_1

    .line 1853
    :catch_0
    move-exception v3

    .line 1855
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1826
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
    .line 1757
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

    .line 1758
    packed-switch p1, :pswitch_data_0

    .line 1788
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    .line 1791
    :goto_0
    return-void

    .line 1760
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_e:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1763
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1768
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_0

    .line 1769
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_h:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1771
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_3g:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1776
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1779
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_1x:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1785
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sDataNetType_evdo:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataIconList:[I

    goto :goto_0

    .line 1758
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

    .line 2170
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2171
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2175
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x10802e3

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2179
    const-string v0, "LBSsettings"

    const-string v0, "hide lbs and e911 icons // GPS fixed"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v6, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2206
    :goto_0
    return-void

    .line 2181
    :cond_0
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 2183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v6, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2185
    const-string v0, "LBSsettings"

    const-string v0, "show lbs and e911 icons // GPS is off"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2188
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    const v1, 0x7f020071

    invoke-virtual {v0, v4, v1, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "gps"

    invoke-virtual {v0, v4, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "lbs"

    invoke-virtual {v0, v6, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private final updateLBS(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2227
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2228
    const-string v0, "lbsEnabled"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->checkLBSStatus()Z

    move-result v1

    .line 2231
    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2233
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "lbs"

    sget-object v4, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sLBSImages:[I

    aget v4, v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2234
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

    .line 2235
    return-void

    :cond_0
    move v1, v5

    .line 2231
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

    .line 1591
    .line 1594
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1600
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hasService()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1601
    :cond_0
    const-string v0, "StatusBarPolicy"

    const-string v0, "updateSignalStrength: No SVC"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1604
    const v0, 0x7f02009d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1608
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1690
    :goto_1
    return-void

    .line 1606
    :cond_1
    const v0, 0x7f02009e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    goto :goto_0

    .line 1612
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v0

    .line 1648
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1649
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_r:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 1681
    :goto_2
    if-le v1, v7, :cond_3

    .line 1682
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

    .line 1687
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

    .line 1688
    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    .line 1689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "phone_signal"

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mPhoneSignalIconId:I

    invoke-virtual {v0, v5, v1, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1651
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    .line 1656
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sSignalImages_vzw:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    .line 1661
    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "phone_signal"

    invoke-virtual {v0, v5, v4}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1675
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getCdmaLevel()I

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_2

    .line 1664
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
    .line 1537
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1538
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1539
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1558
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

    .line 1559
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V

    .line 1560
    return-void

    .line 1541
    :cond_0
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1542
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1544
    :cond_1
    const-string v1, "LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1545
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    const-string v1, "PIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1547
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1549
    :cond_2
    const-string v1, "PUK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1550
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1553
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_0

    .line 1556
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

    .line 929
    const-string v0, "active"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 930
    const-string v1, "failing"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 931
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "sync_active"

    invoke-virtual {v1, v2, v0}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 934
    return-void
.end method

.method private final updateTTY(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const-string v3, "tty"

    .line 2209
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2210
    const-string v0, "ttyEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2214
    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const v1, 0x7f0200a0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "tty"

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2224
    :goto_0
    return-void

    .line 2222
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

    .line 1865
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1866
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1867
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_3

    :cond_0
    move v1, v2

    .line 1869
    :goto_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02008d

    .line 1873
    :goto_1
    if-eqz v1, :cond_1

    .line 1874
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "volume"

    invoke-virtual {v2, v5, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 1876
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    if-eq v1, v0, :cond_2

    .line 1877
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "volume"

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1878
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mVolumeVisible:Z

    .line 1880
    :cond_2
    return-void

    :cond_3
    move v1, v4

    .line 1867
    goto :goto_0

    .line 1869
    :cond_4
    const v0, 0x7f02008c

    goto :goto_1
.end method

.method private final updateWiMAX(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f02006e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "wimax"

    .line 1993
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1996
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1997
    const-string v0, "wimax_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1999
    packed-switch v0, :pswitch_data_0

    .line 2031
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wimax"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    invoke-virtual {v0, v5, v1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2032
    return-void

    .line 2001
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 2004
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWimaxEnabled:Z

    goto :goto_0

    .line 2007
    :cond_1
    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2008
    const-string v0, "newSignalLevel"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    goto :goto_0

    .line 2009
    :cond_2
    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    const-string v0, "WimaxState"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    .line 2012
    const-string v0, "WimaxStateDetail"

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2016
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxState:I

    packed-switch v1, :pswitch_data_1

    :pswitch_3
    move v0, v4

    .line 2029
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wimax"

    invoke-virtual {v1, v5, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 2019
    goto :goto_1

    .line 2021
    :pswitch_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 2022
    const v0, 0x7f02006f

    goto :goto_1

    .line 2025
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWimaxSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWimaxSignal:I

    aget v0, v0, v1

    goto :goto_1

    .line 1999
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2016
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

    .line 1925
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1926
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1928
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1931
    :goto_0
    if-nez v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1990
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 1928
    goto :goto_0

    .line 1947
    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1949
    const-string v0, "newRssi"

    const/16 v1, -0xc8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1950
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    aget-object v1, v1, v3

    array-length v1, v1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1952
    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-eq v0, v1, :cond_0

    .line 1953
    iput v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1954
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    if-eqz v1, :cond_3

    .line 1955
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    .line 1956
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi"

    invoke-virtual {v1, v4, v0, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    goto :goto_1

    .line 1958
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1966
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1970
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1971
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1972
    iget v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    if-ne v0, v5, :cond_5

    .line 1979
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi"

    invoke-virtual {v0, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1975
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->sWifiSignalImages:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    aget v0, v0, v1

    goto :goto_2

    .line 1981
    :cond_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mLastWifiSignalLevel:I

    .line 1982
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mIsWifiConnected:Z

    .line 1986
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

    const v7, 0x7f02009f

    const/4 v6, 0x0

    const-string v2, "StatusBarPolicy"

    const-string v4, "wifi_ap"

    .line 2058
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2059
    const-string v1, "StatusBarPolicy"

    const-string v1, "action : WIFI_AP_STATE_CHANGED_ACTION"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2064
    const-string v0, "wifi_state"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2065
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2066
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_ENABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v0, v0, v6

    .line 2068
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi_ap"

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2069
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi_ap"

    invoke-virtual {v1, v4, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2072
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-void

    .line 2075
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2076
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiApSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2077
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2078
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2080
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020076

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2083
    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v2, v2, v6

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 2084
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2085
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f020076

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2086
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2088
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v0, :cond_2

    .line 2089
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2090
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v1, v1, v6

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2091
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2092
    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2093
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_DISABLED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v1, "wifi_ap"

    invoke-virtual {v0, v4, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2098
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2099
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    goto/16 :goto_0

    .line 2102
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2103
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_SUSPENDED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    const v0, 0x7f020075

    .line 2107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v2, "wifi_ap"

    invoke-virtual {v1, v4, v0, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2108
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2109
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v0, :cond_5

    .line 2110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2111
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f020075

    invoke-virtual {v0, v8, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2112
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2121
    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2122
    const-string v0, "StatusBarPolicy"

    const-string v0, "action : WifiManager.WIFI_AP_STATE_UNSUSPENDED"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 2125
    if-gez v0, :cond_7

    move v0, v6

    .line 2126
    :cond_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v1, v1, v0

    .line 2127
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi_ap"

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2128
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 2129
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v1, :cond_8

    .line 2130
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2131
    :cond_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v0, v2, v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2132
    sget-object v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2136
    :cond_9
    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->getDhcpClientNum()I

    move-result v0

    .line 2139
    const/4 v1, 0x5

    if-le v0, v1, :cond_a

    const/4 v0, 0x5

    .line 2142
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v1, v1, v0

    .line 2143
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi_ap"

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2144
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mService:Landroid/app/StatusBarManager;

    const-string v3, "wifi_ap"

    invoke-virtual {v2, v4, v1, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;II)V

    .line 2145
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 2146
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    if-nez v1, :cond_b

    .line 2147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->createHotspotNotification()V

    .line 2148
    :cond_b
    sget-object v1, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->hotspotNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v2, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mWifiApOnIcon:[I

    aget v0, v2, v0

    invoke-virtual {v1, v8, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2149
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

    .line 900
    const-string v0, "sys/class/power_supply/battery/auth_battery"

    .line 905
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x1000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 907
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 909
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 915
    :goto_0
    if-nez v0, :cond_0

    .line 917
    const-string v0, "StatusBarPolicy"

    const-string v0, "auth battery fail"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AUTHBATTERY_ALERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 921
    :cond_0
    return-void

    .line 910
    :catch_0
    move-exception v1

    .line 911
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

    .line 912
    const/4 v0, 0x0

    goto :goto_0
.end method
