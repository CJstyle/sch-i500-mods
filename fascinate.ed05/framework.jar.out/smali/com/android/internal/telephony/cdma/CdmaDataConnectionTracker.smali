.class public final Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "CdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$DataConnectionSettingsChangeObserver;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "cdmadataconnection_id"

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final DATA_CONNECTION_POOL_SIZE:I = 0x1

.field private static final DUN_1XRTT_LOWER_BOUND:I = 0x11

.field private static final DUN_1XRTT_UPPER_BOUND:I = 0x13

.field private static final DUN_ACTION:Ljava/lang/String; = "android.intent.action.DUN_DATA_STATE"

.field private static final DUN_EVDO_LOWER_BOUND:I = 0x14

.field private static final DUN_EVDO_UPPER_BOUND:I = 0x17

.field private static final DUN_NOTIFICATION:I = 0xabb642

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.cdma-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final POLL_CONNECTION_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final RIL_DUN_TYPE_CDMA:I = 0x2

.field private static final RIL_DUN_TYPE_HDR:I = 0x4

.field private static final TIME_DELAYED_TO_RESTART_RADIO:I

.field private static final mDefaultApnTypes:[Ljava/lang/String;

.field private static final mSupportedApnTypes:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private allDataConnectionSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/DataConnectionSetting;",
            ">;"
        }
    .end annotation
.end field

.field private dataConnectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field failNextConnect:Z

.field protected mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

.field private mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mPendingRestartRadio:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mobileAP_State:I

.field private noAutoAttach:Z

.field private preferredApn:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

.field private preferredDataConnectionSettings:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

.field private sendDunCfgFlag:Z

.field private usbTethered_State:Z

.field private waitingDataConnectionSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/DataConnectionSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "default"

    .line 142
    const-string v0, "ro.cdma.timetoradiorestart"

    const v1, 0xea60

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v6, v0, v2

    const-string v1, "mms"

    aput-object v1, v0, v3

    const-string v1, "dun"

    aput-object v1, v0, v4

    const-string v1, "hipri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .line 169
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "default"

    aput-object v6, v0, v2

    const-string v1, "mms"

    aput-object v1, v0, v3

    const-string v1, "hipri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .line 185
    const-string v0, "content://telephony_cdma/cdma_carriers/prefercdmadataconnection"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 9
    .parameter "p"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v8, "CDMA"

    .line 311
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 82
    const-string v3, "CDMA"

    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 127
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->noAutoAttach:Z

    .line 128
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    .line 131
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->failNextConnect:Z

    .line 141
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 177
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDunCfgFlag:Z

    .line 180
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allDataConnectionSettings:Ljava/util/ArrayList;

    .line 181
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->waitingDataConnectionSettings:Ljava/util/ArrayList;

    .line 182
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->preferredDataConnectionSettings:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    .line 184
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    .line 190
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I

    .line 196
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z

    .line 199
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    new-instance v3, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 312
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 314
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 316
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1f

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 318
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/16 v4, 0xf

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/16 v4, 0xe

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v4, 0x5

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForCdmaDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 322
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v4, 0x1e

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForCdmaDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v4, 0x15

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v4, 0x16

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x23

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v3, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x67

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setDunStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 331
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.internal.telephony.cdma-reconnect"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 332
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    const-string v3, "android.intent.action.DUN_PATTERN_LOCK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v5, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 343
    iput-object p0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionList()V

    .line 349
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 351
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 353
    .local v0, dataEnabledSetting:Z
    :try_start_0
    const-string v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 358
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataEnabled:[Z

    const-string v4, "disabled_on_boot_key"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    move v4, v7

    :goto_1
    aput-boolean v4, v3, v6

    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_0

    .line 362
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->enabledCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->enabledCount:I

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, v6

    if-nez v3, :cond_3

    move v3, v7

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->noAutoAttach:Z

    .line 366
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "ro.cdma.data_retry_config"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v4, "default_randomization=2000,5000,5000,5000,7000,7000:000,7000:000,7000:000,7000:000,7000:000,7000:000"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    const-string v3, "CDMA"

    const-string v3, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,5000,5000,7000,7000:000,7000:000,7000:000,7000:000,7000:000,7000:000"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v4, 0x14

    const/16 v5, 0x7d0

    const/16 v6, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 374
    :cond_1
    return-void

    :cond_2
    move v4, v6

    .line 358
    goto :goto_1

    :cond_3
    move v3, v6

    .line 364
    goto :goto_2

    .line 355
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mUsbRegexs:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/RetryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3314(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionSettingList()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$4808(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$5000(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollEnabled:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$5302(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendPatternLockState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private buildWaitingDataConnectionSettings()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/DataConnectionSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1298
    .local v1, dataConnectionSettingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/DataConnectionSetting;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allDataConnectionSettings:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1299
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allDataConnectionSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    .line 1300
    .local v0, connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1303
    .end local v0           #connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-object v1
.end method

.method private cleaerDunSettingNotification()V
    .locals 3

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1679
    .local v0, nm:Landroid/app/NotificationManager;
    const v1, 0xabb642

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1680
    return-void
.end method

.method private cleanUpConnection(ZLjava/lang/String;)V
    .locals 7
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 543
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 544
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 546
    .local v1, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 547
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 550
    .end local v1           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 552
    const/4 v4, 0x0

    .line 553
    .local v4, notificationDeferred:Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 554
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v2, :cond_1

    .line 555
    if-eqz p1, :cond_2

    .line 556
    const-string v5, "cleanUpConnection: teardown, call conn.disconnect"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 557
    const/16 v5, 0x19

    invoke-virtual {p0, v5, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/DataConnection;->disconnect(Landroid/os/Message;)V

    .line 558
    const/4 v4, 0x1

    goto :goto_0

    .line 560
    :cond_2
    const-string v5, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 561
    const-string v5, "radioTurnedOff"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->onDisconnect()V

    .line 564
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->resetSynchronously()V

    .line 565
    const/4 v4, 0x0

    goto :goto_0

    .line 570
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 572
    if-nez v4, :cond_5

    .line 573
    const-string v5, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 574
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 578
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDunCfgFlag:Z

    if-eqz v5, :cond_6

    .line 579
    const-string v5, "sendDunCfgFlag : true"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x2

    .line 582
    .local v0, IPC_CDMA_DATA_SERVICE_TYPE_USB_DUN:B
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDunCfgFlag:Z

    .line 585
    .end local v0           #IPC_CDMA_DATA_SERVICE_TYPE_USB_DUN:B
    :cond_6
    return-void
.end method

.method private createAllDataConnectionList()V
    .locals 3

    .prologue
    .line 1078
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    .line 1081
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1082
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->makeDataConnection(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v0

    .line 1083
    .local v0, dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1085
    .end local v0           #dataConn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    :cond_0
    return-void
.end method

.method private createAllDataConnectionSettingList()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allDataConnectionSettings:Ljava/util/ArrayList;

    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1110
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1111
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1112
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createDataConnectionSettingList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allDataConnectionSettings:Ljava/util/ArrayList;

    .line 1121
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1127
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->allDataConnectionSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    const-string v0, "No Data Connection Settings found for carrier: "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1129
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1131
    :cond_1
    return-void

    .line 1124
    :cond_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_0
.end method

.method private createDataConnectionSettingList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 8
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/DataConnectionSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/DataConnectionSetting;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1091
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auth"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "proxy"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "port"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/DataConnectionSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    .local v0, connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1101
    .end local v0           #connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    :cond_1
    return-object v7
.end method

.method private destroyAllDataConnectionList()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1138
    :cond_0
    return-void
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .locals 5

    .prologue
    .line 588
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 589
    .local v2, connBase:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object v1, v0

    .line 590
    .local v1, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->isInactive()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 594
    .end local v1           #conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    .end local v2           #connBase:Lcom/android/internal/telephony/DataConnection;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getNextDataConnectionSetting()Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    .locals 3

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->waitingDataConnectionSettings:Ljava/util/ArrayList;

    .line 1311
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/DataConnectionSetting;>;"
    const/4 v0, 0x0

    .line 1313
    .local v0, connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1315
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    check-cast v0, Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    .line 1318
    .restart local v0       #connectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    :cond_0
    return-object v0
.end method

.method private gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 848
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 849
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 851
    return-void
.end method

.method private isDataAllowed()Z
    .locals 2

    .prologue
    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 463
    .local v0, roaming:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 654
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 658
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    .line 843
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 844
    return-void
.end method

.method private onCdmaDataDetached()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "cdmaDataDetached"

    .line 1141
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1143
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "cdmaDataDetached"

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1156
    :goto_0
    return-void

    .line 1145
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_1

    .line 1146
    const-string v2, "cdmaDataDetached"

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1147
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1149
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    .line 1150
    .local v1, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3be

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1154
    .end local v1           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    const-string v2, "cdmaDataDetached"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 1150
    .restart local v1       #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private onCdmaOtaProvision(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 1159
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1160
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 1161
    .local v1, otaPrivision:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 1162
    const/4 v2, 0x0

    aget v2, v1, v2

    sparse-switch v2, :sswitch_data_0

    .line 1172
    .end local v1           #otaPrivision:[I
    :cond_0
    :goto_0
    return-void

    .line 1165
    .restart local v1       #otaPrivision:[I
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    goto :goto_0

    .line 1162
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDunStateChanged(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    .line 1454
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 1459
    .local v5, response:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1462
    .local v7, stateChange:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnDunEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1463
    const-string v11, "ignore dun state change because dun is false"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_f

    .line 1469
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1470
    .local v10, type:I
    const/4 v11, 0x2

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1471
    .local v8, tRx:I
    const/4 v11, 0x3

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1473
    .local v9, tTx:I
    array-length v11, v5

    const/4 v12, 0x5

    if-ne v11, v12, :cond_2

    .line 1474
    const/4 v11, 0x4

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1476
    .local v6, servingNw:I
    const/16 v11, 0x11

    if-lt v6, v11, :cond_6

    const/16 v11, 0x13

    if-gt v6, v11, :cond_6

    .line 1477
    const/4 v4, 0x7

    .line 1484
    .local v4, nwType:I
    :goto_1
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunNetworkType:I

    if-eq v4, v11, :cond_2

    .line 1485
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunNetworkType:I

    .line 1486
    const/4 v7, 0x1

    .line 1492
    .end local v4           #nwType:I
    .end local v6           #servingNw:I
    :cond_2
    if-nez v10, :cond_9

    .line 1493
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1495
    .local v3, newDunState:I
    const/4 v11, 0x4

    if-ge v3, v11, :cond_0

    .line 1499
    const/4 v11, 0x3

    if-ne v3, v11, :cond_8

    .line 1500
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->showDunNotification()V

    .line 1509
    :cond_3
    :goto_2
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    if-nez v11, :cond_4

    .line 1510
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    .line 1511
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    .line 1512
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1541
    .end local v3           #newDunState:I
    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    .line 1542
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDunDataConnection()V

    .line 1544
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDunDataActivity()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1547
    .end local v8           #tRx:I
    .end local v9           #tTx:I
    .end local v10           #type:I
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 1548
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v11, "CDMA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error parsing RegistrationState: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1478
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v6       #servingNw:I
    .restart local v8       #tRx:I
    .restart local v9       #tTx:I
    .restart local v10       #type:I
    :cond_6
    const/16 v11, 0x14

    if-lt v6, v11, :cond_7

    const/16 v11, 0x17

    if-gt v6, v11, :cond_7

    .line 1479
    const/4 v4, 0x6

    .restart local v4       #nwType:I
    goto :goto_1

    .line 1481
    .end local v4           #nwType:I
    :cond_7
    const/4 v4, 0x7

    .restart local v4       #nwType:I
    goto :goto_1

    .line 1501
    .end local v4           #nwType:I
    .end local v6           #servingNw:I
    .restart local v3       #newDunState:I
    :cond_8
    :try_start_1
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    if-eq v11, v3, :cond_3

    .line 1502
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.DUN_DATA_STATE"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v11, "state"

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1505
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    .line 1506
    const/4 v7, 0x1

    goto :goto_2

    .line 1515
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #newDunState:I
    :cond_9
    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 1520
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    if-eq v8, v11, :cond_b

    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    if-eq v9, v11, :cond_b

    .line 1521
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1534
    :cond_a
    :goto_4
    iput v8, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    .line 1535
    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    goto :goto_3

    .line 1522
    :cond_b
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    if-ne v8, v11, :cond_c

    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    if-ne v9, v11, :cond_c

    .line 1523
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_4

    .line 1525
    :cond_c
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    if-eq v9, v11, :cond_d

    .line 1526
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1529
    :cond_d
    iget v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    if-eq v8, v11, :cond_a

    .line 1530
    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto :goto_4

    .line 1537
    :cond_e
    const-string v11, "CDMA"

    const-string v12, "[CdmaDataConnectionTracker] onDunStateChanged(), invalid type"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1551
    .end local v8           #tRx:I
    .end local v9           #tTx:I
    .end local v10           #type:I
    :cond_f
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Warning! Wrong number of parameters returned from RIL_UNSOL_DUN: expected 4 got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private onRestartRadio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1175
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v0, :cond_0

    .line 1176
    const-string v0, "CDMA"

    const-string v1, "************TURN OFF RADIO**************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1185
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 1187
    :cond_0
    return-void
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 10
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const/4 v6, 0x0

    const-string v9, "CDMA"

    .line 797
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_1

    .line 804
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v2

    .line 805
    .local v2, nextReconnectDelay:I
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data Connection activate failed. Scheduling next attempt for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v2, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v3, 0x0

    .line 811
    .local v3, retry_count:I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v3

    .line 812
    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setstate] pppd init , retry fail retry_count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 815
    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 816
    const-string v4, "pppd_cdma"

    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 817
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->ModemHangup(I)V

    .line 818
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 821
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 823
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.cdma-reconnect"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "reason"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 827
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v2

    add-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 831
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 833
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 834
    const-string v4, "CDMA"

    const-string v4, "NOT Posting Data Connection Unavailable notification -- likely transient error"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #nextReconnectDelay:I
    .end local v3           #retry_count:I
    :cond_1
    :goto_0
    return-void

    .line 837
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #nextReconnectDelay:I
    .restart local v3       #retry_count:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_0
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 661
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->txPkts:J

    .line 662
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->rxPkts:J

    .line 663
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sentSinceLastRecv:J

    .line 664
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollPeriod:I

    .line 665
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mNoRecvPollCount:I

    .line 666
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 788
    const/4 v0, 0x1

    .line 790
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    const/4 v0, 0x0

    .line 793
    :cond_0
    return v0
.end method

.method private sendDataConfiguration(B)V
    .locals 7
    .parameter "selected_SVC"

    .prologue
    .line 1598
    const-string v4, "sendDataConfiguration"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1599
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1600
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1604
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 1605
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1606
    const/16 v4, 0x25

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1607
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1609
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1617
    :goto_0
    return-void

    .line 1611
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1613
    .local v2, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private sendMobileAPState(I)V
    .locals 7
    .parameter "status"

    .prologue
    const-string v6, "CDMA"

    .line 1415
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileAPEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1418
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1421
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 1422
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1423
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1425
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1426
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    const-string v4, "CDMA"

    const-string v4, " sending the RIL command"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1433
    :goto_0
    return-void

    .line 1427
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1428
    .local v2, e:Ljava/io/IOException;
    const-string v4, "CDMA"

    const-string v4, " failed to write"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendPatternLockState(I)V
    .locals 7
    .parameter "status"

    .prologue
    const-string v6, "CDMA"

    .line 1561
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LockPatternEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1564
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1567
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x4

    .line 1568
    .local v3, fileSize:I
    const/16 v4, 0xc

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1569
    const/16 v4, 0x24

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1570
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1571
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    const-string v4, "CDMA"

    const-string v4, " sending the RIL command"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1578
    :goto_0
    return-void

    .line 1572
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1573
    .local v2, e:Ljava/io/IOException;
    const-string v4, "CDMA"

    const-string v4, " failed to write"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDunSettingNotification()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1665
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1667
    .local v9, nm:Landroid/app/NotificationManager;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1668
    .local v6, title:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10404a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1669
    .local v7, details:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080078

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1671
    .local v0, notify:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1672
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1673
    const v1, 0xabb642

    invoke-virtual {v9, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1674
    return-void
.end method

.method private setPppConnectionOptions(Lcom/android/internal/telephony/cdma/CdmaDataConnection;)V
    .locals 6
    .parameter "dataConn"

    .prologue
    .line 1335
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    iget-object v3, v4, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->user:Ljava/lang/String;

    .line 1336
    .local v3, username:Ljava/lang/String;
    const-string v2, "*"

    .line 1337
    .local v2, server:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->password:Ljava/lang/String;

    .line 1340
    .local v0, password:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->auth:Ljava/lang/String;

    const-string v5, "pap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1341
    const-string/jumbo v4, "setPppConnectionOptions-  auth pap"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1342
    const/4 v1, 0x1

    .line 1354
    .local v1, pppAuth:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPppConnectionOptions - user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", password : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pppAuth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1358
    iget-object p0, p1, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/PppLink;

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/android/internal/telephony/cdma/PppLink;->setPppConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1359
    return-void

    .line 1343
    .end local v1           #pppAuth:I
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->auth:Ljava/lang/String;

    const-string v5, "chap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1344
    const-string/jumbo v4, "setPppConnectionOptions-  auth chap"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1345
    const/4 v1, 0x2

    .restart local v1       #pppAuth:I
    goto :goto_0

    .line 1346
    .end local v1           #pppAuth:I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->auth:Ljava/lang/String;

    const-string v5, "eap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1347
    const-string/jumbo v4, "setPppConnectionOptions-  auth eap"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1348
    const/4 v1, 0x3

    .restart local v1       #pppAuth:I
    goto :goto_0

    .line 1350
    .end local v1           #pppAuth:I
    :cond_2
    const-string/jumbo v4, "setPppConnectionOptions-  auth none"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1351
    const/4 v1, 0x0

    .restart local v1       #pppAuth:I
    goto :goto_0
.end method

.method private setPreferredApn(I)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 1322
    const-string v2, "CDMA"

    const-string v3, "CdmaDataConnectionTracker : setPreferredApn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1324
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1326
    if-ltz p1, :cond_0

    .line 1327
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1328
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "cdmadataconnection_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1331
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private setupData(Ljava/lang/String;)Z
    .locals 20
    .parameter "reason"

    .prologue
    .line 613
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-result-object v17

    .line 616
    .local v17, conn:Lcom/android/internal/telephony/cdma/CdmaDataConnection;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getNextDataConnectionSetting()Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    move-result-object v18

    .line 617
    .local v18, dataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    .line 620
    if-nez v17, :cond_0

    .line 621
    const-string/jumbo v3, "setupData: No free CdmaDataConnectionfound!"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 622
    const/4 v3, 0x0

    .line 650
    :goto_0
    return v3

    .line 625
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "dun"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 629
    .local v16, types:[Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "dun"

    aput-object v4, v16, v3

    .line 633
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v16}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataLink:Lcom/android/internal/telephony/DataLink;

    if-eqz v3, :cond_1

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setPppConnectionOptions(Lcom/android/internal/telephony/cdma/CdmaDataConnection;)V

    .line 637
    const-string/jumbo v3, "setupData: Setting ppp options for cdma"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 640
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->proxy:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/DataConnectionSetting;->port:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    move-object v4, v0

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dataConnectionSetting:Lcom/android/internal/telephony/cdma/DataConnectionSetting;

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v19

    .line 644
    .local v19, msg:Landroid/os/Message;
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/os/Message;->what:I

    .line 645
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    move-object v3, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V

    .line 648
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 650
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 631
    .end local v16           #types:[Ljava/lang/String;
    .end local v19           #msg:Landroid/os/Message;
    :cond_2
    sget-object v16, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mDefaultApnTypes:[Ljava/lang/String;

    .restart local v16       #types:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 777
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDunNotification()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1583
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1585
    .local v9, notificationManager:Landroid/app/NotificationManager;
    new-instance v0, Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1080078

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "DUN Alert"

    const-string v7, "Your phone is locked!!!"

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Landroid/app/Notification;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 1589
    .local v0, n:Landroid/app/Notification;
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1590
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1593
    const/4 v1, 0x1

    invoke-virtual {v9, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1594
    return-void
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .locals 0
    .parameter "cause"
    .parameter "reason"

    .prologue
    .line 1287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1288
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .locals 6
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***trySetupData due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    const-string v4, "(unspecified)"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 472
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 473
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 475
    const-string v3, "CDMA"

    const-string v4, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v3, 0x1

    .line 526
    :goto_1
    return v3

    :cond_0
    move-object v4, p1

    .line 467
    goto :goto_0

    .line 479
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentCdmaDataConnectionState()I

    move-result v1

    .line 480
    .local v1, psState:I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 481
    .local v2, roaming:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 483
    .local v0, desiredPowerState:Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_6

    :cond_2
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->isDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnDunEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-nez v3, :cond_6

    .line 497
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_5

    .line 498
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->buildWaitingDataConnectionSettings()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->waitingDataConnectionSettings:Ljava/util/ArrayList;

    .line 499
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->waitingDataConnectionSettings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 500
    const-string v3, "No DataConnectionSetting found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 501
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    move v3, v5

    .line 502
    goto/16 :goto_1

    .line 506
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_1

    .line 510
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trySetupData: Not ready for data:  dataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PS state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " radio state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ruim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " concurrentVoice&Data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dataOnRoamingEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " desiredPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " PendingRestartRadio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MasterDataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v3, v5

    .line 526
    goto/16 :goto_1
.end method

.method private writeEventLogCdmaDataDrop()V
    .locals 6

    .prologue
    .line 1190
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v0, p0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    .line 1191
    .local v1, loc:Landroid/telephony/cdma/CdmaCellLocation;
    const v2, 0xc3bf

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1194
    return-void

    .line 1191
    :cond_0
    const/4 v5, -0x1

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 380
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 381
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForCdmaDataConnectionAttached(Landroid/os/Handler;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForCdmaDataConnectionDetached(Landroid/os/Handler;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->destroyAllDataConnectionList()V

    .line 393
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 396
    const-string v0, "CDMA"

    const-string v1, "CdmaDataConnectionTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 425
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 431
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 428
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 429
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dataConnectionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataOnDunEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1621
    const-string v0, "getDataOnDunEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1622
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dun_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v0

    .line 1279
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDunDataRxBarLevel()I
    .locals 1

    .prologue
    .line 1440
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    return v0
.end method

.method public getDunDataState()I
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    return v0
.end method

.method public getDunDataTxBarLevel()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    return v0
.end method

.method protected getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v0

    .line 1272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 1258
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveDataConnection:Lcom/android/internal/telephony/cdma/CdmaDataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 1265
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 1366
    const-string v0, "CDMA"

    const-string v1, "Ignore CDMA msgs since CDMA phone is inactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :goto_0
    return-void

    .line 1370
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1404
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1372
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 1376
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onNVReady()V

    goto :goto_0

    .line 1380
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaDataDetached()V

    goto :goto_0

    .line 1384
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1388
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onCdmaOtaProvision(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1392
    :sswitch_5
    const-string v0, "EVENT_RESTART_RADIO"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0

    .line 1397
    :sswitch_6
    const-string v0, "Jin_Yoyng"

    const-string v1, "handlerMessage() - Event_DUN_STATE_SHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDunStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1370
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_3
        0x1e -> :sswitch_2
        0x1f -> :sswitch_1
        0x23 -> :sswitch_4
        0x24 -> :sswitch_5
        0x67 -> :sswitch_6
    .end sparse-switch
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 415
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mSupportedApnTypes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 416
    .local v3, s:Ljava/lang/String;
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    const/4 v4, 0x1

    .line 420
    .end local v3           #s:Ljava/lang/String;
    :goto_1
    return v4

    .line 415
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isDataConnectionAsDesired()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 450
    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentCdmaDataConnectionState()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_3

    .line 456
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_2

    move v1, v3

    .line 458
    :goto_0
    return v1

    .line 456
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v3

    .line 458
    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1410
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 0
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1074
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1075
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    .line 975
    const/4 v2, 0x0

    .line 976
    .local v2, reason:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 977
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #reason:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 980
    .restart local v2       #reason:Ljava/lang/String;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 982
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    .line 994
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v1, v0

    .line 985
    .local v1, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Connection setup failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 988
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 989
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_0

    .line 992
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const-string v7, "CDMA"

    .line 1197
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 1199
    .local v2, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1206
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_4

    .line 1207
    const/4 v4, 0x0

    .line 1208
    .local v4, isActiveOrDormantConnectionPresent:Z
    const/4 v1, 0x0

    .line 1212
    .local v1, connectionState:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1213
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/DataCallState;

    iget v1, v5, Lcom/android/internal/telephony/DataCallState;->active:I

    .line 1214
    if-eqz v1, :cond_2

    .line 1215
    const/4 v4, 0x1

    .line 1220
    :cond_1
    if-nez v4, :cond_3

    .line 1222
    const-string v5, "CDMA"

    const-string v5, "onDataStateChanged: No active connectionstate is CONNECTED, disconnecting/cleanup"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->writeEventLogCdmaDataDrop()V

    .line 1225
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    .line 1212
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1229
    :cond_3
    packed-switch v1, :pswitch_data_0

    .line 1245
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataStateChanged: IGNORE unexpected DataCallState.active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1231
    :pswitch_0
    const-string v5, "CDMA"

    const-string v5, "onDataStateChanged: active=LINK_ACTIVE && CONNECTED, ignore"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1233
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1234
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    .line 1238
    :pswitch_1
    const-string v5, "CDMA"

    const-string v5, "onDataStateChanged active=LINK_DOWN && CONNECTED, dormant"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1240
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    goto :goto_0

    .line 1250
    .end local v1           #connectionState:I
    .end local v3           #index:I
    .end local v4           #isActiveOrDormantConnectionPresent:Z
    :cond_4
    const-string v5, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDataStateChanged: not connected, state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 1000
    const-string v2, "onDisconnectDone() EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, reason:Ljava/lang/String;
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1003
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1005
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1009
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x24

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeMessages(I)V

    .line 1013
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 1014
    .local v1, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1015
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 1020
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1021
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1022
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1023
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1025
    :cond_2
    return-void

    .line 1017
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onRestartRadio()V

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 2

    .prologue
    .line 906
    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 907
    return-void
.end method

.method protected onNVReady()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "CDMA"

    .line 861
    const-string v2, "onNVReady()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->createAllDataConnectionSettingList()V

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 867
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 869
    .local v1, wifiApState:I
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifiApState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbTethered_State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z

    if-ne v2, v4, :cond_3

    .line 873
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V

    .line 874
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I

    .line 895
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_2

    .line 896
    const/4 v2, 0x0

    invoke-direct {p0, v5, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 898
    :cond_2
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 899
    return-void

    .line 875
    :cond_3
    if-ne v1, v4, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->usbTethered_State:Z

    if-nez v2, :cond_1

    .line 876
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMobileAPState(I)V

    .line 877
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mobileAP_State:I

    goto :goto_0
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 945
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 947
    const-string v0, "CDMA"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    .line 951
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 953
    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    const-string v0, "CDMA"

    const-string v1, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_0
    return-void

    .line 966
    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 967
    const/4 v0, 0x0

    const-string v1, "radioTurnedOff"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 855
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 857
    :cond_0
    const/4 v0, 0x5

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 858
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1033
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1036
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1038
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public onRoamingOff()V
    .locals 1

    .prologue
    .line 921
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 922
    return-void
.end method

.method public onRoamingOn()V
    .locals 3

    .prologue
    const-string v2, "roamingOn"

    .line 929
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const-string v0, "roamingOn"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 935
    :goto_0
    return-void

    .line 932
    :cond_0
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 933
    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    .line 913
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 3

    .prologue
    const-string v2, "2GVoiceCallEnded"

    .line 1055
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->startNetStatPoll()V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallEnded"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1068
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 1066
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1049
    :cond_0
    return-void
.end method

.method protected restartRadio()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleanup connection and wait "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s to restart radio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 686
    const-string v0, "radioTurnedOff"

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 687
    const/16 v0, 0x24

    sget v1, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->TIME_DELAYED_TO_RESTART_RADIO:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPendingRestartRadio:Z

    .line 689
    return-void
.end method

.method public setDataOnDunEnabled(Z)V
    .locals 8
    .parameter "enabled"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1627
    const/4 v0, 0x1

    .line 1630
    .local v0, IPC_CDMA_DATA_SERVICE_TYPE_BROWSER_CALL:B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataOnDunEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->getDataOnDunEnabled()Z

    move-result v3

    if-eq v3, p1, :cond_1

    .line 1632
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dun_enable"

    if-eqz p1, :cond_2

    move v5, v7

    :goto_0
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1635
    if-nez p1, :cond_0

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    if-eqz v3, :cond_0

    .line 1636
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    .line 1637
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunRxBarLevel:I

    .line 1638
    iput v6, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunTxBarLevel:I

    .line 1639
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DUN_DATA_STATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1640
    .local v1, intent:Landroid/content/Intent;
    const-string/jumbo v3, "state"

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->dunState:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1641
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1644
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    if-eqz p1, :cond_3

    .line 1645
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->setDunSettingNotification()V

    .line 1647
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendDunCfgFlag:Z

    .line 1649
    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1650
    .local v2, msg:Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 1651
    const-string v3, "DUN Enabled"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1652
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1662
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v6

    .line 1632
    goto :goto_0

    .line 1657
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->cleaerDunSettingNotification()V

    .line 1658
    const/4 v3, 0x5

    const-string v4, "DUN disabled"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method protected setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "httpProxy"
    .parameter "httpPort"

    .prologue
    const-string v3, "net.gprs.http-proxy"

    .line 598
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :goto_0
    return-void

    .line 603
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 604
    :cond_2
    const-string p2, "8080"

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "net.gprs.http-proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_0

    .line 402
    const v0, 0xc3c3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 404
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 406
    :cond_0
    return-void
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_0

    .line 670
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Start poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->resetPollStats()V

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollEnabled:Z

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 675
    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->netStatPollEnabled:Z

    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    const-string v0, "CDMA"

    const-string v1, "[DataConnection] Stop poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    return-void
.end method
