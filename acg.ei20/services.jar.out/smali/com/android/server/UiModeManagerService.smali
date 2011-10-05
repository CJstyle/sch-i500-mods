.class Lcom/android/server/UiModeManagerService;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# static fields
.field private static final ACTION_UPDATE_NIGHT_MODE:Ljava/lang/String; = "com.android.server.action.UPDATE_NIGHT_MODE"

.field private static final FACTOR_GMT_OFFSET_LONGITUDE:D = 0.004166666666666667

.field private static final KEY_LAST_UPDATE_INTERVAL:Ljava/lang/String; = "LAST_UPDATE_INTERVAL"

.field private static final LOCATION_UPDATE_DISTANCE_METER:F = 20000.0f

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MAX:J = 0xdbba0L

.field private static final LOCATION_UPDATE_ENABLE_INTERVAL_MIN:J = 0x1388L

.field private static final LOCATION_UPDATE_MS:J = 0x5265c00L

.field private static final LOG:Z = false

.field private static final MIN_LOCATION_UPDATE_MS:J = 0x1b7740L

.field private static final MSG_ENABLE_LOCATION_UPDATES:I = 0x1

.field private static final MSG_GET_NEW_LOCATION_UPDATE:I = 0x2

.field private static final MSG_UPDATE_TWILIGHT:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnabled:Z

.field private final mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private mCurUiMode:I

.field private final mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mEmptyLocationListener:Landroid/location/LocationListener;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field private mLocation:Landroid/location/Location;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field final mLock:Ljava/lang/Object;

.field private mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSystemReady:Z

.field private final mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    .line 84
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 86
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 87
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 89
    iput v7, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 90
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 91
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    .line 96
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 97
    iput v6, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 99
    iput-boolean v6, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 100
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 125
    new-instance v2, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    new-instance v2, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v2, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance v2, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v2, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v2, Lcom/android/server/UiModeManagerService$6;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$6;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    .line 255
    new-instance v2, Lcom/android/server/UiModeManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$7;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    .line 628
    new-instance v2, Lcom/android/server/UiModeManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/UiModeManagerService$8;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    .line 314
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    .line 316
    const-string v2, "uimode"

    invoke-static {v2, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 318
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 320
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 322
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mTwilightUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.action.UPDATE_NIGHT_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mUpdateLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 333
    .local v1, powerManager:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    sget-object v3, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 335
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v7, :cond_0

    move v2, v7

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v7, :cond_1

    move v2, v7

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mDeskModeKeepsScreenOn:Z

    .line 342
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ui_night_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 344
    return-void

    :cond_0
    move v2, v6

    .line 337
    goto :goto_0

    :cond_1
    move v2, v6

    .line 339
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/UiModeManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/UiModeManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/UiModeManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private adjustStatusBarCarModeLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 587
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v3, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 602
    :cond_1
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_2

    .line 603
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 607
    :cond_2
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_3

    .line 608
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 609
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    .local v0, carModeOffIntent:Landroid/content/Intent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 612
    .local v1, n:Landroid/app/Notification;
    const v2, 0x10802b0

    iput v2, v1, Landroid/app/Notification;->icon:I

    .line 613
    const/4 v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 614
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 615
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    .line 616
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10404cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 621
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 626
    .end local v0           #carModeOffIntent:Landroid/content/Intent;
    .end local v1           #n:Landroid/app/Notification;
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v3, v6

    .line 597
    goto :goto_0

    .line 623
    :cond_5
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "category"

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    return-object v0
.end method


# virtual methods
.method public disableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 349
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 352
    :cond_0
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 825
    :try_start_0
    const-string v1, "Current UI Mode Service state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const-string v1, "  mDockState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 827
    const-string v1, " mLastBroadcastState="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 828
    const-string v1, "  mNightMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 829
    const-string v1, " mCarModeEnabled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 830
    const-string v1, " mComputedNightMode="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 831
    const-string v1, "  mCurUiMode=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    const-string v1, " mSetUiMode=0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const-string v1, "  mHoldingConfiguration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 834
    const-string v1, " mSystemReady="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 835
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_1

    .line 836
    const-string v1, "  mLocation="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 838
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableCarMode(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 358
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 359
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 361
    :cond_0
    monitor-exit v0

    .line 362
    return-void

    .line 361
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentModeType()I
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v1, v1, 0xf

    monitor-exit v0

    return v1

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNightMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    iget v0, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    return v0
.end method

.method isDoingNightMode()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setCarModeLocked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 414
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 416
    :cond_0
    return-void
.end method

.method public setNightMode(I)V
    .locals 6
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 372
    packed-switch p1, :pswitch_data_0

    .line 378
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 392
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 380
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    monitor-exit v2

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    iget v3, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v3, p1, :cond_1

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 386
    .local v0, ident:J
    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ui_night_mode"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 389
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 390
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 392
    .end local v0           #ident:J
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method systemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 402
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    .line 403
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 404
    iget-object v1, p0, Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 405
    monitor-exit v0

    .line 406
    return-void

    :cond_0
    move v1, v3

    .line 402
    goto :goto_0

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final updateConfigurationLocked(Z)V
    .locals 4
    .parameter "sendIt"

    .prologue
    .line 431
    const/4 v1, 0x1

    .line 432
    .local v1, uiMode:I
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_2

    .line 433
    const/4 v1, 0x3

    .line 437
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    if-eqz v2, :cond_5

    .line 438
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-nez v2, :cond_4

    .line 439
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    .line 440
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    :goto_1
    or-int/2addr v1, v2

    .line 458
    :goto_2
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    .line 460
    iget-boolean v2, p0, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    if-eq v1, v2, :cond_1

    .line 461
    iput v1, p0, Lcom/android/server/UiModeManagerService;->mSetUiMode:I

    .line 462
    iget-object v2, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iput v1, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 464
    if-eqz p1, :cond_1

    .line 466
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_1
    :goto_3
    return-void

    .line 434
    :cond_2
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 435
    const/4 v1, 0x2

    goto :goto_0

    .line 440
    :cond_3
    const/16 v2, 0x10

    goto :goto_1

    .line 443
    :cond_4
    iget v2, p0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    goto :goto_2

    .line 447
    :cond_5
    and-int/lit8 v2, v1, -0x31

    or-int/lit8 v1, v2, 0x10

    goto :goto_2

    .line 467
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/UiModeManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Failure communicating with activity manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method updateDockState(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    iget-object v0, p0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    if-eq p1, v1, :cond_0

    .line 421
    iput p1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    .line 422
    iget v1, p0, Lcom/android/server/UiModeManagerService;->mDockState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(Z)V

    .line 423
    iget-boolean v1, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 424
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 427
    :cond_0
    monitor-exit v0

    .line 428
    return-void

    :cond_1
    move v1, v3

    .line 422
    goto :goto_0

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final updateLocked(II)V
    .locals 17
    .parameter "enableFlags"
    .parameter "disableFlags"

    .prologue
    .line 475
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 478
    .local v13, ident:J
    const/4 v11, 0x0

    .line 479
    .local v11, action:Ljava/lang/String;
    const/16 v16, 0x0

    .line 480
    .local v16, oldAction:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 482
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 487
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    move v3, v0

    if-eqz v3, :cond_6

    .line 488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 489
    invoke-direct/range {p0 .. p0}, Lcom/android/server/UiModeManagerService;->adjustStatusBarCarModeLocked()V

    .line 491
    if-eqz v16, :cond_1

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 494
    :cond_1
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 495
    sget-object v11, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 510
    :cond_2
    :goto_1
    if-eqz v11, :cond_9

    .line 517
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v4, intent:Landroid/content/Intent;
    const-string v3, "enableFlags"

    move-object v0, v4

    move-object v1, v3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v3, "disableFlags"

    move-object v0, v4

    move-object v1, v3

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 525
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mHoldingConfiguration:Z

    .line 549
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/UiModeManagerService;->updateConfigurationLocked(Z)V

    .line 553
    const/4 v15, 0x0

    .line 556
    .local v15, keepScreenOn:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCharging:Z

    move v3, v0

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    move v3, v0

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeKeepsScreenOn:Z

    move v3, v0

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    move v15, v3

    .line 574
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eq v15, v3, :cond_4

    .line 575
    if-eqz v15, :cond_e

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :cond_4
    :goto_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    return-void

    .line 483
    .end local v15           #keepScreenOn:Z
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 484
    sget-object v16, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_0

    .line 497
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    move v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 499
    if-eqz v16, :cond_7

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    :cond_7
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 503
    sget-object v11, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_1

    .line 506
    :cond_8
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/UiModeManagerService;->mLastBroadcastState:I

    .line 507
    move-object/from16 v11, v16

    goto/16 :goto_1

    .line 527
    :cond_9
    const/4 v12, 0x0

    .line 528
    .local v12, homeIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mCarModeEnabled:Z

    move v3, v0

    if-eqz v3, :cond_b

    .line 529
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_a

    .line 530
    const-string v3, "android.intent.category.CAR_DOCK"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    .line 541
    :cond_a
    :goto_5
    if-eqz v12, :cond_3

    .line 543
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 544
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 532
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mDockState:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 533
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_a

    .line 534
    const-string v3, "android.intent.category.DESK_DOCK"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_5

    .line 537
    :cond_c
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_a

    .line 538
    const-string v3, "android.intent.category.HOME"

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    goto :goto_5

    .line 556
    .end local v12           #homeIntent:Landroid/content/Intent;
    .restart local v15       #keepScreenOn:Z
    :cond_d
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_3

    .line 578
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 582
    .end local v15           #keepScreenOn:Z
    :catchall_0
    move-exception v3

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method updateTwilightLocked()V
    .locals 21

    .prologue
    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    if-nez v8, :cond_0

    .line 811
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 772
    .local v6, currentTime:J
    new-instance v5, Lcom/android/server/TwilightCalculator;

    invoke-direct {v5}, Lcom/android/server/TwilightCalculator;-><init>()V

    .line 773
    .local v5, tw:Lcom/android/server/TwilightCalculator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 775
    iget v8, v5, Lcom/android/server/TwilightCalculator;->mState:I

    if-nez v8, :cond_2

    .line 776
    const/16 v18, 0x0

    .line 782
    .local v18, nightMode:Z
    :goto_1
    const-wide/16 v16, 0x0

    .line 783
    .local v16, nextUpdate:J
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunrise:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunset:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 785
    :cond_1
    const-wide/32 v8, 0x2932e00

    add-long v16, v6, v8

    .line 804
    :goto_2
    new-instance v20, Landroid/content/Intent;

    const-string v8, "com.android.server.action.UPDATE_NIGHT_MODE"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 805
    .local v20, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mContext:Landroid/content/Context;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v8

    move v1, v9

    move-object/from16 v2, v20

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 807
    .local v19, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    move-object v8, v0

    const/4 v9, 0x0

    move-object v0, v8

    move v1, v9

    move-wide/from16 v2, v16

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 810
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/UiModeManagerService;->mComputedNightMode:Z

    goto :goto_0

    .line 778
    .end local v16           #nextUpdate:J
    .end local v18           #nightMode:Z
    .end local v19           #pendingIntent:Landroid/app/PendingIntent;
    .end local v20           #updateIntent:Landroid/content/Intent;
    :cond_2
    const/16 v18, 0x1

    .restart local v18       #nightMode:Z
    goto :goto_1

    .line 787
    .restart local v16       #nextUpdate:J
    :cond_3
    iget v15, v5, Lcom/android/server/TwilightCalculator;->mState:I

    .line 789
    .local v15, mLastTwilightState:I
    const-wide/32 v8, 0xea60

    add-long v16, v16, v8

    .line 790
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunset:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_4

    .line 792
    const-wide/32 v8, 0x5265c00

    add-long v9, v6, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    move-object v8, v5

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/TwilightCalculator;->calculateTwilight(JDD)V

    .line 797
    :cond_4
    const/4 v8, 0x1

    if-ne v15, v8, :cond_5

    .line 798
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunrise:J

    add-long v16, v16, v8

    goto :goto_2

    .line 800
    :cond_5
    iget-wide v8, v5, Lcom/android/server/TwilightCalculator;->mSunset:J

    add-long v16, v16, v8

    goto :goto_2
.end method