.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;
    }
.end annotation


# static fields
.field private static final ALERT_ON_CALL_OFF:I = 0x0

.field private static final ALERT_ON_CALL_SOUND:I = 0x1

.field private static final ALERT_ON_CALL_VIBRA:I = 0x3

.field private static final ALERT_ON_CALL_VOICE:I = 0x2

.field private static final BATTERY_BLINK_OFF:I = 0xb3b

.field private static final BATTERY_BLINK_ON:I = 0x7d

.field private static final BATTERY_FULL_ARGB:I = -0xff0100

.field private static final BATTERY_LOW_ARGB:I = -0x10000

.field private static final BATTERY_MEDIUM_ARGB:I = -0x100

.field private static final DBG:Z = false

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final LONG_DELAY:I = 0xdac

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final NOTIFICATION_CMAS_ID:I = 0x41c

.field public static final PLUGGED_TYPE_AC:I = 0x1

.field public static final PLUGGED_TYPE_BATTERY:I = 0x0

.field public static final PLUGGED_TYPE_UNKNOWN:I = -0x1

.field public static final PLUGGED_TYPE_USB:I = 0x2

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"


# instance fields
.field private mAdbNotification:Landroid/app/Notification;

.field private mAdbNotificationShown:Z

.field final mAm:Landroid/app/IActivityManager;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mBatteryCharging:Z

.field private mBatteryFull:Z

.field private mBatteryLight:Lcom/android/server/LightsService$Light;

.field private mBatteryLow:Z

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDisabledNotifications:I

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLightsService:Lcom/android/server/LightsService;

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field private mPendingPulseNotification:Z

.field private mPluggedType:I

.field private mProvisionStateObserver:Landroid/database/ContentObserver;

.field private mScreenOn:Z

.field private mSound:Lcom/android/server/NotificationPlayer;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/Vibrator;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .locals 10
    .parameter "context"
    .parameter "statusBar"
    .parameter "lights"

    .prologue
    .line 473
    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    .line 108
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 127
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 130
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    .line 131
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    .line 139
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    .line 142
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 153
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mProvisionStateObserver:Landroid/database/ContentObserver;

    .line 160
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/NotificationManagerService;->mPluggedType:I

    .line 278
    new-instance v6, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v6, p0}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 359
    new-instance v6, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v6, p0}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 474
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    .line 475
    iput-object p3, p0, Lcom/android/server/NotificationManagerService;->mLightsService:Lcom/android/server/LightsService;

    .line 476
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 477
    new-instance v6, Lcom/android/server/NotificationPlayer;

    const-string v7, "NotificationService"

    invoke-direct {v6, v7}, Lcom/android/server/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    .line 478
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v6, p1}, Lcom/android/server/NotificationPlayer;->setUsesWakeLock(Landroid/content/Context;)V

    .line 479
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 480
    new-instance v6, Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    .line 482
    iput-object p2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    .line 483
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-virtual {p2, v6}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    .line 485
    const/4 v6, 0x3

    invoke-virtual {p3, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    .line 486
    const/4 v6, 0x4

    invoke-virtual {p3, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    .line 487
    const/4 v6, 0x5

    invoke-virtual {p3, v6}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    .line 489
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 490
    .local v4, resources:Landroid/content/res/Resources;
    const v6, 0x1060035

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 492
    const v6, 0x10e000d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 494
    const v6, 0x10e000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 502
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 503
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 505
    .local v3, provState:I
    if-lez v3, :cond_1

    .line 506
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    .line 534
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 535
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v6, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v6, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v6, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v6, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v6, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 552
    .local v2, pkgFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v6, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v6, "package"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 556
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 558
    .local v5, sdFilter:Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    new-instance v1, Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, p0, v6}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .line 561
    .local v1, observer:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    .line 562
    return-void

    .line 507
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #observer:Lcom/android/server/NotificationManagerService$SettingsObserver;
    .end local v2           #pkgFilter:Landroid/content/IntentFilter;
    .end local v5           #sdFilter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 509
    new-instance v6, Lcom/android/server/NotificationManagerService$3;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v6, p0, v7}, Lcom/android/server/NotificationManagerService$3;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mProvisionStateObserver:Landroid/database/ContentObserver;

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mProvisionStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 529
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mProvisionStateObserver:Landroid/database/ContentObserver;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/database/ContentObserver;->onChange(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLights()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->updateAdbNotification(Z)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/NotificationManagerService;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mProvisionStateObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mProvisionStateObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 6
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"

    .prologue
    .line 1093
    const/16 v2, 0xabf

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1095
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1096
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1097
    .local v0, index:I
    if-ltz v0, :cond_2

    .line 1098
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1100
    .local v1, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    .line 1101
    monitor-exit v2

    .line 1113
    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_0
    return-void

    .line 1103
    .restart local v1       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    iget-object v3, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p5

    if-eqz v3, :cond_1

    .line 1104
    monitor-exit v2

    goto :goto_0

    .line 1112
    .end local v0           #index:I
    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1107
    .restart local v0       #index:I
    .restart local v1       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1109
    invoke-direct {p0, v1}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1110
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1112
    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 1042
    iget-object v2, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_0

    .line 1043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1045
    .local v0, identity:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1048
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1050
    iput-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1054
    .end local v0           #identity:J
    :cond_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v2, p1, :cond_1

    .line 1055
    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1058
    .restart local v0       #identity:J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2}, Lcom/android/server/NotificationPlayer;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1061
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1066
    .end local v0           #identity:J
    :cond_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v2, p1, :cond_2

    .line 1067
    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1068
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1070
    .restart local v0       #identity:J
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1073
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1078
    .end local v0           #identity:J
    :cond_2
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1079
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v2, p1, :cond_3

    iget v2, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    const/16 v3, 0x41c

    if-ne v2, v3, :cond_3

    .line 1080
    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1083
    :cond_3
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_4

    .line 1084
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1085
    :cond_4
    return-void

    .line 1048
    .restart local v0       #identity:J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1061
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1073
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private cancelToastLocked(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 662
    .local v1, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 670
    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 671
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    .line 677
    :cond_0
    return-void

    .line 663
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 664
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doPlayDefault()V
    .locals 7

    .prologue
    .line 1448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1450
    .local v0, identity:J
    :try_start_0
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doPlayDefault - URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1455
    return-void

    .line 1453
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private doVibrateDefault(ZLandroid/app/Notification;)V
    .locals 3
    .parameter "useDefaultVibrate"
    .parameter "n"

    .prologue
    .line 1460
    if-eqz p1, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateNotification(I)V

    .line 1472
    :goto_0
    return-void

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p2, Landroid/app/Notification;->vibrate:[J

    iget v2, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getAlertOnCallMode()I
    .locals 4

    .prologue
    .line 1431
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1433
    .local v0, alertOnCallMode:I
    return v0
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 691
    :try_start_0
    iget-object v2, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 692
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 693
    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    .line 695
    :cond_0
    monitor-exit v1

    .line 696
    return-void

    .line 695
    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private hasSoundNotification(Landroid/app/Notification;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 1444
    iget-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "baseContext"
    .parameter "packageName"
    .parameter "id"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, c:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 173
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 185
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 187
    .local v2, r:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 189
    :goto_1
    return-object v3

    .line 174
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 176
    goto :goto_0

    .line 178
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    goto :goto_0

    .line 188
    .restart local v2       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .line 189
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    goto :goto_1
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 1288
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1289
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1290
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1291
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-nez p2, :cond_1

    .line 1292
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1300
    :cond_2
    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    .line 1304
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return v4

    :cond_3
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .parameter "pkg"
    .parameter "callback"

    .prologue
    .line 701
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 702
    .local v0, cbak:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 703
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 704
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 705
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 706
    .local v4, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    move v5, v1

    .line 710
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_1
    return v5

    .line 704
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private isOffhook()Z
    .locals 6

    .prologue
    const-string v5, "NotificationService"

    .line 1415
    const/4 v2, 0x0

    .line 1416
    .local v2, result:Z
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1419
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 1420
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    .line 1427
    :goto_0
    return v2

    .line 1422
    :cond_0
    const-string v3, "NotificationService"

    const-string v4, "Failed to get ITelephony interface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1425
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    const-string v3, "RemoteException from isOffhook()"

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private keepProcessAliveLocked(I)V
    .locals 8
    .parameter "pid"

    .prologue
    .line 716
    const/4 v4, 0x0

    .line 717
    .local v4, toastCount:I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 718
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 719
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 721
    .local v3, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    .line 722
    add-int/lit8 v4, v4, 0x1

    .line 719
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 726
    .end local v3           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v5, v6, p1, v7}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_2
    return-void

    .line 726
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 727
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private play_in_intervals(Landroid/content/Context;Landroid/net/Uri;ILandroid/app/Notification;)V
    .locals 7
    .parameter "mContext"
    .parameter "uri"
    .parameter "audioStreamType"
    .parameter "notification"

    .prologue
    const-wide/16 v2, 0x0

    .line 992
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 994
    iget-wide v0, p4, Landroid/app/Notification;->iRepeat_Time:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget-wide v0, p4, Landroid/app/Notification;->iRepeat_Time:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    .line 1002
    move-object v6, p1

    .line 1004
    .local v6, mContext_local:Landroid/content/Context;
    const-string v0, "Notification Manager Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification Repeat Time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p4, Landroid/app/Notification;->iRepeat_Time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/NotificationManagerService$4;

    invoke-direct {v1, p0, v6, p4}, Lcom/android/server/NotificationManagerService$4;-><init>(Lcom/android/server/NotificationManagerService;Landroid/content/Context;Landroid/app/Notification;)V

    iget-wide v2, p4, Landroid/app/Notification;->iRepeat_Time:J

    iget-wide v4, p4, Landroid/app/Notification;->iRepeat_Time:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    .locals 5
    .parameter "r"
    .parameter "immediate"

    .prologue
    .line 681
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 682
    .local v2, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    move-wide v0, v3

    .line 683
    .local v0, delay:J
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 684
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 685
    return-void

    .line 682
    .end local v0           #delay:J
    :cond_0
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xdac

    :goto_1
    int-to-long v3, v3

    move-wide v0, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x7d0

    goto :goto_1
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "notification"
    .parameter "packageName"

    .prologue
    .line 1022
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 1023
    .local v1, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1027
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1029
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1030
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1031
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 1032
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1033
    .local v2, tickerText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1034
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 634
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 635
    .local v2, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_0

    .line 638
    :try_start_0
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 639
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_0
    return-void

    .line 641
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 642
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 646
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 647
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 649
    :cond_1
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 650
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 651
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .restart local v2       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    goto :goto_0

    .line 653
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateAdbNotification(Z)V
    .locals 12
    .parameter "adbEnabled"

    .prologue
    const/4 v11, 0x0

    const v10, 0x104046a

    const/4 v9, 0x0

    const-string v8, "notification"

    .line 1311
    if-eqz p1, :cond_3

    .line 1312
    const-string v6, "0"

    const-string v7, "persist.adb.notify"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    if-nez v6, :cond_0

    .line 1316
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1318
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 1319
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1320
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1322
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x104046b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1325
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    if-nez v6, :cond_2

    .line 1326
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    .line 1327
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    const v7, 0x10802b8

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 1328
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 1329
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 1334
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput v9, v6, Landroid/app/Notification;->defaults:I

    .line 1335
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput-object v11, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1336
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput-object v11, v6, Landroid/app/Notification;->vibrate:[J

    .line 1342
    :cond_2
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1344
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x1020

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1351
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.settings"

    const-string v8, "com.android.settings.DevelopmentSettings"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1353
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1356
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1358
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    .line 1359
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotification:Landroid/app/Notification;

    invoke-virtual {v2, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1365
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #pi:Landroid/app/PendingIntent;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    if-eqz v6, :cond_0

    .line 1366
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1368
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    if-eqz v2, :cond_0

    .line 1369
    iput-boolean v9, p0, Lcom/android/server/NotificationManagerService;->mAdbNotificationShown:Z

    .line 1370
    invoke-virtual {v2, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateLights()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1217
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1218
    monitor-exit v0

    .line 1219
    return-void

    .line 1218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateLightsLocked()V
    .locals 9

    .prologue
    const/high16 v8, -0x1

    const/4 v7, 0x1

    .line 1225
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLow:Z

    if-eqz v4, :cond_6

    .line 1226
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v4, :cond_5

    .line 1227
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v8}, Lcom/android/server/LightsService$Light;->setColor(I)V

    .line 1244
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v4, :cond_1

    .line 1245
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mPendingPulseNotification:Z

    .line 1249
    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v4, :cond_3

    .line 1251
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1252
    .local v3, n:I
    if-lez v3, :cond_2

    .line 1253
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    sub-int v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1255
    :cond_2
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-nez v4, :cond_3

    .line 1256
    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mPendingPulseNotification:Z

    .line 1262
    .end local v3           #n:I
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mPendingPulseNotification:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-eqz v4, :cond_9

    .line 1263
    :cond_4
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 1282
    :goto_1
    return-void

    .line 1230
    :cond_5
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v5, 0x7d

    const/16 v6, 0xb3b

    invoke-virtual {v4, v8, v7, v5, v6}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    .line 1233
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryCharging:Z

    if-eqz v4, :cond_8

    .line 1234
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryFull:Z

    if-eqz v4, :cond_7

    .line 1235
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const v5, -0xff0100

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 1237
    :cond_7
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    const/16 v5, -0x100

    invoke-virtual {v4, v5}, Lcom/android/server/LightsService$Light;->setColor(I)V

    goto :goto_0

    .line 1240
    :cond_8
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBatteryLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_0

    .line 1265
    :cond_9
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    .line 1266
    .local v0, ledARGB:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v4, Landroid/app/Notification;->ledOnMS:I

    .line 1267
    .local v2, ledOnMS:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->ledOffMS:I

    .line 1268
    .local v1, ledOffMS:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    .line 1269
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    .line 1270
    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 1271
    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 1273
    :cond_a
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v4, :cond_b

    .line 1275
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v0, v7, v2, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_1

    .line 1279
    :cond_b
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/LightsService$Light;->pulse(II)V

    goto :goto_1
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1379
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1380
    monitor-exit v0

    .line 1381
    return-void

    .line 1380
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method cancelAll()V
    .locals 8

    .prologue
    .line 1190
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1191
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1192
    .local v0, N:I
    const/4 v5, 0x1

    sub-int v2, v0, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1193
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1195
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x22

    if-nez v5, :cond_1

    .line 1197
    iget-object v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 1199
    :try_start_1
    iget-object v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1206
    :cond_0
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1207
    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1192
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1203
    .local v1, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canceled PendingIntent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1212
    .end local v0           #N:I
    .end local v1           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1211
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1212
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1213
    return-void
.end method

.method public cancelAllNotifications(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1169
    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 1170
    return-void
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z
    .locals 8
    .parameter "pkg"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "doit"

    .prologue
    const/4 v7, 0x1

    .line 1121
    const/16 v4, 0xac0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1123
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1124
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1125
    .local v0, N:I
    const/4 v1, 0x0

    .line 1126
    .local v1, canceledSomething:Z
    sub-int v2, v0, v7

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    .line 1127
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1128
    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/2addr v5, p2

    if-eq v5, p2, :cond_1

    .line 1126
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/2addr v5, p3

    if-nez v5, :cond_0

    .line 1134
    iget-object v5, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1137
    const/4 v1, 0x1

    .line 1138
    if-nez p4, :cond_2

    .line 1139
    monitor-exit v4

    move v4, v7

    .line 1147
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_2
    return v4

    .line 1141
    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1142
    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    goto :goto_1

    .line 1148
    .end local v0           #N:I
    .end local v1           #canceledSomething:Z
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1144
    .restart local v0       #N:I
    .restart local v1       #canceledSomething:Z
    .restart local v2       #i:I
    :cond_3
    if-eqz v1, :cond_4

    .line 1145
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 1147
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    goto :goto_2
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "id"

    .prologue
    .line 1153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NotificationManagerService;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1154
    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1157
    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    move v5, v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1162
    return-void

    .line 1159
    :cond_0
    const/16 v0, 0x40

    move v5, v0

    goto :goto_0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .parameter "pkg"
    .parameter "callback"

    .prologue
    const-string v6, "NotificationService"

    const-string v5, " callback="

    .line 611
    const-string v3, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelToast pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callback="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 614
    :cond_0
    const-string v3, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not cancelling notification. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callback="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 619
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 621
    .local v0, callingId:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .line 622
    .local v2, index:I
    if-ltz v2, :cond_2

    .line 623
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 628
    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    monitor-exit v3

    goto :goto_0

    .end local v0           #callingId:J
    .end local v2           #index:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 625
    .restart local v0       #callingId:J
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 628
    .end local v2           #index:I
    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkIncomingCall(Ljava/lang/String;)V
    .locals 6
    .parameter "pkg"

    .prologue
    .line 1173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1174
    .local v2, uid:I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    .line 1187
    :cond_0
    return-void

    .line 1178
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1180
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_0

    .line 1181
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1185
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v2, "    "

    const-string v2, "  "

    .line 1478
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    :goto_0
    return-void

    .line 1486
    :cond_0
    const-string v2, "Current Notification Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1491
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1492
    .local v0, N:I
    if-lez v0, :cond_2

    .line 1493
    const-string v2, "  Toast Queue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1495
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v4, "    "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1494
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1497
    :cond_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    .end local v1           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1503
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1504
    if-lez v0, :cond_4

    .line 1505
    const-string v2, "  Notification List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 1507
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1506
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1500
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1509
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1513
    if-lez v0, :cond_6

    .line 1514
    const-string v2, "  Lights List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_5

    .line 1516
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    .line 1515
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1518
    :cond_5
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    .end local v1           #i:I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSound="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisabledNotifications=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 751
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    .line 752
    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V
    .locals 26
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 766
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkIncomingCall(Ljava/lang/String;)V

    .line 770
    const-string v7, "android"

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v7, v0

    monitor-enter v7

    .line 772
    const/16 v16, 0x0

    .line 773
    .local v16, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 774
    .local v13, N:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move v1, v13

    if-ge v0, v1, :cond_1

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v8, v0

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 776
    .local v5, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v8, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 777
    add-int/lit8 v16, v16, 0x1

    .line 778
    const/16 v8, 0x32

    move/from16 v0, v16

    move v1, v8

    if-lt v0, v1, :cond_0

    .line 779
    const-string v8, "NotificationService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package has already posted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " notifications.  Not showing more.  package="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    monitor-exit v7

    .line 989
    .end local v13           #N:I
    .end local v16           #count:I
    .end local v17           #i:I
    :goto_1
    return-void

    .line 774
    .restart local v13       #N:I
    .restart local v16       #count:I
    .restart local v17       #i:I
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 785
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    .end local v13           #N:I
    .end local v16           #count:I
    .end local v17           #i:I
    :cond_2
    const-string v7, "com.android.providers.downloads"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "DownloadManager"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 792
    :cond_3
    const/16 v7, 0xabe

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 795
    :cond_4
    if-eqz p1, :cond_5

    if-nez p6, :cond_6

    .line 796
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null not allowed: pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notification="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 785
    .restart local v16       #count:I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 799
    .end local v16           #count:I
    :cond_6
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->icon:I

    move v7, v0

    if-eqz v7, :cond_8

    .line 800
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object v7, v0

    if-nez v7, :cond_7

    .line 801
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contentView required: pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notification="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 804
    :cond_7
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v7, v0

    if-nez v7, :cond_8

    .line 805
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contentIntent required: pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notification="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 810
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v13, v0

    monitor-enter v13

    .line 811
    :try_start_2
    new-instance v5, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/app/Notification;)V

    .line 813
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v22, 0x0

    .line 815
    .local v22, old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 816
    .local v20, index:I
    if-gez v20, :cond_13

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_9
    :goto_2
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v7, v0

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_a

    .line 831
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v7, v0

    or-int/lit8 v7, v7, 0x22

    move v0, v7

    move-object/from16 v1, p6

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 835
    :cond_a
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->icon:I

    move v7, v0

    if-eqz v7, :cond_15

    .line 836
    new-instance v6, Lcom/android/internal/statusbar/StatusBarNotification;

    iget v10, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->uid:I

    iget v11, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->initialPid:I

    move-object/from16 v7, p1

    move/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V

    .line 838
    .local v6, n:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v22, :cond_14

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object v7, v0

    if-eqz v7, :cond_14

    .line 839
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object v7, v0

    iput-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 840
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v18

    .line 842
    .local v18, identity:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object v7, v0

    iget-object v8, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 845
    :try_start_4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 871
    .end local v6           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v18           #identity:J
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    move v7, v0

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_10

    if-eqz v22, :cond_c

    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v7, v0

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_10

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    move v7, v0

    if-eqz v7, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->getAlertOnCallMode()I

    move-result v7

    if-eqz v7, :cond_10

    .line 878
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object v7, v0

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    .line 881
    .local v14, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    move/from16 v24, v7

    .line 883
    .local v24, useDefaultSound:Z
    :goto_5
    if-nez v24, :cond_e

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v7, v0

    if-eqz v7, :cond_f

    .line 885
    :cond_e
    if-eqz v24, :cond_17

    .line 886
    sget-object v23, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 890
    .local v23, uri:Landroid/net/Uri;
    :goto_6
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v7, v0

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_18

    const/4 v7, 0x1

    move/from16 v21, v7

    .line 892
    .local v21, looping:Z
    :goto_7
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move v7, v0

    if-ltz v7, :cond_19

    .line 893
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move v15, v0

    .line 897
    .local v15, audioStreamType:I
    :goto_8
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 900
    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-eqz v7, :cond_1d

    .line 902
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 903
    const/4 v7, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->getAlertOnCallMode()I

    move-result v8

    if-ne v7, v8, :cond_1a

    .line 904
    const-string v7, "NotificationService"

    const-string v8, "Vib. <1>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object v7, v0

    const/16 v8, 0xe

    const/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    .line 927
    :goto_9
    move-object/from16 v0, p6

    iget-boolean v0, v0, Landroid/app/Notification;->bRepeat:Z

    move v7, v0

    if-eqz v7, :cond_f

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object v7, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object v8, v0

    const/4 v9, 0x5

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->play_in_intervals(Landroid/content/Context;Landroid/net/Uri;ILandroid/app/Notification;)V

    .line 934
    .end local v15           #audioStreamType:I
    .end local v21           #looping:Z
    .end local v23           #uri:Landroid/net/Uri;
    :cond_f
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move v7, v0

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    move/from16 v25, v7

    .line 937
    .local v25, useDefaultVibrate:Z
    :goto_a
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move v7, v0

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_1f

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object v7, v0

    const/16 v8, 0xc

    new-array v8, v8, [J

    fill-array-data v8, :array_0

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 940
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 970
    .end local v14           #audioManager:Landroid/media/AudioManager;
    .end local v24           #useDefaultSound:Z
    .end local v25           #useDefaultVibrate:Z
    :cond_10
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 972
    const/4 v7, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 976
    :cond_11
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v7, v0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_24

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .line 985
    :cond_12
    :goto_c
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 987
    const/4 v7, 0x0

    aput p5, p7, v7

    goto/16 :goto_1

    .line 819
    :cond_13
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v22, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 820
    .restart local v22       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v7, v0

    move-object v0, v7

    move/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 822
    if-eqz v22, :cond_9

    .line 823
    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->flags:I

    move v7, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    move-object v8, v0

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x40

    or-int/2addr v7, v8

    move v0, v7

    move-object/from16 v1, p6

    iput v0, v1, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 985
    .end local v5           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v20           #index:I
    .end local v22           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_1
    move-exception v7

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 845
    .restart local v5       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v6       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .restart local v18       #identity:J
    .restart local v20       #index:I
    .restart local v22       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_2
    move-exception v7

    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 848
    .end local v18           #identity:J
    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-wide v18

    .line 850
    .restart local v18       #identity:J
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object v7, v0

    invoke-virtual {v7, v6}, Lcom/android/server/StatusBarManagerService;->addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/LightsService$Light;->pulse()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 854
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_3
    move-exception v7

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 859
    .end local v6           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v18           #identity:J
    :cond_15
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object v7, v0

    if-eqz v7, :cond_b

    .line 860
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v18

    .line 862
    .restart local v18       #identity:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object v7, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 865
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_4
    move-exception v7

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 881
    .end local v18           #identity:J
    .restart local v14       #audioManager:Landroid/media/AudioManager;
    :cond_16
    const/4 v7, 0x0

    move/from16 v24, v7

    goto/16 :goto_5

    .line 888
    .restart local v24       #useDefaultSound:Z
    :cond_17
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v23, v0

    .restart local v23       #uri:Landroid/net/Uri;
    goto/16 :goto_6

    .line 890
    :cond_18
    const/4 v7, 0x0

    move/from16 v21, v7

    goto/16 :goto_7

    .line 895
    .restart local v21       #looping:Z
    :cond_19
    const/4 v15, 0x5

    .restart local v15       #audioStreamType:I
    goto/16 :goto_8

    .line 906
    :cond_1a
    const/4 v7, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->getAlertOnCallMode()I

    move-result v8

    if-ne v7, v8, :cond_1b

    .line 907
    const-string v7, "NotificationService"

    const-string v8, "No Sound <1>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 909
    :cond_1b
    const-string v7, "NotificationService"

    const-string v8, "Sound <1>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->doPlayDefault()V

    goto/16 :goto_9

    .line 913
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v18

    .line 915
    .restart local v18       #identity:J
    :try_start_b
    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sound <2> - URI:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object v8, v0

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v23

    move/from16 v3, v21

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 918
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_9

    :catchall_5
    move-exception v7

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 924
    .end local v18           #identity:J
    :cond_1d
    const-string v7, "NotificationService"

    const-string v8, "No Sound <2>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 934
    .end local v15           #audioStreamType:I
    .end local v21           #looping:Z
    .end local v23           #uri:Landroid/net/Uri;
    :cond_1e
    const/4 v7, 0x0

    move/from16 v25, v7

    goto/16 :goto_a

    .line 942
    .restart local v25       #useDefaultVibrate:Z
    :cond_1f
    if-nez v25, :cond_20

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object v7, v0

    if-eqz v7, :cond_10

    :cond_20
    const/4 v7, 0x1

    invoke-virtual {v14, v7}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 944
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isOffhook()Z

    move-result v7

    if-eqz v7, :cond_23

    .line 947
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService;->hasSoundNotification(Landroid/app/Notification;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 948
    const/4 v7, 0x3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->getAlertOnCallMode()I

    move-result v8

    if-ne v7, v8, :cond_21

    .line 949
    const-string v7, "NotificationService"

    const-string v8, "Vib. <2>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object v7, v0

    const/16 v8, 0xe

    const/16 v9, 0x7d0

    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrateImmVibe(II)V

    goto/16 :goto_b

    .line 951
    :cond_21
    const/4 v7, 0x2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->getAlertOnCallMode()I

    move-result v8

    if-ne v7, v8, :cond_22

    .line 952
    const-string v7, "NotificationService"

    const-string v8, "No Sound <3>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 954
    :cond_22
    const-string v7, "NotificationService"

    const-string v8, "Sound <3>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->doPlayDefault()V

    goto/16 :goto_b

    .line 959
    :cond_23
    const-string v7, "NotificationService"

    const-string v8, "Vib. <3>"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->doVibrateDefault(ZLandroid/app/Notification;)V

    goto/16 :goto_b

    .line 980
    .end local v14           #audioManager:Landroid/media/AudioManager;
    .end local v24           #useDefaultSound:Z
    .end local v25           #useDefaultVibrate:Z
    :cond_24
    if-eqz v22, :cond_12

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    move-object v7, v0

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_12

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_c

    .line 939
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 8
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    .line 757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V

    .line 759
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 8
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 575
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 576
    :cond_0
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not doing toast. pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " callback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 581
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 582
    .local v2, callingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 585
    .local v0, callingId:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v3

    .line 588
    .local v3, index:I
    if-ltz v3, :cond_3

    .line 589
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .line 590
    .local v4, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    invoke-virtual {v4, p3}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    .line 601
    :goto_1
    if-nez v3, :cond_2

    .line 602
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 605
    :cond_2
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 607
    monitor-exit v5

    goto :goto_0

    .end local v0           #callingId:J
    .end local v2           #callingPid:I
    .end local v3           #index:I
    .end local v4           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 592
    .restart local v0       #callingId:J
    .restart local v2       #callingPid:I
    .restart local v3       #index:I
    :cond_3
    :try_start_3
    new-instance v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    invoke-direct {v4, v2, p1, p2, p3}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .line 593
    .restart local v4       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v3, v6, v7

    .line 595
    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 605
    .end local v3           #index:I
    .end local v4           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_1
    move-exception v6

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getEventContact(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1404
    .local v0, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v1, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEventCount(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 1398
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1399
    .local v0, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v1, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->missedCount:I

    return v1
.end method

.method public getEventIndexWithReq(Ljava/lang/String;I)I
    .locals 5
    .parameter "pkg"
    .parameter "req"

    .prologue
    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, i:I
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1387
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1388
    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v4, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v4, p2, :cond_0

    .line 1389
    monitor-exit v3

    move v3, v0

    .line 1394
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return v3

    .line 1391
    .restart local v2       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1393
    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    monitor-exit v3

    .line 1394
    const/4 v3, -0x1

    goto :goto_1

    .line 1393
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getEventIntent(I)Landroid/app/PendingIntent;
    .locals 2
    .parameter "i"

    .prologue
    .line 1408
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1409
    .local v0, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v1, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object v1
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    .line 567
    return-void
.end method
