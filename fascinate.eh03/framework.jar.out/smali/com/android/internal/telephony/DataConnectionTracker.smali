.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$1;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static final APN_DEFAULT_ID:I = 0x0

.field protected static final APN_DUN_ID:I = 0x3

.field protected static final APN_HIPRI_ID:I = 0x4

.field protected static final APN_INVALID_ID:I = -0x1

.field protected static final APN_MMS_ID:I = 0x1

.field protected static final APN_NUM_TYPES:I = 0x5

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final APN_SUPL_ID:I = 0x2

.field protected static final DATA_ROAM_ACCESS_APPLY:I = 0x1

.field private static final DATA_ROAM_ACCESS_DENY:I = 0x0

.field protected static final DATA_ROAM_ACCESS_FULL:I = 0x2

.field protected static final DATA_ROAM_ACCESS_SKIP:I = 0x0

.field private static final DATA_ROAM_ACCESS_TRIP_ONLY:I = 0x1

.field protected static final DATA_ROAM_NOTIFY_OFF:I = 0x0

.field protected static final DATA_ROAM_NOTIFY_ON:I = 0x1

.field protected static final DBG:Z = true

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,5000,5000,7000,7000:000,7000:000,7000:000,7000:000,7000:000,7000:000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field protected static final DEFAULT_PING_DEADLINE:I = 0x5

.field protected static final DISABLED:I = 0x0

.field protected static final ENABLED:I = 0x1

.field protected static final EVENT_APN_CHANGED:I = 0x1d

.field protected static final EVENT_CDMA_DATA_ATTACHED:I = 0x65

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x1e

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x23

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x22

.field protected static final EVENT_DATAROAMING_CHANGED:I = 0x27

.field protected static final EVENT_DATAROAMING_HOME:I = 0x28

.field public static final EVENT_DATA_SETUP_COMPLETE:I = 0x1

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x6

.field protected static final EVENT_DISCONNECT_DONE:I = 0x19

.field protected static final EVENT_DUN_STATE_CHANGED:I = 0x67

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x17

.field protected static final EVENT_GET_CDMA_DATA_PROFILE:I = 0x66

.field protected static final EVENT_GET_PDP_LIST_COMPLETE:I = 0xb

.field protected static final EVENT_GPRS_ATTACHED:I = 0x1a

.field protected static final EVENT_GPRS_DETACHED:I = 0x13

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x14

.field protected static final EVENT_NV_READY:I = 0x1f

.field protected static final EVENT_POLL_DATA_CONNECTION:I = 0x68

.field protected static final EVENT_POLL_PDP:I = 0x7

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x21

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x20

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field protected static final EVENT_RECORDS_LOADED:I = 0x4

.field protected static final EVENT_RESET_DONE:I = 0x26

.field protected static final EVENT_RESTART_RADIO:I = 0x24

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x18

.field protected static final EVENT_ROAMING_OFF:I = 0x16

.field protected static final EVENT_ROAMING_ON:I = 0x15

.field protected static final EVENT_SET_MASTER_DATA_ENABLE:I = 0x25

.field protected static final EVENT_START_NETSTAT_POLL:I = 0x1b

.field protected static final EVENT_START_RECOVERY:I = 0x1c

.field public static final EVENT_TRY_SETUP_DATA:I = 0x5

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0xf

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0xe

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected cidActive:I

.field protected dataEnabled:[Z

.field protected dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected dunNetworkType:I

.field protected dunRxBarLevel:I

.field protected dunState:I

.field protected dunTxBarLevel:I

.field protected enabledCount:I

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mIsWifiConnected:Z

.field protected mMasterDataEnabled:Z

.field protected mNoRecvPollCount:I

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected netStatPollEnabled:Z

.field protected netStatPollPeriod:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected rxPkts:J

.field protected sentSinceLastRecv:J

.field protected state:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field protected txPkts:J


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    const-string v0, "DataConnectionTracker"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    .line 136
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 139
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 193
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 194
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 195
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 197
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 198
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dunNetworkType:I

    .line 203
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 204
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 217
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 220
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 223
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 237
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 238
    return-void
.end method


# virtual methods
.method public IsDataOnRoamingApply()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_apply"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public IsGlobalDataRoamingNotification()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_notify"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OffAccessForTripOnly()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "data_roam_access_settings"

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->IsDataOnRoamingApply()Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_settings"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_settings"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    const-string v0, "DATAROAMING"

    const-string v1, "OffAccessForTripOnly -> set DATA_ROAM_ACCESS_DENY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    return-void
.end method

.method public RestoreGlobalDataRoamingNotification()V
    .locals 4

    .prologue
    const-string v3, "DATAROAMING"

    .line 335
    const-string v0, "DATAROAMING"

    const-string v0, "RestoreGlobalDataRoamingNotification "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    const-string v0, "DATAROAMING"

    const-string v0, "RestoreGlobalDataRoamingNotification -> set DATA_ROAM_NOTIFY_ON"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    return-void
.end method

.method public RestoreGlobalDataRoamingSettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "DATAROAMING"

    .line 345
    const-string v0, "DATAROAMING"

    const-string v0, "RestoreGlobalDataRoamingSettings "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_notify"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    const-string v0, "DATAROAMING"

    const-string v0, "RestoreGlobalDataRoamingSettings DATA_ROAM_NOTIFY_OFF "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->OffAccessForTripOnly()V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->RestoreGlobalDataRoamingNotification()V

    .line 351
    const-string v0, "DATAROAMING"

    const-string v0, "RestoreGlobalDataRoamingSettings DATA_ROAM_ACCESS_SKIP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roam_access_apply"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 354
    return-void
.end method

.method protected apnIdToType(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const-string v3, "default"

    .line 507
    packed-switch p1, :pswitch_data_0

    .line 519
    const-string v0, "DataConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in apnIdToType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v0, "default"

    move-object v0, v3

    :goto_0
    return-object v0

    .line 509
    :pswitch_0
    const-string v0, "default"

    move-object v0, v3

    goto :goto_0

    .line 511
    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    .line 513
    :pswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 515
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 517
    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 491
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 502
    :goto_0
    return v0

    .line 493
    :cond_0
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const/4 v0, 0x1

    goto :goto_0

    .line 495
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    const/4 v0, 0x2

    goto :goto_0

    .line 497
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    const/4 v0, 0x3

    goto :goto_0

    .line 499
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    const/4 v0, 0x4

    goto :goto_0

    .line 502
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 596
    monitor-enter p0

    :try_start_0
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 598
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v6

    .line 613
    :goto_0
    monitor-exit p0

    return v1

    .line 601
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 603
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    move v1, v4

    .line 605
    goto :goto_0

    :cond_1
    move v1, v5

    .line 607
    goto :goto_0

    :cond_2
    move v1, v5

    .line 610
    goto :goto_0

    :cond_3
    move v1, v6

    .line 613
    goto :goto_0

    .line 596
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract dispose()V
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const-string v1, "DataConnectionTracker"

    .line 562
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 563
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 564
    const/4 v1, 0x3

    .line 584
    :goto_0
    monitor-exit p0

    return v1

    .line 567
    :cond_0
    :try_start_1
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    const-string v1, "DataConnectionTracker"

    const-string/jumbo v2, "type not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v1, 0x2

    goto :goto_0

    .line 578
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v4

    .line 584
    goto :goto_0

    .line 562
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract getActiveApnString()Ljava/lang/String;
.end method

.method protected abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public getActiveState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public abstract getAllDataConnections()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public getAnyDataEnabled()Z
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDataEnabled()Z
    .locals 2

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getDataOnDunEnabled()Z
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 301
    const/4 v0, 0x1

    .line 302
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->IsDataOnRoamingApply()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roam_access_settings"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    move v0, v4

    .line 306
    :cond_0
    :goto_0
    const-string v1, "DATAROAMING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getDataOnGlobalRoamingEnabled setting return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v0

    :cond_1
    move v0, v3

    .line 303
    goto :goto_0
.end method

.method protected abstract getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public getDunActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dunActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public abstract getDunDataRxBarLevel()I
.end method

.method public abstract getDunDataState()I
.end method

.method public abstract getDunDataTxBarLevel()I
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dunNetworkType:I

    return v0
.end method

.method protected abstract getGateway(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getIpAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getStateInString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 265
    const-string v0, "ERRO"

    :goto_0
    return-object v0

    .line 258
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 259
    :pswitch_1
    const-string v0, "INIT"

    goto :goto_0

    .line 260
    :pswitch_2
    const-string v0, "CING"

    goto :goto_0

    .line 261
    :pswitch_3
    const-string v0, "SCAN"

    goto :goto_0

    .line 262
    :pswitch_4
    const-string v0, "CNTD"

    goto :goto_0

    .line 263
    :pswitch_5
    const-string v0, "DING"

    goto :goto_0

    .line 264
    :pswitch_6
    const-string v0, "FAIL"

    goto :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "DATAROAMING"

    .line 384
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 459
    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unidentified event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    return-void

    .line 387
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0

    .line 391
    :sswitch_1
    const/4 v1, 0x0

    .line 392
    .local v1, reason:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 393
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #reason:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 395
    .restart local v1       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 399
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    .line 406
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 410
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_0

    .line 414
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 418
    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    .line 419
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 423
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 427
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_0

    .line 431
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_0

    .line 435
    :sswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    move v2, v5

    .line 436
    .local v2, tearDown:Z
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    .end local v2           #tearDown:Z
    :cond_2
    move v2, v4

    .line 435
    goto :goto_1

    .line 440
    :sswitch_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    move v0, v4

    .line 441
    .local v0, enabled:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDataEnabled(Z)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_3
    move v0, v5

    .line 440
    goto :goto_2

    .line 445
    :sswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 449
    :sswitch_d
    const-string v3, "DATAROAMING"

    const-string v3, "EVENT_DATAROAMING_CHANGED"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataRoamingChanged()V

    goto :goto_0

    .line 454
    :sswitch_e
    const-string v3, "DATAROAMING"

    const-string v3, "EVENT_DATAROAMING_HOME "

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onHome()V

    goto/16 :goto_0

    .line 384
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x3 -> :sswitch_4
        0x5 -> :sswitch_1
        0xc -> :sswitch_5
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x19 -> :sswitch_7
        0x22 -> :sswitch_a
        0x25 -> :sswitch_b
        0x26 -> :sswitch_c
        0x27 -> :sswitch_d
        0x28 -> :sswitch_e
    .end sparse-switch
.end method

.method protected abstract isApnTypeActive(Ljava/lang/String;)Z
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isDataConnectionAsDesired()Z
.end method

.method protected declared-synchronized isEnabled(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 545
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZLjava/lang/String;)V
.end method

.method protected abstract onDataRoamingChanged()V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected declared-synchronized onEnableApn(II)V
    .locals 5
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const-string v1, "default"

    const-string v1, "DataConnectionTracker"

    .line 629
    monitor-enter p0

    :try_start_0
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST "

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    if-ne p2, v4, :cond_2

    .line 635
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 637
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 639
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 641
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    .end local v0           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 646
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 648
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 649
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v1, :cond_3

    .line 650
    const/4 v1, 0x1

    const-string v2, "dataDisabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 651
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-ne v1, v4, :cond_1

    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method protected abstract onHome()V
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onResetDone(Landroid/os/AsyncResult;)V
.end method

.method public abstract onRoamingOff()V
.end method

.method public abstract onRoamingOn()V
.end method

.method protected onSetDataEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 691
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 692
    if-eqz p1, :cond_1

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 694
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    const/4 v0, 0x1

    const-string v1, "dataDisabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract restartRadio()V
.end method

.method public setDataEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    .line 681
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 684
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v4

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 685
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 686
    return v4

    .line 684
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract setDataOnDunEnabled(Z)V
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->IsDataOnRoamingApply()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 293
    :cond_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 296
    :cond_1
    return-void

    .line 287
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setEnabled(IZ)V
    .locals 4
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 618
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with old state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 622
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 623
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 625
    return-void

    .line 623
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected abstract stopNetStatPoll()V
.end method
