.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0x927c0

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x3e8

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field protected static final EVENT_ALERT_TIMEOUT:I = 0x9

.field static final EVENT_DEVICE_READY:I = 0x13a

.field static final EVENT_GET_CB_RSP:I = 0x139

.field protected static final EVENT_GET_STORED_MSG_COUNT_RSP:I = 0x12

.field protected static final EVENT_ICC_AVAILABLE:I = 0x14

.field protected static final EVENT_ICC_FULL:I = 0x6

.field static final EVENT_NEW_CB:I = 0x137

.field protected static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_NEW_SMS_ON_SIM:I = 0xf

.field protected static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x5

.field protected static final EVENT_POST_ALERT:I = 0x7

.field protected static final EVENT_RADIO_ON:I = 0xc

.field protected static final EVENT_READ_SMS_DONE:I = 0x10

.field protected static final EVENT_REPORT_MEMORY_STATUS_DONE:I = 0xb

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x8

.field protected static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field static final EVENT_SET_CB_RSP:I = 0x138

.field protected static final EVENT_SET_MEMORY_RSP:I = 0x11

.field protected static final EVENT_SMS_NO_NETWORK_RESPONSE:I = 0x13

.field protected static final EVENT_STOP_SENDING:I = 0xa

.field protected static final EVENT_WRITE_SMS_DONE:I = 0x15

.field static final MAIL_SEND_SMS:I = 0x1

.field private static final MAX_SEND_RETRIES:I = 0x1

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static ProductName:Ljava/lang/String; = null

.field protected static final RAW_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SINGLE_PART_SMS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static boot_time:Z

.field private static cbConfig:Landroid/telephony/gsm/CbConfig;

.field private static current_sim_status:I

.field private static gcf_flag:Z

.field private static langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

.field private static languageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static mFreeSlot:I

.field protected static mRemainingMessages:I

.field private static mSmsMessage:Landroid/telephony/SmsMessage;

.field private static mSmsMessageBase:Lcom/android/internal/telephony/SmsMessageBase;

.field private static mTotalSlotcount:I

.field private static receive_storage_low_event:Z

.field private static receive_storage_ok_event:Z

.field private static replace_address:Ljava/lang/String;

.field private static replace_pid:I

.field private static sConcatenatedRef:I

.field private static sim_used_cnt:I


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private class2Sms:Landroid/telephony/SmsMessage;

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mClass0MsgFlag:Z

.field protected mClass2MsgFlag:Z

.field private mClass2_replaceType:Z

.field protected mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

.field private mGcfResultReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected final mRawUri:Landroid/net/Uri;

.field private mReplaceMessageMatched:Z

.field protected mReportMemoryStatusPending:Z

.field protected mResolver:Landroid/content/ContentResolver;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimStatusChanged:Z

.field protected mSimStorageAvailable:Z

.field protected mStorageAvailable:Z

.field private mSubmitPduBase:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

.field private mVoicemailResultReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field private mfoundMatch:Z

.field protected read_pdu:Ljava/lang/String;

.field protected receive_intent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    .line 100
    new-array v0, v4, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 102
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    .line 105
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 106
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 108
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    .line 233
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 249
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 253
    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    .line 258
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mFreeSlot:I

    .line 259
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    .line 265
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    .line 266
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    .line 267
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    .line 270
    sput-boolean v4, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 10
    .parameter "phone"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 335
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 111
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 196
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "raw"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 225
    const/16 v4, 0x1388

    iput v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->WAKE_LOCK_TIMEOUT:I

    .line 230
    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 231
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 236
    iput-boolean v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 238
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    .line 240
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    .line 242
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    .line 244
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 246
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    .line 247
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mReplaceMessageMatched:Z

    .line 421
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2306
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2321
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2364
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2638
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$4;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/SMSDispatcher$4;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mVoicemailResultReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 337
    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 338
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 339
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 340
    iget-object v4, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 342
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 344
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "sms_outgoing_check_interval_ms"

    const v6, 0x927c0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, check_period:I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "sms_outgoing_check_max_count"

    const/16 v6, 0x3e8

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 350
    .local v3, max_count:I
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;-><init>(Lcom/android/internal/telephony/SMSDispatcher;II)V

    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    .line 352
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xf

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x13

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setSmsNetworkNoResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 358
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x14

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccSmsFull(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xc

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 367
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x137

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCB(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 368
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x13a

    invoke-interface {v4, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 378
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v4, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 388
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v2, gcf_filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mGcfResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_low_event:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->receive_storage_ok_event:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->boot_time:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    return v0
.end method

.method private broadcastCbSettingsAvailable()V
    .locals 3

    .prologue
    .line 1942
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]Entered broadcastCbSettingsAvailable method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1944
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1945
    return-void
.end method

.method private comparePageNumber(BI)Z
    .locals 11
    .parameter "sequence"
    .parameter "referenceNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v10, "SMSDispatcher"

    .line 2074
    const-string v0, "SMSDispatcher"

    const-string v0, " [CB] In comparePageNumber in SMSDispathcher"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2077
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2078
    const-string v0, " AND"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    const-string v0, " sequence ="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2081
    const/4 v6, 0x0

    .line 2083
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2084
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2086
    .local v7, cursorCount:I
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " [CB] Number duplicates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    if-lt v7, v9, :cond_0

    .line 2089
    const/4 v0, 0x0

    .line 2091
    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method private concatenateCb(Landroid/telephony/gsm/CbMessage;B)V
    .locals 24
    .parameter "cbMsg"
    .parameter "totalPages"

    .prologue
    .line 1960
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB]Entered concatenateCb method"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getSn()S

    move-result v21

    .line 1966
    .local v21, sn:S
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getRefNum()I

    move-result v19

    .line 1968
    .local v19, referenceNumber:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] Reference number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v9

    .line 1972
    .local v9, currentPage:B
    const/16 v18, 0x0

    check-cast v18, [[B

    .line 1973
    .local v18, pdus:[[B
    const/4 v10, 0x0

    .line 1975
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reference_number ="

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v23, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1979
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1980
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1982
    .local v11, cursorCount:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] number of matches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->comparePageNumber(BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1989
    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ge v11, v3, :cond_1

    .line 1992
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1994
    .local v22, values:Landroid/content/ContentValues;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] Inserting into database. current page number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string/jumbo v3, "reference_number"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1997
    const-string v3, "count"

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 1998
    const-string/jumbo v3, "sequence"

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 1999
    const-string/jumbo v3, "pdu"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    if-eqz v10, :cond_0

    .line 2058
    .end local v11           #cursorCount:I
    .end local v22           #values:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2060
    :cond_0
    return-void

    .line 2006
    .restart local v11       #cursorCount:I
    :cond_1
    const/4 v3, 0x1

    sub-int v3, p2, v3

    if-ne v11, v3, :cond_5

    .line 2010
    :try_start_1
    const-string/jumbo v3, "pdu"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 2011
    .local v17, pduColumn:I
    const-string/jumbo v3, "sequence"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 2013
    .local v20, sequenceColumn:I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPageLength()I

    move-result v16

    .line 2014
    .local v16, length:I
    mul-int v13, v16, p2

    .line 2017
    .local v13, datalength:I
    move/from16 v0, p2

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    .line 2018
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2020
    const/4 v15, 0x1

    .local v15, i:I
    :goto_1
    if-gt v15, v11, :cond_2

    .line 2022
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] In for loop of concatenate method: cursorCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v12, v3

    .line 2026
    .local v12, cursorSequence:I
    const/4 v3, 0x1

    sub-int v3, v12, v3

    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v18, v3

    .line 2028
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2020
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2031
    .end local v12           #cursorSequence:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v4

    aput-object v4, v18, v3

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCbPdus([[B)V

    .line 2057
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .line 2044
    .end local v13           #datalength:I
    .end local v15           #i:I
    .end local v16           #length:I
    .end local v17           #pduColumn:I
    .end local v20           #sequenceColumn:I
    :cond_3
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB] got duplicate message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2057
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .line 2048
    .end local v11           #cursorCount:I
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 2050
    .local v14, e:Landroid/database/SQLException;
    :try_start_2
    const-string v3, "SMSDispatcher"

    const-string v4, "[CB] exception : Can\'t access multipart SMS database"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-virtual {v14}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2057
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_4

    .line 2058
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2057
    :cond_4
    throw v3

    .restart local v11       #cursorCount:I
    :cond_5
    if-eqz v10, :cond_0

    goto/16 :goto_0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 943
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 944
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 945
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 946
    return-void
.end method

.method private dispatchCbPdus([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    .line 2105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2106
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2107
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2108
    return-void
.end method

.method private dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V
    .locals 3
    .parameter "getRsp"

    .prologue
    .line 2250
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]In dispatchErrorCodeForGetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2254
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2255
    return-void
.end method

.method private dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V
    .locals 3
    .parameter "setRsp"

    .prologue
    .line 2269
    const-string v1, "SMSDispatcher"

    const-string v2, "[CB]In dispatchErrorCodeForSetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "setRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2273
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2274
    return-void
.end method

.method private duplicatedMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;)Z
    .locals 12
    .parameter "sms"
    .parameter "concatRef"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "SMSDispatcher"

    .line 1266
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1267
    .local v8, where:Ljava/lang/StringBuilder;
    iget v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1268
    const-string v0, " AND sequence = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    iget v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1270
    const-string v0, " AND address = ?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 1273
    .local v4, whereArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1275
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1277
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1279
    .local v7, cursorCount:I
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seqNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const-string v0, "SMSDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicatedMessage!! cursorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1287
    :cond_0
    if-nez v7, :cond_1

    move v0, v9

    .line 1290
    :goto_0
    return v0

    :cond_1
    move v0, v10

    goto :goto_0
.end method

.method private filterCbMsg(Landroid/telephony/gsm/CbMessage;)V
    .locals 9
    .parameter "cbMessage"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "[CB] No match found for language and MsgId\'s"

    const-string v5, "SMSDispatcher"

    .line 1785
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] filterCbMsg"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    const/4 v2, 0x0

    .line 1787
    .local v2, matched:Z
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 1789
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 1791
    .local v1, lang:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    if-eqz v3, :cond_0

    .line 1793
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] The settings are: cbEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v4, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgIdCount =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgIdMaxCount =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-nez v3, :cond_1

    .line 1800
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] CB is now disabled.It\'ll discard"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iput-boolean v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    if-ne v3, v7, :cond_3

    .line 1807
    const/4 v2, 0x1

    .line 1808
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] all channels selected.So no filtering required"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_2
    if-nez v2, :cond_6

    .line 1832
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for msgId"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1810
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-eqz v3, :cond_2

    .line 1812
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] my channels selected. So  filtering is required"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1816
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB ] msgID =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1819
    :cond_4
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v0, v3, :cond_2

    .line 1821
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getMsgId()S

    move-result v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    if-ne v3, v4, :cond_5

    .line 1823
    const/4 v2, 0x1

    .line 1824
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] found match for msgId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1837
    .end local v0           #i:I
    :cond_6
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 1839
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] no languages selected"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1843
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    .line 1845
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v3, v1, v0

    .line 1847
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] user selected language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getLanguage()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    if-ne v3, v4, :cond_8

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/telephony/gsm/CbMessage;->getLanguage()I

    move-result v3

    sget-object v4, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_UNSPECIFIED:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v4}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v4

    if-ne v3, v4, :cond_a

    if-eqz v2, :cond_a

    .line 1850
    :cond_9
    iput-boolean v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    .line 1851
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] found match for language and MsgId\'s"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1853
    :cond_a
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for language and MsgId\'s"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1858
    :cond_b
    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    if-nez v3, :cond_c

    .line 1859
    const-string v3, "SMSDispatcher"

    const-string v3, "[CB] No match found for language and MsgId\'s"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1861
    :cond_c
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] found match : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 274
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 275
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private handleIccFull()V
    .locals 4

    .prologue
    .line 999
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1001
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method private isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 2
    .parameter "tracker"

    .prologue
    .line 1739
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1740
    .local v0, map:Ljava/util/HashMap;
    const-string/jumbo v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNttDcmCarrierMailer([B)Z
    .locals 19
    .parameter "pdu"

    .prologue
    .line 2556
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rx: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    const/4 v10, 0x0

    .line 2559
    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .line 2560
    .local v15, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v16, p1, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 2561
    .local v14, pduType:I
    const/4 v7, 0x0

    .line 2563
    .local v7, headerLength:I
    const/16 v16, 0x6

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x7

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 2565
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const/16 v16, 0x0

    .line 2632
    :goto_0
    return v16

    .line 2569
    :cond_0
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 2571
    .local v13, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 2572
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Length error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    const/16 v16, 0x0

    goto :goto_0

    .line 2576
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v7, v0

    .line 2577
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int/lit8 v10, v16, 0x2

    .line 2579
    move v9, v10

    .line 2581
    .local v9, headerStartIndex:I
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v16

    if-nez v16, :cond_2

    .line 2582
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Content-Type error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    const/16 v16, 0x0

    goto :goto_0

    .line 2587
    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 2588
    .local v12, mimeType:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 2590
    .local v3, applicationId:J
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .line 2592
    .local v6, binaryContentType:I
    const/16 v16, 0x30a

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v16, 0x44

    move v0, v6

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v16, 0x310

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 2594
    :cond_3
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CONTENT_TYPE_B_EMN? = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    invoke-virtual {v13, v10, v9, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v8

    .line 2597
    .local v8, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v16, 0x2f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2600
    .local v5, applicationIdObj:Ljava/lang/Object;
    move-object v0, v5

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 2601
    check-cast v5, Ljava/lang/Long;

    .end local v5           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2603
    :cond_4
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "applicationId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    .end local v8           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 2632
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2608
    :sswitch_0
    const-wide/32 v16, 0x9056

    cmp-long v16, v3, v16

    if-nez v16, :cond_6

    .line 2609
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : i-mode.net"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2612
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2616
    :sswitch_1
    const-wide/16 v16, 0x7

    cmp-long v16, v3, v16

    if-nez v16, :cond_7

    .line 2617
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : fota"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2619
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2623
    :sswitch_2
    const-wide/32 v16, 0x905c

    cmp-long v16, v3, v16

    if-nez v16, :cond_8

    .line 2624
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : Carrier Mail"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 2627
    :cond_8
    const-wide/16 v16, 0x9

    cmp-long v16, v3, v16

    if-nez v16, :cond_9

    .line 2628
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive EMN : mopera U"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2630
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2605
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
.end method

.method private isNttDcmSLC([B)Z
    .locals 19
    .parameter "pdu"

    .prologue
    .line 2686
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Rx: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const/4 v10, 0x0

    .line 2689
    .local v10, index:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #index:I
    .local v11, index:I
    aget-byte v16, p1, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v15, v0

    .line 2690
    .local v15, transactionId:I
    add-int/lit8 v10, v11, 0x1

    .end local v11           #index:I
    .restart local v10       #index:I
    aget-byte v16, p1, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v14, v0

    .line 2691
    .local v14, pduType:I
    const/4 v7, 0x0

    .line 2693
    .local v7, headerLength:I
    const/16 v16, 0x6

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x7

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 2695
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    const/16 v16, 0x0

    .line 2767
    :goto_0
    return v16

    .line 2699
    :cond_0
    new-instance v13, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 2701
    .local v13, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v16

    if-nez v16, :cond_1

    .line 2702
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Length error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    const/16 v16, 0x0

    goto :goto_0

    .line 2706
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v7, v0

    .line 2707
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int/lit8 v10, v16, 0x2

    .line 2709
    move v9, v10

    .line 2711
    .local v9, headerStartIndex:I
    invoke-virtual {v13, v10}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v16

    if-nez v16, :cond_2

    .line 2712
    const-string v16, "SMSDispatcher"

    const-string v17, "Received PDU. Header Content-Type error."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    const/16 v16, 0x0

    goto :goto_0

    .line 2717
    :cond_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 2718
    .local v12, mimeType:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 2720
    .local v3, applicationId:J
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .line 2733
    .local v6, binaryContentType:I
    const/16 v16, 0x30

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 2735
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "CONTENT_TYPE_B_SLC? = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    invoke-virtual {v13}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v16

    add-int v10, v10, v16

    .line 2739
    invoke-virtual {v13, v10, v9, v7}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v8

    .line 2740
    .local v8, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v16, 0x2f

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2743
    .local v5, applicationIdObj:Ljava/lang/Object;
    move-object v0, v5

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 2744
    check-cast v5, Ljava/lang/Long;

    .end local v5           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2746
    :cond_3
    const-string v16, "SMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "applicationId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    .end local v8           #headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 2767
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2762
    :pswitch_0
    const-wide/32 v16, 0x905f

    cmp-long v16, v3, v16

    if-nez v16, :cond_5

    .line 2763
    const-string v16, "SMSDispatcher"

    const-string v17, "Receive SLC : storage syncML"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 2765
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 2748
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1703
    if-nez p1, :cond_0

    .line 1707
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v1, :cond_0

    .line 1709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1710
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1711
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1712
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1729
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1730
    return-void
.end method

.method private rejectDuplicates([S)[S
    .locals 6
    .parameter "msgIDs"

    .prologue
    .line 1877
    const-string v4, "SMSDispatcher"

    const-string v5, "[CB]In rejectDuplicates of SMSDispatcher"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    .local v1, messageId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 1882
    aget-short v3, p1, v0

    .line 1884
    .local v3, val:S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1885
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1888
    .end local v3           #val:S
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [S

    .line 1890
    .local v2, ret:[S
    const/4 v0, 0x0

    .end local p0
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1891
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v2, v0

    .line 1890
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1894
    :cond_2
    return-object v2
.end method

.method private setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 3
    .parameter "languageId"

    .prologue
    .line 2214
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2216
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2218
    :cond_0
    return-void
.end method


# virtual methods
.method public GetCBEnableConfig()Z
    .locals 1

    .prologue
    .line 2119
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v0, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    return v0
.end method

.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 1
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 2303
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V
    .locals 5
    .parameter "getRsp"

    .prologue
    const-string v4, "SMSDispatcher"

    .line 1909
    const-string v2, "SMSDispatcher"

    const-string v2, "[CB]cacheCbsettings"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v1, 0x0

    .line 1912
    .local v1, msgId:[S
    iget-object v2, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->rejectDuplicates([S)[S

    move-result-object v1

    .line 1914
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    iput-boolean v3, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 1915
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    array-length v3, v1

    iput v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 1916
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 1917
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-object v1, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 1918
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->selectedId:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 1920
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] cbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdMaxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1927
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB ] msgID =   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1930
    :cond_0
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 961
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 966
    return-void
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 8
    .parameter "intent"
    .parameter "permission"
    .parameter "isVailedSUPLHeader"

    .prologue
    const/4 v6, 0x0

    .line 972
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 974
    if-eqz p3, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 978
    :cond_0
    return-void
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchPdus([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    .line 1301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1302
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1303
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method protected dispatchPdusToMobileTracker([[BLjava/lang/String;)V
    .locals 2
    .parameter "pdus"
    .parameter "intentAction"

    .prologue
    .line 1312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1313
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1314
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 4
    .parameter "pdus"
    .parameter "port"

    .prologue
    .line 1325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1326
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1327
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1328
    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method protected dispatchVoicemail(I)V
    .locals 8
    .parameter "voicemailCount"

    .prologue
    const/4 v6, 0x0

    .line 984
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.VOICEMAIL_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "count"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mVoicemailResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 990
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 399
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsFull(Landroid/os/Handler;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetSmsNetworkNoResponse(Landroid/os/Handler;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccSmsAvailable(Landroid/os/Handler;)V

    .line 408
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 411
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method protected getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1626
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1627
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x1040442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCbConfig()V
    .locals 2

    .prologue
    .line 2235
    const/16 v1, 0x139

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2236
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCbConfig(Landroid/os/Message;)V

    .line 2238
    return-void
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 4

    .prologue
    const-string v3, "SMSDispatcher"

    .line 1758
    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMSDispathcher-CB] bCBEnabled =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v2, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selectedId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v2, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgIdMaxCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v2, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgIdCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v2, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v1, v1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1766
    const-string v1, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CB] msgIDs =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1769
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    return-object v1
.end method

.method protected abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .parameter "msg"

    .prologue
    .line 431
    const-string v26, "class2"

    .line 432
    .local v26, smsc:Ljava/lang/String;
    const/16 v17, 0x0

    .line 434
    .local v17, pdu:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    sparse-switch v29, :sswitch_data_0

    .line 940
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 438
    .restart local p1
    :sswitch_1
    const-string v29, "SMSDispatcher"

    const-string v30, "New SMS Message Received"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 445
    .local v6, ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 446
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception processing incoming SMS. Exception:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    :cond_1
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/telephony/SmsMessage;

    .line 496
    .local v25, sms:Landroid/telephony/SmsMessage;
    const-string/jumbo v29, "ril.sms.gcf-mode"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, GcfMode:Ljava/lang/String;
    const-string v29, "On"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 499
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    .line 506
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_5

    .line 507
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v21

    .line 508
    .local v21, result:I
    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 510
    const/16 v29, 0x8

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 512
    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 524
    .end local v21           #result:I
    :catch_0
    move-exception v29

    move-object/from16 v10, v29

    .line 525
    .local v10, ex:Ljava/lang/RuntimeException;
    const-string v29, "SMSDispatcher"

    const-string v30, "Exception dispatching message"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    const/16 v29, 0x0

    const/16 v30, 0x2

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 501
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :cond_2
    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/internal/telephony/SMSDispatcher;->gcf_flag:Z

    goto :goto_1

    .line 516
    .restart local v21       #result:I
    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    const/16 v29, 0x1

    move/from16 v13, v29

    .line 517
    .local v13, handled:Z
    :goto_2
    const/16 v29, 0x0

    :try_start_1
    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v21

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 516
    .end local v13           #handled:Z
    :cond_4
    const/16 v29, 0x0

    move/from16 v13, v29

    goto :goto_2

    .line 520
    .end local v21           #result:I
    :cond_5
    const/16 v29, 0x0

    const/16 v30, 0x3

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 522
    new-instance v29, Landroid/content/Intent;

    const-string v30, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v30, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 534
    .end local v5           #GcfMode:Ljava/lang/String;
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v25           #sms:Landroid/telephony/SmsMessage;
    :sswitch_2
    const-string v29, "SMSDispatcher"

    const-string v30, "mSimStorageAvailable && mStorageAvailable OK"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 537
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 539
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v14, v0

    .line 541
    .local v14, index:[I
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_6

    move-object v0, v14

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_7

    .line 542
    :cond_6
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[SMSDispatcher] Error on SMS_ON_SIM with exp "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v14

    array-length v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 545
    :cond_7
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "READ EF_SMS RECORD index="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    aget v31, v14, v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 554
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v14           #index:[I
    .restart local p1
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 556
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 557
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception processing incoming SMS. Exception:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 561
    :cond_8
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 563
    .local v19, read_pdu:[Ljava/lang/String;
    const/16 v29, 0x1

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    aput-object p1, v19, v29

    .line 565
    invoke-static/range {v19 .. v19}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v25

    .line 567
    .restart local v25       #sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 576
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v19           #read_pdu:[Ljava/lang/String;
    .end local v25           #sms:Landroid/telephony/SmsMessage;
    .restart local p1
    :sswitch_4
    const-string v29, "SMSDispatcher"

    const-string v30, "EVENT_ICC_AVAILABLE"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    goto/16 :goto_0

    .line 585
    :sswitch_5
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] Calling getCbConfig"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getCbConfig()V

    goto/16 :goto_0

    .line 597
    :sswitch_6
    :try_start_2
    const-string v29, "SMSDispatcher"

    const-string v30, "[SMSDispatcher] New CB Message Received"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 602
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_9

    .line 603
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB]Exception processing incoming CB"

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 666
    .end local v6           #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v29

    move-object/from16 v9, v29

    .line 667
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 608
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v6       #ar:Landroid/os/AsyncResult;
    :cond_9
    :try_start_3
    iget-object v7, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Landroid/telephony/gsm/CbMessage;

    .line 615
    .local v7, cbMessage:Landroid/telephony/gsm/CbMessage;
    iget v8, v7, Landroid/telephony/gsm/CbMessage;->cbType:I

    .line 617
    .local v8, cbType:I
    const/16 v29, 0x2

    move v0, v8

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 618
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] UMTS message"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 622
    :cond_a
    invoke-virtual {v7}, Landroid/telephony/gsm/CbMessage;->getMsgId()S

    move-result v29

    const/16 v30, 0x3e7

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    .line 624
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] Channel Id > 999"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 628
    :cond_b
    move-object v0, v7

    iget v0, v0, Landroid/telephony/gsm/CbMessage;->message_length:I

    move/from16 v16, v0

    .line 629
    .local v16, message_length:I
    iget-object v15, v7, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    .line 632
    .local v15, message:Ljava/lang/String;
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "cbType = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", length = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "message = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {v7}, Landroid/telephony/gsm/CbMessage;->getCount()B

    move-result v27

    .line 642
    .local v27, totalPages:B
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    .line 644
    .local v18, pdus:[[B
    const/16 v29, 0x0

    invoke-virtual {v7}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v30

    aput-object v30, v18, v29

    .line 646
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->filterCbMsg(Landroid/telephony/gsm/CbMessage;)V

    .line 648
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mfoundMatch:Z

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 650
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] Received msg is matched with the settings"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-le v0, v1, :cond_c

    .line 654
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB]Before calling concatenateCb"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->concatenateCb(Landroid/telephony/gsm/CbMessage;B)V

    goto/16 :goto_0

    .line 659
    :cond_c
    const-string v29, "SMSDispatcher"

    const-string v30, " [CB]No concatenation required"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchCbPdus([[B)V

    goto/16 :goto_0

    .line 663
    :cond_d
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] Received msg is not matched with the settings"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 676
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v7           #cbMessage:Landroid/telephony/gsm/CbMessage;
    .end local v8           #cbType:I
    .end local v15           #message:Ljava/lang/String;
    .end local v16           #message_length:I
    .end local v18           #pdus:[[B
    .end local v27           #totalPages:B
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 680
    .restart local p1
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 684
    .restart local p1
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 689
    .restart local p1
    :sswitch_a
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleIccFull()V

    goto/16 :goto_0

    .line 697
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 700
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    check-cast p1, [I

    const/16 v29, 0x0

    aget v24, p1, v29

    .line 701
    .local v24, sim_status:I
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, [I

    check-cast p1, [I

    const/16 v29, 0x1

    aget v28, p1, v29

    .line 703
    .local v28, totalSlotcount:I
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_e

    .line 704
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[SmsDispatcher] Error on EVENT_ICC_FULL with exp "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    :cond_e
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "current_sim_status = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " sim_status[0]= "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    sget v29, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    move/from16 v0, v29

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 713
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    .line 717
    :goto_3
    sput v24, Lcom/android/internal/telephony/SMSDispatcher;->current_sim_status:I

    .line 719
    sput v28, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    .line 721
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mTotalSlotcount = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/android/internal/telephony/SMSDispatcher;->mTotalSlotcount:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    move/from16 v29, v0

    if-nez v29, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 726
    const-string v29, "SMSDispatcher"

    const-string v30, "Sim Status Changed !!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 735
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mClass2_replaceType:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 737
    const/16 v29, 0x1

    sput v29, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    .line 738
    const-string v29, "SMSDispatcher"

    const-string/jumbo v30, "replace type message!! start slot scanning..."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    sget v30, Lcom/android/internal/telephony/SMSDispatcher;->sim_used_cnt:I

    const/16 v31, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->readSmsFromSim(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 715
    :cond_10
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStatusChanged:Z

    goto :goto_3

    .line 731
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto :goto_4

    .line 743
    :cond_12
    const/16 v29, 0x1

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 745
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->class2Sms:Landroid/telephony/SmsMessage;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v17

    .line 749
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v29, v0

    if-nez v29, :cond_13

    .line 751
    const-string v29, "SMSDispatcher"

    const-string v30, "mSimStorageAvailable OK.. but mStorageAvailable is not OK"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v29, "SMSDispatcher"

    const-string/jumbo v30, "send Nack without saving class2 message"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v29, 0x0

    const/16 v30, 0x3

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 757
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    const/16 v31, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    move-object/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 763
    :cond_14
    const-string v29, "SMSDispatcher"

    const-string v30, "mSimStorage is not Available. so device cannot write sms to sim!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    .line 767
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v29, v0

    if-nez v29, :cond_15

    .line 769
    const-string v29, "SMSDispatcher"

    const-string v30, "L3 ACK: PDA & SIM Memory Low 1!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/16 v29, 0x0

    const/16 v30, 0x6

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 774
    :cond_15
    const-string v29, "SMSDispatcher"

    const-string v30, "L3 ACK: SIM Memory Low!!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/16 v29, 0x0

    const/16 v30, 0x5

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 787
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v24           #sim_status:I
    .end local v28           #totalSlotcount:I
    .restart local p1
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 789
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [I

    move-object/from16 v0, p1

    check-cast v0, [I

    move-object v14, v0

    .line 791
    .restart local v14       #index:[I
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-nez v29, :cond_16

    move-object v0, v14

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_17

    .line 792
    :cond_16
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "writeSmsToSim Fail: exception = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v29, 0x0

    const/16 v30, 0x5

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 797
    :cond_17
    const-string v29, "SMSDispatcher"

    const-string v30, "*****************************************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v29, "SMSDispatcher"

    const-string/jumbo v30, "writeSmsToSim was processed successfully"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v29, "SMSDispatcher"

    const-string v30, "*****************************************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 806
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v14           #index:[I
    .restart local p1
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 810
    .restart local p1
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/app/AlertDialog;

    check-cast v5, Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 811
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_18

    .line 814
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 815
    .local v22, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    const/16 v30, 0x5

    invoke-virtual/range {v29 .. v30}, Landroid/app/PendingIntent;->send(I)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2

    .line 821
    .end local v22           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_18
    :goto_5
    const-string v29, "SMSDispatcher"

    const-string v30, "EVENT_ALERT_TIMEOUT, message stop sending"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :catch_2
    move-exception v29

    move-object/from16 v10, v29

    .line 817
    .local v10, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v29, "SMSDispatcher"

    const-string v30, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 826
    .end local v10           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_0

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    sub-int v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 828
    .restart local v22       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->isMultipartTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 829
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 833
    :goto_6
    const/16 v29, 0x9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 831
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_6

    .line 838
    .end local v22           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_0

    .line 841
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    sub-int v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 842
    .restart local v22       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    const/16 v30, 0x5

    invoke-virtual/range {v29 .. v30}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_3

    .line 846
    .end local v22           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_7
    const/16 v29, 0x9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 843
    :catch_3
    move-exception v29

    move-object/from16 v10, v29

    .line 844
    .restart local v10       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v29, "SMSDispatcher"

    const-string v30, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 851
    .end local v10           #ex:Landroid/app/PendingIntent$CanceledException;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 852
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 853
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    .line 854
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Memory status report to modem pending : mStorageAvailable = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 857
    :cond_1a
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    goto/16 :goto_0

    .line 862
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mReportMemoryStatusPending:Z

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 863
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Sending pending memory status report : mStorageAvailable = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v30, v0

    const/16 v31, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    invoke-interface/range {v29 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 876
    :sswitch_13
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] received response for getCb"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 881
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1b

    .line 883
    iget-object v12, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Landroid/telephony/gsm/CbConfig;

    .line 884
    .local v12, getRsp:Landroid/telephony/gsm/CbConfig;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 885
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->broadcastCbSettingsAvailable()V

    goto/16 :goto_0

    .line 888
    .end local v12           #getRsp:Landroid/telephony/gsm/CbConfig;
    :cond_1b
    const-string v29, "SMSDispatcher"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[CB Exception] Received exception in get response"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v11, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v11, Lcom/android/internal/telephony/CommandException;

    .line 890
    .local v11, expt:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_0

    .line 901
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v11           #expt:Lcom/android/internal/telephony/CommandException;
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 903
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 905
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB]Exception processing cb config set request"

    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v31, v0

    invoke-static/range {v29 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/CommandException;

    .line 907
    .local v23, setRsp:Lcom/android/internal/telephony/CommandException;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_0

    .line 911
    .end local v23           #setRsp:Lcom/android/internal/telephony/CommandException;
    :cond_1c
    const-string v29, "SMSDispatcher"

    const-string v30, "********************************************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v29, "SMSDispatcher"

    const-string v30, "[CB] SetCbConfig was processed successfully"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v29, "SMSDispatcher"

    const-string v30, "********************************************"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 923
    .end local v6           #ar:Landroid/os/AsyncResult;
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/os/AsyncResult;

    .line 925
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object v0, v6

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1d

    .line 927
    const-string v29, "SMSDispatcher"

    const-string v30, "General Response Failed!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const/16 v29, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 930
    .local v20, reply:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 934
    .end local v20           #reply:Landroid/os/Message;
    :cond_1d
    const-string v29, "SMSDispatcher"

    const-string/jumbo v30, "reportSmsMemoryStatus set successfully"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 434
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_7
        0x3 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_d
        0x8 -> :sswitch_f
        0x9 -> :sswitch_e
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0xf -> :sswitch_2
        0x10 -> :sswitch_3
        0x11 -> :sswitch_15
        0x12 -> :sswitch_b
        0x13 -> :sswitch_0
        0x14 -> :sswitch_4
        0x15 -> :sswitch_c
        0x137 -> :sswitch_6
        0x138 -> :sswitch_14
        0x139 -> :sswitch_13
        0x13a -> :sswitch_5
    .end sparse-switch
.end method

.method protected handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 1140
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1142
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1143
    :try_start_0
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    iget-object v0, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 1596
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_0

    .line 1599
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :goto_0
    return-void

    .line 1600
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 1601
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1606
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 1608
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1610
    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040443

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x1040444

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040445

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040446

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1617
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1618
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1620
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    const/16 v4, 0x9

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 10
    .parameter "ar"

    .prologue
    .line 1023
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1024
    .local v6, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1026
    .local v4, sentIntent:Landroid/app/PendingIntent;
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_4

    .line 1028
    const-string v7, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS send complete. Broadcasting intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_0

    .line 1036
    const-string v7, "SMS DisPatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS sent successfully  Delivery ack is requested with ref"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_0
    if-eqz v4, :cond_2

    .line 1042
    :try_start_0
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_1

    .line 1043
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sput v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1046
    :cond_1
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v7, :cond_3

    .line 1047
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1048
    .local v3, sendNext:Landroid/content/Intent;
    const-string v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1049
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1128
    .end local v3           #sendNext:Landroid/content/Intent;
    .end local p1
    :cond_2
    :goto_0
    return-void

    .line 1051
    .restart local p1
    :cond_3
    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1053
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1057
    :cond_4
    const-string v7, "SMSDispatcher"

    const-string v8, "SMS send failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    .line 1062
    .local v5, ss:I
    if-eqz v5, :cond_5

    .line 1063
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1064
    :cond_5
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_6

    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v8, 0x1

    if-ge v7, v8, :cond_6

    .line 1075
    const-string v7, "SMSDispatcher"

    const-string v8, "SMS retry "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1077
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1078
    .local v2, retryMsg:Landroid/os/Message;
    const-wide/16 v7, 0x7d0

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1079
    .end local v2           #retryMsg:Landroid/os/Message;
    :cond_6
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 1082
    const-string v7, "SMSDispatcher"

    const-string v8, "NO ACK Intent "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.SMS_CAUSE_CODES"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "CauseCodeNum"

    const-string v8, "34"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1088
    :try_start_1
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1089
    :catch_1
    move-exception v7

    goto :goto_0

    .line 1090
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_2

    .line 1093
    :try_start_2
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_8

    .line 1095
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1096
    .restart local v2       #retryMsg:Landroid/os/Message;
    const-wide/16 v7, 0x7d0

    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1125
    .end local v2           #retryMsg:Landroid/os/Message;
    .end local p1
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 1098
    .restart local p1
    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1099
    .local v0, fillIn:Landroid/content/Intent;
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 1100
    const-string v7, "errorCode"

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SmsResponse;

    iget v8, p1, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1102
    :cond_9
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v8, -0x1

    if-le v7, v8, :cond_a

    .line 1103
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    sput v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1106
    :cond_a
    sget v7, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    if-nez v7, :cond_b

    .line 1107
    const-string v7, "SendNextMsg"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1119
    :cond_b
    const-string v7, "SMSDispatcher"

    const-string v8, "Error cause is GENERIC"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0
.end method

.method protected abstract handleStatusReport(Landroid/os/AsyncResult;)V
.end method

.method protected processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I
    .locals 23
    .parameter "sms"
    .parameter "concatRef"
    .parameter "portAddrs"

    .prologue
    .line 1175
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v22, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v4, v0

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1177
    const-string v4, " AND address = ?"

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1180
    .local v8, whereArgs:[Ljava/lang/String;
    const/16 v19, 0x0

    check-cast v19, [[B

    .line 1181
    .local v19, pdus:[[B
    const/4 v10, 0x0

    .line 1184
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/telephony/SMSDispatcher;->duplicatedMessage(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    const/16 v4, 0x8

    .line 1227
    if-eqz v10, :cond_0

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1259
    :cond_0
    :goto_1
    return v4

    .line 1188
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1189
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1190
    .local v11, cursorCount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v11, v4, :cond_3

    .line 1192
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1193
    .local v21, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1194
    const-string/jumbo v4, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v4, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const-string/jumbo v4, "reference_number"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    const-string v4, "count"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    const-string/jumbo v4, "sequence"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1199
    if-eqz p3, :cond_2

    .line 1200
    const-string v4, "destination_port"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1203
    const/4 v4, 0x1

    .line 1227
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .line 1207
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_3
    const-string/jumbo v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1208
    .local v18, pduColumn:I
    const-string/jumbo v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1210
    .local v20, sequenceColumn:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v19, v0

    .line 1211
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v11, :cond_4

    .line 1212
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1213
    move-object v0, v10

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 1214
    .local v12, cursorSequence:I
    const/4 v4, 0x1

    sub-int v4, v12, v4

    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v19, v4

    .line 1211
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1218
    .end local v12           #cursorSequence:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v5

    aput-object v5, v19, v4

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1227
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1240
    :cond_5
    if-eqz p3, :cond_9

    .line 1241
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    const/16 v5, 0xb84

    if-ne v4, v5, :cond_8

    .line 1243
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1244
    .local v17, output:Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move v4, v0

    if-ge v15, v4, :cond_7

    .line 1245
    aget-object v4, v19, v15

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v16

    .line 1246
    .local v16, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v13

    .line 1247
    .local v13, data:[B
    const/4 v4, 0x0

    array-length v5, v13

    move-object/from16 v0, v17

    move-object v1, v13

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1244
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1222
    .end local v11           #cursorCount:I
    .end local v13           #data:[B
    .end local v15           #i:I
    .end local v16           #msg:Landroid/telephony/SmsMessage;
    .end local v17           #output:Ljava/io/ByteArrayOutputStream;
    .end local v18           #pduColumn:I
    .end local v20           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object v14, v4

    .line 1223
    .local v14, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "SMSDispatcher"

    const-string v5, "Can\'t access multipart SMS database"

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1225
    const/4 v4, 0x2

    .line 1227
    if-eqz v10, :cond_0

    goto/16 :goto_0

    .end local v14           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .line 1250
    .restart local v11       #cursorCount:I
    .restart local v15       #i:I
    .restart local v17       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #pduColumn:I
    .restart local v20       #sequenceColumn:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_1

    .line 1253
    .end local v17           #output:Ljava/io/ByteArrayOutputStream;
    :cond_8
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1259
    :goto_4
    const/4 v4, -0x1

    goto/16 :goto_1

    .line 1257
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_4
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation
.end method

.method protected sendRawPdu([B[BILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "msgRef"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1507
    if-nez p2, :cond_1

    .line 1508
    if-eqz p4, :cond_0

    .line 1510
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p4, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1517
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const-string/jumbo v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p4, p5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1522
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iput p3, v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1523
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1525
    .local v2, ss:I
    if-eqz v2, :cond_2

    .line 1526
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1528
    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1529
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1530
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1532
    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1511
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1477
    if-nez p2, :cond_1

    .line 1478
    if-eqz p3, :cond_0

    .line 1480
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1487
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const-string/jumbo v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1492
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1494
    .local v2, ss:I
    if-eqz v2, :cond_2

    .line 1495
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1497
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1499
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1501
    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1481
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected sendRawPduForMobileTracker([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 1559
    if-nez p2, :cond_1

    .line 1560
    if-eqz p3, :cond_0

    .line 1562
    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {p3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1569
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    const-string/jumbo v4, "pdu"

    invoke-virtual {v1, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    new-instance v3, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {v3, v1, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1574
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 1576
    .local v2, ss:I
    if-eqz v2, :cond_2

    .line 1577
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1579
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 1580
    .local v0, appName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCounter:Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsCounter;->check(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1581
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 1583
    :cond_3
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1563
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #ss:I
    .end local v3           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
.end method

.method public setCSCCbConfig(Z)Z
    .locals 5
    .parameter "cbEnable"

    .prologue
    const/4 v3, 0x0

    const-string v4, "SMSDispatcher"

    .line 2128
    const-string v2, "SMSDispatcher"

    const-string v2, "[CB] CSC UPDATE for CB CONFIG "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 2131
    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 2132
    const/16 v2, 0x31

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 2133
    const/16 v2, 0x32

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2134
    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 2135
    new-array v2, v3, [S

    iput-object v2, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 2136
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 2138
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgIdCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msgIdMaxCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectedId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const-string v2, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bCBEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/16 v2, 0x138

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2145
    .local v1, reply:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    .line 2147
    const/4 v2, 0x1

    return v2
.end method

.method public setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 6
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    const-string v5, "SMSDispatcher"

    .line 2167
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 2176
    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 2177
    iput-char p2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 2178
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 2179
    array-length v3, p4

    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 2180
    iput-object p4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 2181
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 2182
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/SMSDispatcher;->setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    .line 2184
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SmsDispatcher-setCbConfig] bCBEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 2192
    const-string v3, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgIDs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2195
    :cond_0
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2197
    .local v2, reply:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    .line 2199
    return-void
.end method

.method protected abstract setCellBroadcastConfig([ILandroid/os/Message;)V
.end method
