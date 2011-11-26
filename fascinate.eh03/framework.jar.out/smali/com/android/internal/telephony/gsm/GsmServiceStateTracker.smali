.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;,
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field protected static final DATA_ROAM_ACCESS_APPLY:I = 0x1

.field private static final DATA_ROAM_ACCESS_DENY:I = 0x0

.field private static final DATA_ROAM_ACCESS_FULL:I = 0x2

.field protected static final DATA_ROAM_ACCESS_SKIP:I = 0x0

.field private static final DATA_ROAM_ACCESS_TRIP_ONLY:I = 0x1

.field static final DBG:Z = true

.field static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field private static final DEVICE_IS_PROVISIONED:I = 0x1

.field static final HOMEZONE_CITY:I = 0x29a

.field static final HOMEZONE_HOME:I = 0x309

.field private static final KEY_SIM_PROFILE_MCCMNC:Ljava/lang/String; = "simprof.key.mccmnc"

.field private static final KEY_SIM_PROFILE_NWK_NAME:Ljava/lang/String; = "simprof.key.nwkname"

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final LOG_TAG_DATAROAM:Ljava/lang/String; = "DATAROAMING"

.field static final MAX_DISP_O2_HOMEZONE_TAG_LEN:I = 0xd

.field static final MAX_NUM_DATA_STATE_READS:I = 0x96

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field private static final SIM_NUMERIC_VIRGIN:Ljava/lang/String; = "23430"

.field private static final SIM_PROFILE_PREFERENCES_NAME:Ljava/lang/String; = "simprof.preferences_name"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private MccNumChanged:Z

.field private PrevMcc:Ljava/lang/String;

.field allNetworkName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;",
            ">;"
        }
    .end annotation
.end field

.field cellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private countCheckDataStateReads:I

.field private cr:Landroid/content/ContentResolver;

.field private curPlmn:Ljava/lang/String;

.field private curSpn:Ljava/lang/String;

.field private curSpnRule:I

.field private gprsAttachedRegistrants:Landroid/os/RegistrantList;

.field private gprsDetachedRegistrants:Landroid/os/RegistrantList;

.field private gprsState:I

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mChkNullUniversalTime:Z

.field private mDST:I

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mHome:Z

.field private mHsdpaEnabled:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsFactoryMode:Z

.field private mIsProfileSelected:Z

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNeedFixZone:Z

.field private mNeedToRegForSimLoaded:Z

.field private mNotification:Landroid/app/Notification;

.field mPreferredNetworkType:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

.field private mStartedGprsRegCheck:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private networkType:I

.field newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private newGPRSState:I

.field private newHsdpaNetworkType:I

.field private newNetworkType:I

.field phone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field private psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field rs:Lcom/android/internal/telephony/gsm/RestrictedState;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 13
    .parameter "phone"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v12, ""

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 115
    iput v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 116
    iput v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 125
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHome:Z

    .line 126
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFactoryMode:Z

    .line 132
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    .line 133
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    .line 139
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 145
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 150
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 152
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    .line 153
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    .line 154
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 155
    new-instance v7, Landroid/os/RegistrantList;

    invoke-direct {v7}, Landroid/os/RegistrantList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 162
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 166
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 177
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    .line 181
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mChkNullUniversalTime:Z

    .line 199
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 200
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    .line 202
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    .line 214
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 217
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 229
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 230
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 231
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 254
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 258
    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 259
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 297
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 2538
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 349
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 350
    iget-object v7, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 351
    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 352
    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 353
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 354
    new-instance v7, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v7}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 355
    new-instance v7, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 356
    new-instance v7, Landroid/telephony/SignalStrength;

    invoke-direct {v7}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 358
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 360
    .local v4, powerManager:Landroid/os/PowerManager;
    const-string v7, "ServiceStateTracker"

    invoke-virtual {v4, v11, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 362
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xd

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0, v11, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 365
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x2

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 366
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xb

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0xc

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x17

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x11

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 370
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x27

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setOnO2HomeZoneInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x28

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMLockedOrAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v8, 0x29

    invoke-interface {v7, p0, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->setHsdpaStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 380
    .local v0, airplaneMode:I
    if-gtz v0, :cond_1

    move v7, v11

    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    .line 383
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    const-string v8, "auto_time"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v11, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 386
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 387
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 390
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v7, "android.intent.action.CSC_MODEM_SETTING"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v7, "android.intent.action.SIM_INIT_CRASH"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v7, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "simprof.preferences_name"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 407
    .local v5, preferences:Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 408
    const-string/jumbo v7, "simprof.key.nwkname"

    const-string v8, ""

    invoke-interface {v5, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, name:Ljava/lang/String;
    const-string/jumbo v7, "simprof.key.mccmnc"

    const-string v8, ""

    invoke-interface {v5, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, mccmnc:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 413
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    invoke-direct {v7, p0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 414
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SIM profile] selected profile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .end local v2           #mccmnc:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 424
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v7, "prev_mcc_num"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 427
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v5           #preferences:Landroid/content/SharedPreferences;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_1
    move v7, v9

    .line 380
    goto/16 :goto_0
.end method

.method private GetTimezoneInfoUsingMcc(Ljava/lang/String;)V
    .locals 14
    .parameter "operatorNumeric"

    .prologue
    const/high16 v12, 0x2000

    const/4 v11, 0x3

    const/4 v10, 0x0

    const-string v13, "android.intent.action.MCC_SET_TIME"

    const-string v9, "GSM"

    .line 1581
    if-nez p1, :cond_0

    .line 1583
    const-string v7, "GSM"

    const-string/jumbo v7, "operatorNumeric is null"

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    :goto_0
    return-void

    .line 1587
    :cond_0
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, NewMcc:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "000"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1591
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mcc is changed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    .line 1593
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 1594
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1595
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1596
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "prev_mcc_num"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1597
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1599
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v7, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1603
    .local v4, mcc:I
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMccExt(I)Ljava/lang/String;

    move-result-object v6

    .line 1604
    .local v6, zoneId:Ljava/lang/String;
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ZONE ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1607
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 1608
    .local v3, manualTimeZone:Ljava/util/TimeZone;
    if-nez v3, :cond_1

    .line 1610
    const-string v7, "GSM"

    const-string v7, "manualTimeZone is NULL. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1612
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1613
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1616
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v7, "GSM"

    const-string v7, "TIMEZONE Update"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    const-string/jumbo v7, "persist.sys.timezone"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1622
    .end local v3           #manualTimeZone:Ljava/util/TimeZone;
    :cond_2
    const-string v7, "GSM"

    const-string v7, "Multi Time Zone. Manual Update Send Intent Action_MCC_SET_TIME."

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MCC_SET_TIME"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1624
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1625
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1631
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #mcc:I
    .end local v5           #sp:Landroid/content/SharedPreferences;
    .end local v6           #zoneId:Ljava/lang/String;
    :cond_3
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->MccNumChanged:Z

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveAirplaneBackup(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showSimProfileOption(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitz()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    return v0
.end method

.method static synthetic access$600(I)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    return-void
.end method

.method private clearNwkProfilePreference()V
    .locals 5

    .prologue
    .line 2523
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    .line 2525
    const-string v2, "GSM"

    const-string v3, "[SIM profile] clear preference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "simprof.preferences_name"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2530
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 2531
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2532
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "simprof.key.nwkname"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2533
    const-string/jumbo v2, "simprof.key.mccmnc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2536
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "simOperatorNumeric"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2639
    const/4 v4, 0x0

    .line 2640
    .local v4, nwkInfoDb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 2642
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    .local v18, networkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;>;"
    new-instance v13, Ljava/io/File;

    const-string v5, "/dbdata/databases/com.android.providers.telephony"

    const-string/jumbo v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    .local v13, databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2655
    new-instance v13, Ljava/io/File;

    .end local v13           #databaseFile:Ljava/io/File;
    const-string v5, "/system/csc"

    const-string/jumbo v6, "nwk_info.db"

    invoke-direct {v13, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    .restart local v13       #databaseFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2657
    const-string v5, "GSM"

    const-string/jumbo v6, "no nwk info db"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    const/4 v5, 0x0

    .line 2713
    :goto_0
    return-object v5

    .line 2661
    :cond_0
    const-string v5, "GSM"

    const-string v6, "csc in system area"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    :goto_1
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "plmn = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2677
    .local v7, selection:Ljava/lang/String;
    :try_start_1
    const-string/jumbo v5, "nwkinfo"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2685
    if-eqz v12, :cond_3

    .line 2686
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2688
    :cond_1
    const-string/jumbo v5, "nwkname"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2689
    .local v17, name:Ljava/lang/String;
    const-string/jumbo v5, "plmn"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 2690
    .local v16, mccmnc:Ljava/lang/String;
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    .line 2691
    new-instance v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    .local v15, item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    .end local v15           #item:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_1

    .line 2702
    .end local v16           #mccmnc:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    :cond_3
    if-eqz v12, :cond_4

    .line 2703
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2704
    const/4 v12, 0x0

    .line 2707
    :cond_4
    if-eqz v4, :cond_5

    .line 2708
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2709
    .end local v7           #selection:Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    :cond_5
    move-object/from16 v5, v18

    .line 2713
    goto/16 :goto_0

    .line 2664
    :cond_6
    const-string v5, "GSM"

    const-string/jumbo v6, "provider data area"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2669
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 2670
    .local v14, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "GSM"

    const-string/jumbo v6, "nwk info db open exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2698
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #selection:Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 2699
    .restart local v14       #e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception caught during nwkinfo query: "

    .end local v7           #selection:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2702
    if-eqz v12, :cond_7

    .line 2703
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2704
    const/4 v12, 0x0

    .line 2707
    :cond_7
    if-eqz v4, :cond_5

    .line 2708
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 2702
    .end local v14           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    if-eqz v12, :cond_8

    .line 2703
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2704
    const/4 v12, 0x0

    .line 2707
    :cond_8
    if-eqz v4, :cond_9

    .line 2708
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2709
    const/4 v4, 0x0

    .line 2702
    :cond_9
    throw v5
.end method

.method private static displayNameFor(I)Ljava/lang/String;
    .locals 6
    .parameter "off"

    .prologue
    const/4 v5, 0x3

    .line 1955
    div-int/lit16 v3, p0, 0x3e8

    div-int/lit8 p0, v3, 0x3c

    .line 1957
    const/16 v3, 0x9

    new-array v0, v3, [C

    .line 1958
    .local v0, buf:[C
    const/4 v3, 0x0

    const/16 v4, 0x47

    aput-char v4, v0, v3

    .line 1959
    const/4 v3, 0x1

    const/16 v4, 0x4d

    aput-char v4, v0, v3

    .line 1960
    const/4 v3, 0x2

    const/16 v4, 0x54

    aput-char v4, v0, v3

    .line 1962
    if-gez p0, :cond_0

    .line 1963
    const/16 v3, 0x2d

    aput-char v3, v0, v5

    .line 1964
    neg-int p0, p0

    .line 1969
    :goto_0
    div-int/lit8 v1, p0, 0x3c

    .line 1970
    .local v1, hours:I
    rem-int/lit8 v2, p0, 0x3c

    .line 1972
    .local v2, minutes:I
    const/4 v3, 0x4

    div-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1973
    const/4 v3, 0x5

    rem-int/lit8 v4, v1, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1975
    const/4 v3, 0x6

    const/16 v4, 0x3a

    aput-char v4, v0, v3

    .line 1977
    const/4 v3, 0x7

    div-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1978
    const/16 v3, 0x8

    rem-int/lit8 v4, v2, 0xa

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v0, v3

    .line 1980
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 1966
    .end local v1           #hours:I
    .end local v2           #minutes:I
    :cond_0
    const/16 v3, 0x2b

    aput-char v3, v0, v5

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 15
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    .line 1666
    move/from16 v8, p1

    .line 1667
    .local v8, rawOffset:I
    if-eqz p2, :cond_0

    .line 1668
    const v12, 0x36ee80

    sub-int/2addr v8, v12

    .line 1670
    :cond_0
    invoke-static {v8}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v11

    .line 1671
    .local v11, zones:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1672
    .local v5, guess:Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1673
    .local v4, d:Ljava/util/Date;
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v10, v3, v6

    .line 1674
    .local v10, zone:Ljava/lang/String;
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NITZ] findTimeZone: searching ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 1676
    .local v9, tz:Ljava/util/TimeZone;
    move-object v0, v9

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v12

    move v0, v12

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    invoke-virtual {v9, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v12

    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 1678
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[NITZ] findTimeZone: guessed ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    move-object v5, v9

    .line 1684
    .end local v9           #tz:Ljava/util/TimeZone;
    .end local v10           #zone:Ljava/lang/String;
    :cond_1
    return-object v5

    .line 1673
    .restart local v9       #tz:Ljava/util/TimeZone;
    .restart local v10       #zone:Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2266
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    .line 2269
    :goto_0
    return v1

    .line 2266
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2268
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 2269
    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 4
    .parameter "offset"
    .parameter "dst"
    .parameter "when"

    .prologue
    const-string v3, "GSM"

    .line 1652
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1653
    .local v0, guess:Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1654
    const-string v1, "GSM"

    const-string v1, "[NITZ] getNitzTimeZone: with reverted DST flag"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1659
    :cond_0
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NITZ] getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-object v0

    .line 1656
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1659
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .parameter "gprsState"
    .parameter "serviceState"

    .prologue
    .line 1644
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 19
    .parameter "gsmRoaming"
    .parameter "s"

    .prologue
    .line 1887
    const-string v16, "gsm.sim.operator.alpha"

    const-string v17, "empty"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1889
    .local v15, spn:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    .line 1890
    .local v11, onsl:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v12

    .line 1892
    .local v12, onss:Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    move/from16 v5, v16

    .line 1893
    .local v5, equalsOnsl:Z
    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0x1

    move/from16 v6, v16

    .line 1895
    .local v6, equalsOnss:Z
    :goto_1
    const-string v16, "gsm.sim.operator.numeric"

    const-string v17, ""

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1897
    .local v14, simNumeric:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 1899
    .local v13, operatorNumeric:Ljava/lang/String;
    const/4 v4, 0x1

    .line 1901
    .local v4, equalsMcc:Z
    const/16 v16, 0x0

    const/16 v17, 0x3

    :try_start_0
    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1907
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/SIMRecords;->getFakeHomeOn()[Ljava/lang/String;

    move-result-object v7

    .line 1908
    .local v7, fho:[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 1909
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v10, :cond_4

    aget-object v8, v3, v9

    .line 1910
    .local v8, h:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1911
    :cond_0
    const/16 v16, 0x0

    .line 1917
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #h:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :goto_4
    return v16

    .line 1892
    .end local v4           #equalsMcc:Z
    .end local v5           #equalsOnsl:Z
    .end local v6           #equalsOnss:Z
    .end local v7           #fho:[Ljava/lang/String;
    .end local v13           #operatorNumeric:Ljava/lang/String;
    .end local v14           #simNumeric:Ljava/lang/String;
    :cond_1
    const/16 v16, 0x0

    move/from16 v5, v16

    goto :goto_0

    .line 1893
    .restart local v5       #equalsOnsl:Z
    :cond_2
    const/16 v16, 0x0

    move/from16 v6, v16

    goto :goto_1

    .line 1909
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #equalsMcc:Z
    .restart local v6       #equalsOnss:Z
    .restart local v7       #fho:[Ljava/lang/String;
    .restart local v8       #h:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v13       #operatorNumeric:Ljava/lang/String;
    .restart local v14       #simNumeric:Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1917
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #h:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_4
    if-eqz p1, :cond_6

    if-eqz v4, :cond_5

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    :cond_5
    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 1903
    .end local v7           #fho:[Ljava/lang/String;
    :catch_0
    move-exception v16

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 2519
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmServiceStateTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    return-void
.end method

.method private static networkTypeToString(I)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    .line 1257
    const-string/jumbo v0, "unknown"

    .line 1259
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1279
    :pswitch_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :goto_0
    return-object v0

    .line 1261
    :pswitch_1
    const-string v0, "GPRS"

    .line 1262
    goto :goto_0

    .line 1264
    :pswitch_2
    const-string v0, "EDGE"

    .line 1265
    goto :goto_0

    .line 1267
    :pswitch_3
    const-string v0, "UMTS"

    .line 1268
    goto :goto_0

    .line 1270
    :pswitch_4
    const-string v0, "HSDPA"

    .line 1271
    goto :goto_0

    .line 1273
    :pswitch_5
    const-string v0, "HSUPA"

    .line 1274
    goto :goto_0

    .line 1276
    :pswitch_6
    const-string v0, "HSPA"

    .line 1277
    goto :goto_0

    .line 1259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onHsdpaStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const-string v11, "GSM"

    .line 2460
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v0, v5

    check-cast v0, [I

    move-object v3, v0

    .line 2462
    .local v3, state:[I
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HSDPA] state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    aget v5, v3, v7

    if-nez v5, :cond_1

    .line 2464
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    .line 2474
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 2476
    .local v2, oldNetworkType:I
    if-lt v2, v8, :cond_0

    .line 2477
    const/4 v4, 0x0

    .line 2479
    .local v4, typeChanged:Z
    if-ne v2, v8, :cond_3

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    if-eqz v5, :cond_3

    .line 2480
    const/4 v4, 0x1

    .line 2481
    iput v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    .line 2491
    :goto_1
    if-eqz v4, :cond_0

    .line 2492
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    .line 2494
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v6, "gsm.network.type"

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 2513
    .local v1, Check:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2516
    .end local v1           #Check:Ljava/lang/Thread;
    .end local v4           #typeChanged:Z
    :cond_0
    return-void

    .line 2466
    .end local v2           #oldNetworkType:I
    :cond_1
    aget v5, v3, v7

    if-ne v5, v9, :cond_2

    .line 2467
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    goto :goto_0

    .line 2470
    :cond_2
    const-string v5, "GSM"

    const-string v5, "[HSDPA] invalid HSDPA state"

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    goto :goto_0

    .line 2483
    .restart local v2       #oldNetworkType:I
    .restart local v4       #typeChanged:Z
    :cond_3
    if-lt v2, v10, :cond_4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHsdpaEnabled:Z

    if-nez v5, :cond_4

    .line 2484
    const/4 v4, 0x1

    .line 2485
    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newHsdpaNetworkType:I

    goto :goto_1

    .line 2488
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onO2HomeZoneInfo(Landroid/os/AsyncResult;)V
    .locals 20
    .parameter "ar"

    .prologue
    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 2393
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .line 2394
    .local v6, homeZoneInfo:[I
    const/16 v17, 0x0

    aget v14, v6, v17

    .line 2395
    .local v14, zone_inid:I
    const/16 v17, 0x1

    aget v16, v6, v17

    .line 2396
    .local v16, zone_type:I
    const/16 v17, 0x2

    aget v15, v6, v17

    .line 2397
    .local v15, zone_tag_present:I
    const/16 v17, 0xd

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v12, v0

    .line 2398
    .local v12, tempAlphaID:[B
    const-string v9, ""

    .line 2401
    .local v9, message:Ljava/lang/CharSequence;
    const/16 v10, 0x309

    .line 2402
    .local v10, notificationId:I
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 2406
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2407
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/high16 v19, 0x1000

    move-object v0, v5

    move/from16 v1, v18

    move-object v2, v8

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2409
    const-string/jumbo v17, "notification"

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 2412
    .local v11, notificationManager:Landroid/app/NotificationManager;
    const-string v13, ""

    .line 2413
    .local v13, title:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2415
    packed-switch v14, :pswitch_data_0

    .line 2457
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2419
    :pswitch_1
    if-eqz v16, :cond_0

    .line 2423
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2424
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v17, 0xd

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 2425
    add-int/lit8 v17, v7, 0x3

    aget v17, v6, v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v12, v7

    .line 2424
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2427
    :cond_1
    const/16 v17, 0x0

    const/16 v18, 0xd

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v9

    .line 2429
    .end local v7           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v13

    move-object v3, v9

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2431
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const v18, 0x1080381

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 2434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v11

    move v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 2439
    :cond_3
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    const v18, 0x108037f

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object v0, v11

    move v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2451
    :pswitch_2
    invoke-virtual {v11, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 2415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    const/16 v10, 0x3ec

    const/16 v9, 0x3eb

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "GSM"

    .line 1756
    const-string v4, "GSM"

    const-string v4, "[DSAC DEB] onRestrictedStateChanged"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance v2, Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;-><init>()V

    .line 1759
    .local v2, newRs:Lcom/android/internal/telephony/gsm/RestrictedState;
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_5

    .line 1762
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v0, v4

    check-cast v0, [I

    move-object v1, v0

    .line 1763
    .local v1, ints:[I
    aget v3, v1, v6

    .line 1765
    .local v3, state:I
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_6

    :cond_0
    move v4, v8

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 1769
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_2

    .line 1770
    and-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_1

    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_7

    :cond_1
    move v4, v8

    :goto_1
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1773
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_8

    move v4, v8

    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->setPsRestricted(Z)V

    .line 1777
    :cond_2
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] new rs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1780
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1781
    const/16 v4, 0x3e9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1792
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1793
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1795
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1838
    :cond_4
    :goto_4
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    .line 1840
    .end local v1           #ints:[I
    .end local v3           #state:I
    :cond_5
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] current rs at return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    return-void

    .restart local v1       #ints:[I
    .restart local v3       #state:I
    :cond_6
    move v4, v6

    .line 1765
    goto/16 :goto_0

    :cond_7
    move v4, v6

    .line 1770
    goto :goto_1

    :cond_8
    move v4, v6

    .line 1773
    goto :goto_2

    .line 1782
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1783
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1784
    const/16 v4, 0x3ea

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 1796
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1798
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1799
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1801
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1803
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1804
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1806
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1807
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1809
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1810
    :cond_e
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1812
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1814
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1815
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1817
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1818
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1820
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1821
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1823
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1826
    :cond_12
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1828
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1829
    :cond_13
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1831
    const/16 v4, 0x3ee

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1832
    :cond_14
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1834
    const/16 v4, 0x3ed

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private onSignalStrengthResult(Landroid/os/AsyncResult;)V
    .locals 15
    .parameter "ar"

    .prologue
    const/4 v3, -0x1

    .line 1710
    iget-object v13, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1711
    .local v13, oldSignalStrength:Landroid/telephony/SignalStrength;
    const/16 v14, 0x63

    .line 1713
    .local v14, rssi:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v1, v0

    if-eqz v1, :cond_1

    .line 1716
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1730
    :goto_0
    new-instance v1, Landroid/telephony/SignalStrength;

    and-int/lit16 v2, v14, 0xff

    const/4 v9, 0x1

    const v4, 0xff00

    and-int/2addr v4, v14

    shr-int/lit8 v10, v4, 0x8

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    invoke-direct/range {v1 .. v10}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZI)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1737
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v13}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1740
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySignalStrength()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :cond_0
    :goto_1
    return-void

    .line 1718
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 1721
    .local v12, ints:[I
    array-length v1, v12

    if-eqz v1, :cond_2

    .line 1722
    const/4 v1, 0x0

    aget v14, v12, v1

    goto :goto_0

    .line 1724
    :cond_2
    const-string v1, "GSM"

    const-string v2, "Bogus signal strength response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/16 v14, 0x63

    goto :goto_0

    .line 1741
    .end local v12           #ints:[I
    :catch_0
    move-exception v1

    move-object v11, v1

    .line 1742
    .local v11, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SignalStrength not notified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pollState(Z)V
    .locals 4
    .parameter "issuePollCmd"

    .prologue
    const/4 v3, 0x0

    .line 1190
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aput v3, v0, v3

    .line 1193
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1229
    if-eqz p1, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1237
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getGPRSRegistrationState(Landroid/os/Message;)V

    .line 1246
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1247
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1195
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1197
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1198
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1199
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1203
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1205
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1206
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1215
    :pswitch_2
    const-string v0, "GSM"

    const-string v1, "Radio Technology Change ongoing, setting SS to off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1218
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1219
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    goto :goto_0

    .line 1193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private pollStateDone()V
    .locals 32

    .prologue
    .line 1288
    const-string v28, "GSM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] newSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] oldGprs="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " newGprs="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " oldType="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " newType="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-nez v28, :cond_9

    const/16 v28, 0x1

    move/from16 v15, v28

    .line 1300
    .local v15, hasRegistered:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-nez v28, :cond_0

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_a

    .line 1302
    const-string v28, "GSM"

    const-string/jumbo v29, "pollStateDone(), STATE_IN_SERVICE but newSS.getOperatorNumeric() returned NULL"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-nez v28, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-eqz v28, :cond_b

    const/16 v28, 0x1

    move/from16 v10, v28

    .line 1318
    .local v10, hasDeregistered:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v28, v0

    if-nez v28, :cond_c

    const/16 v28, 0x1

    move/from16 v11, v28

    .line 1322
    .local v11, hasGprsAttached:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v28, v0

    if-nez v28, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v28, v0

    if-eqz v28, :cond_d

    const/16 v28, 0x1

    move/from16 v12, v28

    .line 1326
    .local v12, hasGprsDetached:Z
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    const/16 v28, 0x1

    move/from16 v14, v28

    .line 1328
    .local v14, hasNetworkTypeChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_f

    const/16 v28, 0x1

    move/from16 v9, v28

    .line 1330
    .local v9, hasChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-nez v28, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-eqz v28, :cond_10

    const/16 v28, 0x1

    move/from16 v17, v28

    .line 1332
    .local v17, hasRoamingOn:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v28

    if-nez v28, :cond_11

    const/16 v28, 0x1

    move/from16 v16, v28

    .line 1334
    .local v16, hasRoamingOff:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_12

    const/16 v28, 0x1

    move/from16 v13, v28

    .line 1337
    .local v13, hasLocationChanged:Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    .line 1338
    :cond_1
    const v28, 0xc3c2

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1343
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    .line 1344
    .local v23, tss:Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    .line 1345
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v22, v0

    .line 1350
    .local v22, tcl:Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1351
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1356
    if-eqz v14, :cond_4

    .line 1357
    const/4 v6, -0x1

    .line 1358
    .local v6, cid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v19

    check-cast v19, Landroid/telephony/gsm/GsmCellLocation;

    .line 1359
    .local v19, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 1360
    :cond_3
    const v28, 0xc3c0

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1361
    const-string v28, "GSM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "RAT switched "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " -> "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " at cell "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    .end local v6           #cid:I
    .end local v19           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    .line 1367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1371
    if-eqz v14, :cond_5

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.network.type"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    :cond_5
    if-eqz v15, :cond_6

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1380
    :cond_6
    if-eqz v9, :cond_22

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v20

    .line 1389
    .local v20, operatorNumeric:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.numeric"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-nez v28, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 1397
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GetTimezoneInfoUsingMcc(Ljava/lang/String;)V

    .line 1401
    :cond_7
    if-nez v20, :cond_13

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.iso-country"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1491
    :cond_8
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v30

    if-eqz v30, :cond_1e

    const-string/jumbo v30, "true"

    :goto_b
    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :goto_c
    const-string v28, "gsm.operator.isroaming"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_1f

    const-string/jumbo v29, "true"

    :goto_d
    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_20

    .line 1496
    const-wide/16 v28, 0xa

    :try_start_0
    invoke-static/range {v28 .. v29}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 1497
    :catch_0
    move-exception v28

    goto :goto_c

    .line 1295
    .end local v9           #hasChanged:Z
    .end local v10           #hasDeregistered:Z
    .end local v11           #hasGprsAttached:Z
    .end local v12           #hasGprsDetached:Z
    .end local v13           #hasLocationChanged:Z
    .end local v14           #hasNetworkTypeChanged:Z
    .end local v15           #hasRegistered:Z
    .end local v16           #hasRoamingOff:Z
    .end local v17           #hasRoamingOn:Z
    .end local v20           #operatorNumeric:Ljava/lang/String;
    .end local v22           #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .end local v23           #tss:Landroid/telephony/ServiceState;
    :cond_9
    const/16 v28, 0x0

    move/from16 v15, v28

    goto/16 :goto_0

    .line 1305
    .restart local v15       #hasRegistered:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Lcom/android/internal/telephony/gsm/SIMRecords;->getAllEonsNames(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1307
    .local v7, eons:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object v1, v7

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1314
    .end local v7           #eons:Ljava/lang/String;
    :cond_b
    const/16 v28, 0x0

    move/from16 v10, v28

    goto/16 :goto_2

    .line 1318
    .restart local v10       #hasDeregistered:Z
    :cond_c
    const/16 v28, 0x0

    move/from16 v11, v28

    goto/16 :goto_3

    .line 1322
    .restart local v11       #hasGprsAttached:Z
    :cond_d
    const/16 v28, 0x0

    move/from16 v12, v28

    goto/16 :goto_4

    .line 1326
    .restart local v12       #hasGprsDetached:Z
    :cond_e
    const/16 v28, 0x0

    move/from16 v14, v28

    goto/16 :goto_5

    .line 1328
    .restart local v14       #hasNetworkTypeChanged:Z
    :cond_f
    const/16 v28, 0x0

    move/from16 v9, v28

    goto/16 :goto_6

    .line 1330
    .restart local v9       #hasChanged:Z
    :cond_10
    const/16 v28, 0x0

    move/from16 v17, v28

    goto/16 :goto_7

    .line 1332
    .restart local v17       #hasRoamingOn:Z
    :cond_11
    const/16 v28, 0x0

    move/from16 v16, v28

    goto/16 :goto_8

    .line 1334
    .restart local v16       #hasRoamingOff:Z
    :cond_12
    const/16 v28, 0x0

    move/from16 v13, v28

    goto/16 :goto_9

    .line 1407
    .restart local v13       #hasLocationChanged:Z
    .restart local v20       #operatorNumeric:Ljava/lang/String;
    .restart local v22       #tcl:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v23       #tss:Landroid/telephony/ServiceState;
    :cond_13
    const-string v18, ""

    .line 1409
    .local v18, iso:Ljava/lang/String;
    const/16 v28, 0x0

    const/16 v29, 0x3

    :try_start_1
    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v18

    .line 1417
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    const-string v29, "gsm.operator.iso-country"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHome:Z

    move/from16 v28, v0

    if-nez v28, :cond_14

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->CheckApplyGlobalDataRoaming()V

    .line 1424
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 1425
    const-string v28, "GSM"

    const-string v29, "[NITZ] pollStateDone: mNeedFixZone(true)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/16 v26, 0x0

    .line 1430
    .local v26, zone:Ljava/util/TimeZone;
    const-string/jumbo v28, "persist.sys.timezone"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1433
    .local v27, zoneName:Ljava/lang/String;
    sget-object v28, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    sget-object v29, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static/range {v28 .. v29}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    if-nez v28, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v28, v0

    if-nez v28, :cond_18

    if-eqz v27, :cond_18

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_18

    sget-object v28, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    sget-object v29, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v28

    if-gez v28, :cond_18

    .line 1438
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v26

    .line 1442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 1443
    .local v24, tzOffset:J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1480
    .end local v24           #tzOffset:J
    :cond_15
    :goto_f
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 1482
    if-eqz v26, :cond_8

    .line 1483
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 1484
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1486
    :cond_16
    invoke-virtual/range {v26 .. v26}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1411
    .end local v26           #zone:Ljava/util/TimeZone;
    .end local v27           #zoneName:Ljava/lang/String;
    :catch_1
    move-exception v28

    move-object/from16 v8, v28

    .line 1412
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string v28, "GSM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "countryCodeForMcc error"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1413
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v28

    move-object/from16 v8, v28

    .line 1414
    .local v8, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v28, "GSM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "countryCodeForMcc error"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1447
    .end local v8           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v24       #tzOffset:J
    .restart local v26       #zone:Ljava/util/TimeZone;
    .restart local v27       #zoneName:Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v28, v0

    sub-long v28, v28, v24

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_f

    .line 1449
    .end local v24           #tzOffset:J
    :cond_18
    const-string v28, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v26

    goto/16 :goto_f

    .line 1458
    :cond_19
    const-string v28, "GSM"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[NITZ] pollStateDone: iso = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", dst = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", ZoneOffset = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1d

    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    const/16 v29, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move-wide/from16 v2, v30

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 1462
    if-nez v26, :cond_1a

    .line 1463
    const-string v28, "GSM"

    const-string v29, "[NITZ] pollStateDone: try without iso"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    const/16 v29, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v26

    .line 1475
    :cond_1a
    :goto_12
    if-eqz v26, :cond_15

    .line 1476
    const-string v28, "GSM"

    const-string v29, "[NITZ] pollStateDone: zone found"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1461
    :cond_1b
    const/16 v29, 0x0

    goto :goto_10

    .line 1464
    :cond_1c
    const/16 v29, 0x0

    goto :goto_11

    .line 1468
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move-wide/from16 v2, v30

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    .line 1469
    if-nez v26, :cond_1a

    .line 1470
    const-string v28, "GSM"

    const-string v29, "[NITZ] pollStateDone: try without iso"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v26

    goto :goto_12

    .line 1491
    .end local v18           #iso:Ljava/lang/String;
    .end local v26           #zone:Ljava/util/TimeZone;
    .end local v27           #zoneName:Ljava/lang/String;
    :cond_1e
    const-string v30, "false"

    goto/16 :goto_b

    .line 1495
    :cond_1f
    const-string v29, "false"

    goto/16 :goto_d

    .line 1501
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHome:Z

    move/from16 v28, v0

    if-eqz v28, :cond_21

    .line 1502
    const-string v28, "DATAROAMING"

    const-string v29, " GsmServiceStateTracker NOTIFY  homeRegistrants.notify)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->homeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1506
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1509
    .end local v20           #operatorNumeric:Ljava/lang/String;
    :cond_22
    if-eqz v11, :cond_23

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1516
    :cond_23
    if-eqz v15, :cond_24

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/ServiceState;->getState()I

    move-result v28

    if-nez v28, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v28, v0

    if-nez v28, :cond_24

    if-nez v11, :cond_24

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1525
    :cond_24
    if-eqz v12, :cond_25

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1529
    :cond_25
    if-eqz v14, :cond_26

    .line 1531
    new-instance v21, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    .line 1546
    .local v21, propCheck:Ljava/lang/Thread;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 1550
    .end local v21           #propCheck:Ljava/lang/Thread;
    :cond_26
    if-eqz v17, :cond_27

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1554
    :cond_27
    if-eqz v16, :cond_28

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->roamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1558
    :cond_28
    if-eqz v13, :cond_29

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1562
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v28

    if-nez v28, :cond_2b

    .line 1563
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v28, v0

    if-nez v28, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v28, v0

    if-nez v28, :cond_2a

    .line 1564
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "gprs_register_check_period_ms"

    const v30, 0xea60

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1570
    .local v5, check_period:I
    const/16 v28, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1576
    .end local v5           #check_period:I
    :cond_2a
    :goto_13
    return-void

    .line 1574
    :cond_2b
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_13
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 3

    .prologue
    .line 1688
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1696
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1697
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1702
    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsHome(I)Z
    .locals 1
    .parameter "code"

    .prologue
    const/4 v0, 0x1

    .line 2728
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 1876
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 4
    .parameter "code"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1845
    packed-switch p1, :pswitch_data_0

    .line 1864
    :pswitch_0
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1865
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v3

    .line 1854
    goto :goto_0

    .line 1845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private revertToNitz()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 2315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2327
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reverting to NITZ: tz=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' mSavedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavedAtTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2324
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private saveAirplaneBackup(Z)V
    .locals 8
    .parameter "enabling"

    .prologue
    .line 263
    const-string v0, "/data/misc/radio/airplanemode"

    .line 265
    .local v0, AIRPLANE_MODE:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v3, fileAirplane:Ljava/io/File;
    const/4 v4, 0x0

    .line 267
    .local v4, out:Ljava/io/OutputStream;
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 269
    .local v1, airplaneState:[B
    const/4 v6, 0x0

    if-eqz p1, :cond_0

    const/16 v7, 0x31

    :goto_0
    aput-byte v7, v1, v6

    .line 271
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    .end local v4           #out:Ljava/io/OutputStream;
    .local v5, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 290
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_1
    move-object v4, v5

    .line 295
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/OutputStream;
    :goto_2
    return-void

    .line 269
    :cond_0
    const/16 v7, 0x30

    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    .line 274
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 279
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 280
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 285
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v4           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 287
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 291
    :catch_3
    move-exception v2

    .line 292
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 290
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 289
    :goto_4
    throw v6

    .line 291
    :catch_4
    move-exception v2

    .line 292
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 291
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method private saveNitzTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    .line 2278
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 2279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 2280
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .parameter "zoneId"

    .prologue
    .line 2274
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 2275
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 2306
    const-string v1, "GSM"

    const-string v2, "[NITZ] setAndBroadcastNetworkSetTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 2308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2309
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2310
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2311
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2312
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .parameter "zoneId"

    .prologue
    .line 2289
    const-string v2, "GSM"

    const-string v3, "[NITZ] setAndBroadcastNetworkSetTimeZone"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2292
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 2293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2294
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2295
    const-string/jumbo v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2296
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2297
    return-void
.end method

.method private setNotification(I)V
    .locals 10
    .parameter "notifyType"

    .prologue
    const-string v9, "GSM"

    .line 2336
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] create notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2339
    .local v0, context:Landroid/content/Context;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2340
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 2341
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 2342
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 2343
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2344
    .local v2, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v7, 0x0

    const/high16 v8, 0x1000

    invoke-static {v0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2347
    const-string v1, ""

    .line 2348
    .local v1, details:Ljava/lang/CharSequence;
    const v6, 0x10400f1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2349
    .local v5, title:Ljava/lang/CharSequence;
    const/16 v3, 0x3e7

    .line 2351
    .local v3, notificationId:I
    packed-switch p1, :pswitch_data_0

    .line 2373
    :goto_0
    :pswitch_0
    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DSAC DEB] put notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2375
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v0, v5, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2378
    const-string/jumbo v6, "notification"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2381
    .local v4, notificationManager:Landroid/app/NotificationManager;
    const/16 v6, 0x3ea

    if-eq p1, v6, :cond_0

    const/16 v6, 0x3ec

    if-ne p1, v6, :cond_1

    .line 2383
    :cond_0
    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2388
    :goto_1
    return-void

    .line 2353
    .end local v4           #notificationManager:Landroid/app/NotificationManager;
    :pswitch_1
    const/16 v3, 0x378

    .line 2354
    const v6, 0x10400f2

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2355
    goto :goto_0

    .line 2357
    :pswitch_2
    const/16 v3, 0x378

    .line 2358
    goto :goto_0

    .line 2360
    :pswitch_3
    const v6, 0x10400f5

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2361
    goto :goto_0

    .line 2363
    :pswitch_4
    const v6, 0x10400f4

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2364
    goto :goto_0

    .line 2366
    :pswitch_5
    const v6, 0x10400f3

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2367
    goto :goto_0

    .line 2386
    .restart local v4       #notificationManager:Landroid/app/NotificationManager;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v4, v3, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 2351
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 1176
    new-instance v0, Landroid/telephony/SignalStrength;

    const/16 v1, 0x63

    const/4 v8, 0x1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1177
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 36
    .parameter "nitz"
    .parameter "nitzReceiveTime"

    .prologue
    .line 1990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 1991
    .local v24, start:J
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " delay="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sub-long v32, v24, p2

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v30, "GSM"

    const-string v31, "[NAM] Close Manual Selection Popup. Send Intent ACTION_NITZ_SET_TIME."

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    new-instance v14, Landroid/content/Intent;

    const-string v30, "android.intent.action.NITZ_SET_TIME"

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1998
    .local v14, intent:Landroid/content/Intent;
    const/high16 v30, 0x2000

    move-object v0, v14

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2005
    :try_start_0
    const-string v30, "GMT"

    invoke-static/range {v30 .. v30}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 2018
    .local v7, c:Ljava/util/Calendar;
    const-string v30, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2043
    .local v20, nitzSubs:[Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 2044
    const/16 v30, 0x10

    const/16 v31, 0x0

    move-object v0, v7

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2048
    const/16 v30, 0x0

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v28, v0

    .line 2049
    .local v28, year:I
    const/16 v30, 0x1

    move-object v0, v7

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2052
    const/16 v30, 0x1

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v31, 0x1

    sub-int v19, v30, v31

    .line 2053
    .local v19, month:I
    const/16 v30, 0x2

    move-object v0, v7

    move/from16 v1, v30

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2055
    const/16 v30, 0x2

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2056
    .local v8, date:I
    const/16 v30, 0x5

    move-object v0, v7

    move/from16 v1, v30

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2058
    const/16 v30, 0x3

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2059
    .local v12, hour:I
    const/16 v30, 0xa

    move-object v0, v7

    move/from16 v1, v30

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2061
    const/16 v30, 0x4

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 2062
    .local v18, minute:I
    const/16 v30, 0xc

    move-object v0, v7

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2064
    const/16 v30, 0x5

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 2065
    .local v21, second:I
    const/16 v30, 0xd

    move-object v0, v7

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 2067
    const/16 v30, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const/16 v30, 0x1

    move/from16 v22, v30

    .line 2069
    .local v22, sign:Z
    :goto_0
    const/16 v30, 0x6

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 2071
    .local v26, tzOffset:I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_7

    const/16 v30, 0x7

    aget-object v30, v20, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move/from16 v9, v30

    .line 2091
    .local v9, dst:I
    :goto_1
    if-eqz v22, :cond_8

    const/16 v30, 0x1

    :goto_2
    mul-int v30, v30, v26

    mul-int/lit8 v30, v30, 0xf

    mul-int/lit8 v30, v30, 0x3c

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    .line 2093
    const/16 v29, 0x0

    .line 2099
    .local v29, zone:Ljava/util/TimeZone;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_0

    .line 2100
    const/16 v30, 0x8

    aget-object v30, v20, v30

    const/16 v31, 0x21

    const/16 v32, 0x2f

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v27

    .line 2101
    .local v27, tzname:Ljava/lang/String;
    const/16 v30, 0x2f

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    .line 2103
    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 2133
    .end local v27           #tzname:Ljava/lang/String;
    :cond_0
    :goto_3
    const-string v30, "gsm.operator.iso-country"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2135
    .local v15, iso:Ljava/lang/String;
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[NITZ] setTimeFromNITZString: iso = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", dst = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", ZoneOffset = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    if-nez v29, :cond_1

    .line 2141
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1

    .line 2155
    const/16 v30, 0x3

    move v0, v9

    move/from16 v1, v30

    if-eq v0, v1, :cond_f

    .line 2156
    if-eqz v15, :cond_d

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_d

    .line 2157
    if-eqz v9, :cond_b

    const/16 v30, 0x1

    :goto_4
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    move/from16 v0, v26

    move/from16 v1, v30

    move-wide/from16 v2, v31

    move-object v4, v15

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 2159
    if-nez v29, :cond_1

    .line 2160
    const-string v30, "GSM"

    const-string v31, "[NITZ] setTimeFromNITZString: try without iso"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    if-eqz v9, :cond_c

    const/16 v30, 0x1

    :goto_5
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v30

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v29

    .line 2184
    :cond_1
    :goto_6
    if-nez v29, :cond_3

    .line 2188
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    .line 2189
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 2190
    const/16 v30, 0x1

    move v0, v9

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    const/16 v30, 0x2

    move v0, v9

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    :cond_2
    const/16 v30, 0x1

    :goto_7
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 2191
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 2192
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    .line 2194
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "[NITZ] mNeedFixZone = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZone:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mZoneOffset = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mZoneDst = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mZoneTime = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mDST = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDST:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    :cond_3
    if-eqz v29, :cond_5

    .line 2203
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 2204
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 2206
    :cond_4
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2209
    :cond_5
    const-string v30, "gsm.ignore-nitz"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2210
    .local v13, ignore:Ljava/lang/String;
    if-eqz v13, :cond_11

    const-string/jumbo v30, "yes"

    move-object v0, v13

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 2211
    const-string v30, "GSM"

    const-string v31, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    .end local v7           #c:Ljava/util/Calendar;
    .end local v8           #date:I
    .end local v9           #dst:I
    .end local v12           #hour:I
    .end local v13           #ignore:Ljava/lang/String;
    .end local v15           #iso:Ljava/lang/String;
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v21           #second:I
    .end local v22           #sign:Z
    .end local v26           #tzOffset:I
    .end local v28           #year:I
    .end local v29           #zone:Ljava/util/TimeZone;
    :goto_8
    return-void

    .line 2067
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v8       #date:I
    .restart local v12       #hour:I
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v21       #second:I
    .restart local v28       #year:I
    :cond_6
    const/16 v30, 0x0

    move/from16 v22, v30

    goto/16 :goto_0

    .line 2071
    .restart local v22       #sign:Z
    .restart local v26       #tzOffset:I
    :cond_7
    const/16 v30, 0x0

    move/from16 v9, v30

    goto/16 :goto_1

    .line 2091
    .restart local v9       #dst:I
    :cond_8
    const/16 v30, -0x1

    goto/16 :goto_2

    .line 2109
    .restart local v27       #tzname:Ljava/lang/String;
    .restart local v29       #zone:Ljava/util/TimeZone;
    :cond_9
    const/16 v30, 0x8

    aget-object v6, v20, v30

    .line 2110
    .local v6, NitzOperator:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 2112
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2113
    const/16 v30, 0x0

    const/16 v31, 0x3

    move-object v0, v6

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2114
    .local v5, NewMcc:Ljava/lang/String;
    const-string v30, "000"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 2116
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->PrevMcc:Ljava/lang/String;

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 2120
    .local v23, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 2121
    .local v10, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v30, "prev_mcc_num"

    move-object v0, v10

    move-object/from16 v1, v30

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2122
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 2259
    .end local v5           #NewMcc:Ljava/lang/String;
    .end local v6           #NitzOperator:Ljava/lang/String;
    .end local v7           #c:Ljava/util/Calendar;
    .end local v8           #date:I
    .end local v9           #dst:I
    .end local v10           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #hour:I
    .end local v18           #minute:I
    .end local v19           #month:I
    .end local v20           #nitzSubs:[Ljava/lang/String;
    .end local v21           #second:I
    .end local v22           #sign:Z
    .end local v23           #sp:Landroid/content/SharedPreferences;
    .end local v26           #tzOffset:I
    .end local v27           #tzname:Ljava/lang/String;
    .end local v28           #year:I
    .end local v29           #zone:Ljava/util/TimeZone;
    :catch_0
    move-exception v30

    move-object/from16 v11, v30

    .line 2260
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v11

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 2127
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v6       #NitzOperator:Ljava/lang/String;
    .restart local v7       #c:Ljava/util/Calendar;
    .restart local v8       #date:I
    .restart local v9       #dst:I
    .restart local v12       #hour:I
    .restart local v18       #minute:I
    .restart local v19       #month:I
    .restart local v20       #nitzSubs:[Ljava/lang/String;
    .restart local v21       #second:I
    .restart local v22       #sign:Z
    .restart local v26       #tzOffset:I
    .restart local v27       #tzname:Ljava/lang/String;
    .restart local v28       #year:I
    .restart local v29       #zone:Ljava/util/TimeZone;
    :cond_a
    :try_start_1
    const-string v30, "GSM"

    const-string v31, "NitzOperator is null"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2157
    .end local v6           #NitzOperator:Ljava/lang/String;
    .end local v27           #tzname:Ljava/lang/String;
    .restart local v15       #iso:Ljava/lang/String;
    :cond_b
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 2161
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 2169
    :cond_d
    const-string v30, "GSM"

    const-string v31, "[NITZ] setTimeFromNITZString: test network?"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    if-eqz v9, :cond_e

    const/16 v30, 0x1

    :goto_9
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v30

    move-wide/from16 v3, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v29

    goto/16 :goto_6

    :cond_e
    const/16 v30, 0x0

    goto :goto_9

    .line 2175
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v30 .. v33}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 2177
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 2190
    :cond_10
    const/16 v30, 0x0

    goto/16 :goto_7

    .line 2216
    .restart local v13       #ignore:Ljava/lang/String;
    :cond_11
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2218
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v30

    if-eqz v30, :cond_14

    .line 2219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v16, v30, p2

    .line 2222
    .local v16, millisSinceNitzReceived:J
    const-wide/16 v30, 0x0

    cmp-long v30, v16, v30

    if-gez v30, :cond_12

    .line 2224
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2257
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    .line 2230
    :cond_12
    const-wide/32 v30, 0x7fffffff

    cmp-long v30, v16, v30

    if-lez v30, :cond_13

    .line 2232
    :try_start_4
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/32 v32, 0x5265c00

    div-long v32, v16, v32

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " days"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2257
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_8

    .line 2239
    :cond_13
    const/16 v30, 0xe

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v31, v0

    :try_start_6
    move-object v0, v7

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 2241
    const-string v30, "GSM"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "NITZ: Setting time of day to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " NITZ receive delay(ms): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " gained(ms): "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    sub-long v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " from "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 2248
    const-string v30, "GSM"

    const-string v31, "NITZ: after Setting time of day"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    .end local v16           #millisSinceNitzReceived:J
    :cond_14
    const-string v30, "gsm.nitz.time"

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2257
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    :catchall_0
    move-exception v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v30
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method private showSimProfileOption(Z)V
    .locals 20
    .parameter "cscIntent"

    .prologue
    .line 2575
    const-string v4, "csc.preferences_name"

    .line 2576
    .local v4, CSC_PREFERENCES_NAME:Ljava/lang/String;
    const-string v5, "csc.key.already_executed"

    .line 2578
    .local v5, KEY_CSC_ALREADY_EXECUTED:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v13

    .line 2579
    .local v13, operator:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2582
    .local v7, cscUpdated:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "com.samsung.sec.android.application.csc"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 2583
    .local v6, context:Landroid/content/Context;
    const/16 v17, 0x1

    move-object v0, v6

    move-object v1, v4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 2584
    .local v14, preferences:Landroid/content/SharedPreferences;
    const/16 v17, 0x0

    move-object v0, v14

    move-object v1, v5

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2590
    .end local v6           #context:Landroid/content/Context;
    .end local v14           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SIM profile] operator: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SIM profile] cscUpdated: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " cscIntent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    if-eqz v13, :cond_6

    if-nez p1, :cond_0

    if-eqz v7, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsProfileSelected:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 2594
    const-string/jumbo v15, "ril.isIccChanged"

    .line 2596
    .local v15, propNameChangedICC:Ljava/lang/String;
    const-string v17, "0"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2597
    .local v11, iccChanged:Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string v17, "1"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 2600
    :cond_2
    const-string v17, "1"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 2601
    const-string v17, "GSM"

    const-string v18, "[SIM profile] SIM changed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->clearNwkProfilePreference()V

    .line 2605
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->createAllNetworkList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2608
    const-string v17, "GSM"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[SIM profile] network list size: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 2612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v12, v0

    .line 2614
    .local v12, items:[Ljava/lang/String;
    const/4 v10, 0x0

    .end local p1
    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 2615
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->allNetworkName:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v17, v12, v10

    .line 2614
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2586
    .end local v10           #i:I
    .end local v11           #iccChanged:Ljava/lang/String;
    .end local v12           #items:[Ljava/lang/String;
    .end local v15           #propNameChangedICC:Ljava/lang/String;
    .restart local p1
    :catch_0
    move-exception v17

    move-object/from16 v9, v17

    .line 2587
    .local v9, e:Ljava/lang/Exception;
    const-string v17, "GSM"

    const-string v18, "[SIM profile] exception occured"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2619
    .end local v9           #e:Ljava/lang/Exception;
    .end local p1
    .restart local v10       #i:I
    .restart local v11       #iccChanged:Ljava/lang/String;
    .restart local v12       #items:[Ljava/lang/String;
    .restart local v15       #propNameChangedICC:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 2620
    .local v16, r:Landroid/content/res/Resources;
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v18, 0x10404bc

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object v1, v12

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2625
    .local v8, d:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x7d3

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setType(I)V

    .line 2626
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 2636
    .end local v8           #d:Landroid/app/AlertDialog;
    .end local v10           #i:I
    .end local v11           #iccChanged:Ljava/lang/String;
    .end local v12           #items:[Ljava/lang/String;
    .end local v15           #propNameChangedICC:Ljava/lang/String;
    .end local v16           #r:Landroid/content/res/Resources;
    :cond_6
    :goto_2
    return-void

    .line 2629
    .restart local v11       #iccChanged:Ljava/lang/String;
    .restart local v15       #propNameChangedICC:Ljava/lang/String;
    .restart local p1
    :cond_7
    const-string v17, "GSM"

    const-string v18, "[SIM profile] refresh profile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    sget-object v18, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_2
.end method

.method private static twoDigitsAt(Ljava/lang/String;I)I
    .locals 4
    .parameter "s"
    .parameter "offset"

    .prologue
    const/16 v3, 0xa

    .line 1923
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1924
    .local v0, a:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1926
    .local v1, b:I
    if-ltz v0, :cond_0

    if-gez v1, :cond_1

    .line 1928
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1931
    :cond_1
    mul-int/lit8 v2, v0, 0xa

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public CheckApplyGlobalDataRoaming()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "GSM"

    .line 2732
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFactoryMode:Z

    if-eq v0, v3, :cond_0

    const-string v0, "gsm.default.esn"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "ril.IMSI"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999999999999999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2733
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIsFactoryMode:Z

    .line 2734
    const-string v0, "GSM"

    const-string v0, "Do not use Roaming in Factory mode"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    :goto_0
    return-void

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2739
    const-string v0, "GSM"

    const-string v0, " APPLY DATAROAMING  FEATUR"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2740
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->SetDataOnRoamingUsing(I)V

    goto :goto_0

    .line 2742
    :cond_2
    const-string v0, "GSM"

    const-string v0, " DEVICE is NOT provisioned - skip it "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetDataOnRoamingUsing(I)V
    .locals 2
    .parameter "var"

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_apply"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2725
    return-void
.end method

.method protected afterRequestDisconnectDC()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "StkAppInstaller"

    const-string v9, "GSM"

    .line 843
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 845
    .local v1, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_2

    .line 847
    const-string v5, "GSM"

    const-string v5, "Data shutdown complete."

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 863
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 866
    .local v3, isAirplaneMode:I
    if-ne v3, v8, :cond_1

    .line 869
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 870
    .local v4, pm:Landroid/content/pm/PackageManager;
    if-nez v4, :cond_0

    .line 871
    const-string v5, "StkAppInstaller"

    const-string v5, "Package Manager null"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.stk"

    const-string v6, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .local v0, cName:Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    .end local v0           #cName:Landroid/content/ComponentName;
    .end local v3           #isAirplaneMode:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    return-void

    .line 850
    :cond_2
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    const/16 v6, 0x96

    if-le v5, v6, :cond_3

    .line 851
    const-string v5, "GSM"

    const-string v5, "Data shutdown not complete. force to radio down."

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 856
    const/16 v5, 0x32

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 880
    .restart local v0       #cName:Landroid/content/ComponentName;
    .restart local v3       #isAirplaneMode:I
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 881
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "StkAppInstaller"

    const-string v5, "Could not change STK app state"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 433
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkStateChanged(Landroid/os/Handler;)V

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMReady(Landroid/os/Handler;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 441
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 444
    const-string v0, "GSM"

    const-string v1, "GsmServiceStateTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method getCurrentGprsState()I
    .locals 1

    .prologue
    .line 1939
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    return v0
.end method

.method public getSelectedNetworkProfile()Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;
    .locals 1

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 544
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    packed-switch v15, :pswitch_data_0

    .line 790
    :pswitch_0
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unhandled message with number: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 554
    .restart local p0
    .restart local p1
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    move v15, v0

    if-eqz v15, :cond_1

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 557
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedToRegForSimLoaded:Z

    .line 572
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 582
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 598
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto :goto_0

    .line 602
    :pswitch_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto :goto_0

    .line 609
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v15

    if-nez v15, :cond_0

    .line 613
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 614
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    .line 615
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 620
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 622
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_4

    .line 623
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 624
    .local v13, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 625
    .local v7, lac:I
    const/4 v5, -0x1

    .line 626
    .local v5, cid:I
    array-length v15, v13

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 628
    const/4 v15, 0x1

    :try_start_0
    aget-object v15, v13, v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 629
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 631
    :cond_2
    const/4 v15, 0x2

    aget-object v15, v13, v15

    if-eqz v15, :cond_3

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_3

    .line 632
    const/4 v15, 0x2

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 638
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v7, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 644
    .end local v5           #cid:I
    .end local v7           #lac:I
    .end local v13           #states:[Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 634
    .restart local v5       #cid:I
    .restart local v7       #lac:I
    .restart local v13       #states:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 635
    .local v6, ex:Ljava/lang/NumberFormatException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing location: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 651
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #cid:I
    .end local v6           #ex:Ljava/lang/NumberFormatException;
    .end local v7           #lac:I
    .end local v13           #states:[Ljava/lang/String;
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 653
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 659
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 663
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 665
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v12, p1, v15

    check-cast v12, Ljava/lang/String;

    .line 666
    .local v12, nitzString:Ljava/lang/String;
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const/4 v15, 0x1

    aget-object p1, p1, v15

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 668
    .local v10, nitzReceiveTime:J
    move-object/from16 v0, p0

    move-object v1, v12

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 675
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v10           #nitzReceiveTime:J
    .end local v12           #nitzString:Ljava/lang/String;
    .restart local p1
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 679
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->dontPollSignalStrength:Z

    .line 681
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 685
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 688
    const-string v15, "GSM"

    const-string v16, "[SIM profile] SIM loaded"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->showSimProfileOption(Z)V

    .line 693
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState(Z)V

    goto/16 :goto_0

    .line 698
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 700
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    const/16 v16, 0xf

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 706
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 708
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const/16 v15, 0x15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 709
    .local v9, message:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v16, v0

    move-object v0, v15

    move/from16 v1, v16

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 713
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v9           #message:Landroid/os/Message;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 714
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v15, :cond_0

    .line 715
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-static/range {p0 .. p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v15

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 717
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 722
    .end local v4           #ar:Landroid/os/AsyncResult;
    .restart local p0
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 724
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_5

    .line 725
    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/4 v15, 0x0

    aget v15, p1, v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move v15, v0

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 736
    :goto_2
    const/16 v15, 0x14

    move-object v0, v4

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 737
    .restart local v9       #message:Landroid/os/Message;
    const/4 v14, 0x7

    .line 739
    .local v14, toggledNetworkType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15, v14, v9}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 733
    .end local v9           #message:Landroid/os/Message;
    .end local v14           #toggledNetworkType:I
    .restart local p1
    :cond_5
    const/4 v15, 0x7

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 743
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object v15, v0

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v15

    if-nez v15, :cond_6

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v8

    check-cast v8, Landroid/telephony/gsm/GsmCellLocation;

    .line 749
    .local v8, loc:Landroid/telephony/gsm/GsmCellLocation;
    const v15, 0xc3bb

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 751
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 753
    .end local v8           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 749
    .restart local v8       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/16 v18, -0x1

    goto :goto_3

    .line 760
    .end local v8           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :pswitch_11
    const-string v15, "GSM"

    const-string v16, "[DSAC DEB] EVENT_RESTRICTED_STATE_CHANGED"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 764
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 768
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_12
    const-string v15, "GSM"

    const-string v16, "O2 Homezone info"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 771
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onO2HomeZoneInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 780
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/AsyncResult;

    .line 781
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onHsdpaStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 785
    .end local v4           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v15, "GSM"

    const-string v16, "EVENT_REQUEST_DISCONNECT_DC"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->afterRequestDisconnectDC()V

    goto/16 :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_f
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_1
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 19
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 992
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 1173
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 994
    .restart local p1
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v15, v0

    if-eqz v15, :cond_8

    .line 995
    const/4 v4, 0x0

    .line 997
    .local v4, err:Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v15, v0

    instance-of v15, v15, Lcom/android/internal/telephony/CommandException;

    if-eqz v15, :cond_2

    .line 998
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    .line 1001
    :cond_2
    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v15, :cond_3

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1007
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v15

    if-nez v15, :cond_4

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 1013
    :cond_4
    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v4, v15, :cond_5

    sget-object v15, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v4, v15, :cond_5

    .line 1015
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    .end local v4           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v15, v0

    const/16 v16, 0x0

    aget v17, v15, v16

    const/16 v18, 0x1

    sub-int v17, v17, v18

    aput v17, v15, v16

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->pollingContext:[I

    move-object v15, v0

    const/16 v16, 0x0

    aget v15, v15, v16

    if-nez v15, :cond_0

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move v15, v0

    if-eqz v15, :cond_13

    :cond_6
    const/4 v15, 0x1

    move v11, v15

    .line 1151
    .local v11, roaming:Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1152
    const/4 v11, 0x0

    .line 1154
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    invoke-virtual {v15, v11}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 1171
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 1020
    .end local v11           #roaming:Z
    .restart local p1
    :cond_8
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 1022
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1023
    .local v13, states:[Ljava/lang/String;
    const/4 v7, -0x1

    .line 1024
    .local v7, lac:I
    const/4 v3, -0x1

    .line 1025
    .local v3, cid:I
    const/4 v10, -0x1

    .line 1026
    .local v10, regState:I
    const/4 v9, -0x1

    .line 1027
    .local v9, psc:I
    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v15, :cond_b

    .line 1029
    const/4 v15, 0x0

    :try_start_1
    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1030
    array-length v15, v13

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    .line 1031
    const/4 v15, 0x1

    aget-object v15, v13, v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_9

    .line 1032
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1034
    :cond_9
    const/4 v15, 0x2

    aget-object v15, v13, v15

    if-eqz v15, :cond_a

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_a

    .line 1035
    const/4 v15, 0x2

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1038
    :cond_a
    array-length v15, v13

    const/16 v16, 0xe

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_b

    .line 1039
    const/16 v15, 0xe

    aget-object v15, v13, v15

    if-eqz v15, :cond_b

    const/16 v15, 0xe

    aget-object v15, v13, v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    .line 1040
    const/16 v15, 0xe

    aget-object v15, v13, v15

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 1048
    :cond_b
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1051
    const-string v15, "DATAROAMING"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " GsmServiceStateTracker registrationState ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "mGsmRoaming = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move v15, v0

    if-nez v15, :cond_d

    .line 1054
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsHome(I)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHome:Z

    .line 1055
    const-string v15, "DATAROAMING"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " GsmServiceStateTracker  = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :goto_4
    const-string v15, "DATAROAMING"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " mHome="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHome:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/16 v15, 0xa

    if-eq v10, v15, :cond_c

    const/16 v15, 0xc

    if-eq v10, v15, :cond_c

    const/16 v15, 0xd

    if-eq v10, v15, :cond_c

    const/16 v15, 0xe

    if-ne v10, v15, :cond_e

    .line 1062
    :cond_c
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 1068
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v7, v3}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object v15, v0

    invoke-virtual {v15, v9}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1133
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v9           #psc:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v5, v15

    .line 1134
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v15, "GSM"

    const-string v16, "Exception while polling service state. Probably malformed RIL response."

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1043
    .end local v5           #ex:Ljava/lang/RuntimeException;
    .restart local v3       #cid:I
    .restart local v7       #lac:I
    .restart local v9       #psc:I
    .restart local v10       #regState:I
    .restart local v13       #states:[Ljava/lang/String;
    :catch_1
    move-exception v15

    move-object v5, v15

    .line 1044
    .local v5, ex:Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing RegistrationState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1057
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mHome:Z

    goto :goto_4

    .line 1064
    :cond_e
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_5

    .line 1073
    .end local v3           #cid:I
    .end local v7           #lac:I
    .end local v9           #psc:I
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    .restart local p1
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 1075
    .restart local v13       #states:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 1076
    .local v14, type:I
    const/4 v10, -0x1

    .line 1077
    .restart local v10       #regState:I
    array-length v15, v13
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v15, :cond_f

    .line 1079
    const/4 v15, 0x0

    :try_start_4
    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1082
    array-length v15, v13

    const/16 v16, 0x4

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_f

    const/4 v15, 0x3

    aget-object v15, v13, v15

    if-eqz v15, :cond_f

    .line 1083
    const/4 v15, 0x3

    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v14

    .line 1089
    :cond_f
    :goto_6
    :try_start_5
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newGPRSState:I

    .line 1090
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 1091
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->newNetworkType:I

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    invoke-virtual {v15, v14}, Landroid/telephony/ServiceState;->setRadioTechnology(I)V

    goto/16 :goto_1

    .line 1085
    :catch_2
    move-exception v15

    move-object v5, v15

    .line 1086
    .restart local v5       #ex:Ljava/lang/NumberFormatException;
    const-string v15, "GSM"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1096
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #regState:I
    .end local v13           #states:[Ljava/lang/String;
    .end local v14           #type:I
    .restart local p1
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, [Ljava/lang/String;

    move-object v8, v0

    .line 1098
    .local v8, opNames:[Ljava/lang/String;
    if-eqz v8, :cond_5

    array-length v15, v8

    const/16 v16, 0x3

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .line 1101
    .local v12, simNumeric:Ljava/lang/String;
    if-eqz v12, :cond_10

    const/4 v15, 0x2

    aget-object v15, v8, v15

    if-eqz v15, :cond_10

    const/4 v15, 0x2

    aget-object v15, v8, v15

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    const-string v15, "23430"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v17, v8, v17

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-virtual/range {v15 .. v18}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1111
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSelectedNwkProfile:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$NetworkProfile;->mMccMnc:Ljava/lang/String;

    const-string v16, "23430"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    if-nez v12, :cond_11

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x1

    aget-object v17, v8, v17

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-virtual/range {v15 .. v18}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1118
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v8, v16

    const/16 v17, 0x1

    aget-object v17, v8, v17

    const/16 v18, 0x2

    aget-object v18, v8, v18

    invoke-virtual/range {v15 .. v18}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1128
    .end local v8           #opNames:[Ljava/lang/String;
    .end local v12           #simNumeric:Ljava/lang/String;
    .restart local p1
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v6, v0

    .line 1129
    .local v6, ints:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->newSS:Landroid/telephony/ServiceState;

    move-object v15, v0

    const/16 v16, 0x0

    aget v16, v6, v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    const/16 v16, 0x1

    :goto_7
    invoke-virtual/range {v15 .. v16}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_12
    const/16 v16, 0x0

    goto :goto_7

    .line 1150
    .end local v6           #ints:[I
    :cond_13
    const/4 v15, 0x0

    move v11, v15

    goto/16 :goto_2

    .line 1020
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method isConcurrentVoiceAndData()Z
    .locals 2

    .prologue
    .line 1947
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->networkType:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected powerOffRadioSafely()V
    .locals 6

    .prologue
    .line 892
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 893
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 894
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 895
    const-string/jumbo v3, "radioTurnedOff"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 896
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 900
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x96

    if-ge v1, v3, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_2

    .line 903
    const-string v3, "GSM"

    const-string v4, "Data shutdown complete."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 911
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 912
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 913
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 916
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 917
    return-void

    .line 906
    :cond_2
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 900
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 454
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 455
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 457
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    if-nez v1, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 460
    :cond_0
    return-void
.end method

.method registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 486
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 487
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 489
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 492
    :cond_0
    return-void
.end method

.method registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 467
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 468
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 470
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 471
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 473
    :cond_0
    return-void
.end method

.method registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 525
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForPsRestrictedDisabled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 532
    :cond_0
    return-void
.end method

.method registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 505
    const-string v1, "GSM"

    const-string v2, "[DSAC DEB] registerForPsRestrictedEnabled "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 507
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 512
    :cond_0
    return-void
.end method

.method protected setPowerStateToDesired()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 797
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 802
    .local v0, dcTracker:Lcom/android/internal/telephony/DataConnectionTracker;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isDataConnectionAsDesired()Z

    move-result v1

    if-nez v1, :cond_2

    .line 803
    const v1, 0xc3bc

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getStateInString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 832
    :cond_2
    const/16 v1, 0x97

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->countCheckDataStateReads:I

    .line 834
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v3, v5

    .line 803
    goto :goto_1
.end method

.method unregisterForGprsAttached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 464
    return-void
.end method

.method unregisterForGprsDetached(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->gprsDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 496
    return-void
.end method

.method unregisterForNetworkAttach(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->networkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 477
    return-void
.end method

.method unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 536
    return-void
.end method

.method unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->psRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 516
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 922
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->setSpnDynamic(Ljava/lang/String;)V

    .line 925
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v2

    .line 926
    .local v2, rule:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .line 927
    .local v5, spn:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, plmn:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 931
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10403b5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    if-ne v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 938
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-nez v6, :cond_4

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_4

    move v4, v8

    .line 940
    .local v4, showSpn:Z
    :goto_0
    and-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move v3, v8

    .line 959
    .local v3, showPlmn:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eqz v6, :cond_2

    .line 961
    const/4 v3, 0x1

    .line 962
    const/4 v4, 0x0

    .line 964
    const/4 v2, 0x0

    .line 965
    const/4 v5, 0x0

    .line 970
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x2000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 972
    const-string/jumbo v6, "showSpn"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 973
    const-string/jumbo v6, "spn"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const-string/jumbo v6, "showPlmn"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 975
    const-string/jumbo v6, "plmn"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 976
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 979
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #showPlmn:Z
    .end local v4           #showSpn:Z
    :cond_3
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpnRule:I

    .line 980
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curSpn:Ljava/lang/String;

    .line 981
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->curPlmn:Ljava/lang/String;

    .line 982
    return-void

    :cond_4
    move v4, v9

    .line 938
    goto :goto_0

    .restart local v4       #showSpn:Z
    :cond_5
    move v3, v9

    .line 940
    goto :goto_1
.end method
