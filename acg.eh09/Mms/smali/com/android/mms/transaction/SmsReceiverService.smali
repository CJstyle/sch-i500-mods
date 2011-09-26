.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mResultCode:I

.field private mSending:Z

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_id"

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 539
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v7, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"

    .prologue
    .line 874
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .line 875
    .local v1, i:I
    const/4 v0, 0x0

    .line 876
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 878
    .local v3, total:I
    :goto_0
    if-lez v1, :cond_1

    .line 879
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 880
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 883
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 886
    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleVoicemailReceived(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 847
    aget-object v0, p2, v4

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    array-length v2, p2

    .line 852
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "pdu"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "body"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 869
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 870
    return-void

    :cond_0
    move-object v3, v0

    move v0, v4

    .line 855
    :goto_1
    if-ge v0, v2, :cond_1

    .line 856
    aget-object v3, p2, v0

    .line 857
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 9
    .parameter "sms"

    .prologue
    const/4 v8, 0x0

    const-string v6, "Mms/SmsReceiverService"

    const-string v5, "address"

    .line 784
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 788
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "ril.sms.gcf-mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, GcfMode:Ljava/lang/String;
    const-string v4, "On"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 792
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    const-string v4, "Mms/SmsReceiverService"

    const-string v4, "sms.getOriginatingAddress() :xxxxxxxx"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v4, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :goto_0
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    const-string v4, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    const-string v4, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v4, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 829
    const-string v4, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_0
    const-string v4, "pri"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 835
    const-string v4, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    const-string v4, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 837
    :goto_2
    return-object v4

    .line 799
    :cond_1
    const-string v4, "Mms/SmsReceiverService"

    const-string v4, "sms.getDisplayOriginatingAddress(): xxxxxxxx"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v4, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 809
    const-string v4, "address"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 812
    .end local v1           #address:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 813
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "Mms/SmsReceiverService"

    const-string v4, "sms.getDisplayOriginatingAddress()"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v3, 0x0

    .line 815
    const/4 v4, 0x0

    goto :goto_2

    .line 811
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #address:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v4, "address"

    const v5, 0x7f0901b9

    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v1           #address:Ljava/lang/String;
    :cond_4
    move v5, v8

    .line 835
    goto :goto_1
.end method

.method private handleBootCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToQueuedBox()V

    .line 516
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 521
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 523
    const/4 v0, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 524
    return-void
.end method

.method private handleCbReceived(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 893
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getCbMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/gsm/CbMessage;

    move-result-object v0

    .line 894
    .local v0, cbMsgs:[Landroid/telephony/gsm/CbMessage;
    invoke-direct {p0, p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;[Landroid/telephony/gsm/CbMessage;)Landroid/net/Uri;

    move-result-object v1

    .line 895
    .local v1, messageUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 896
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 898
    :cond_0
    return-void
.end method

.method private handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const-string v2, "Mms/SmsReceiverService"

    .line 924
    .line 925
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 926
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 927
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v0

    .line 928
    if-nez v0, :cond_0

    .line 929
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "smsManager.getCbSettings() = null. Return here."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-char v2, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 936
    const-string v3, "pref_key_cb_settings_activation"

    invoke-interface {p1, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 937
    const-string v3, "pref_cb_my_channel_max_count"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 938
    const-string v3, "pref_sim_ready_status"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 940
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ChannelUtils;->getChannels(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 941
    if-eqz v3, :cond_6

    .line 943
    :try_start_0
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v8

    .line 945
    :goto_1
    iget v5, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v4, v5, :cond_5

    .line 946
    if-ge v4, v2, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v6, v6, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;II)V

    .line 945
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 949
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v6, v6, v4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 968
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v4, v8

    .line 953
    :goto_3
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 956
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/ChannelUtils;->removeChannel(Landroid/content/Context;)V

    .line 953
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v8

    .line 959
    :goto_4
    iget v5, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v4, v5, :cond_5

    .line 960
    if-ge v4, v2, :cond_4

    .line 961
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v6, v6, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;II)V

    .line 959
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 963
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v6, v6, v4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 968
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v0

    .line 973
    array-length v3, v0

    .line 975
    if-le v3, v2, :cond_7

    .line 976
    :goto_6
    if-ge v2, v3, :cond_7

    .line 977
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-short v5, v0, v2

    invoke-static {v4, v5, v8}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;II)V

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 980
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v0

    .line 981
    const-string v2, "pref_cb_my_channel_enabled_count"

    array-length v0, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 982
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 984
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto/16 :goto_0
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "Mms/SmsReceiverService"

    .line 988
    const-string v0, "getRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .line 990
    instance-of v0, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 991
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    .line 992
    const-string v0, "Mms/SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CB] error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_0
    return-void

    .line 994
    :cond_0
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "[CB] error code = Unknown Object received "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "Mms/SmsReceiverService"

    .line 901
    const-string v0, "setRsp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    .line 903
    instance-of v0, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_0

    .line 904
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    .line 905
    const-string v0, "Mms/SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CB] error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    const-string v0, "Mms/SmsReceiverService"

    const-string v0, "[CB] error code = Unknown Object received "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-string v2, "pref_sim_ready_status"

    .line 911
    const-string v0, "ss"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 912
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 914
    const-string v1, "ABSENT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    const-string v1, "pref_sim_ready_status"

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 916
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    const-string v1, "READY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    const-string v1, "pref_sim_ready_status"

    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 919
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private handleSendMessage()V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 325
    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 316
    .local v0, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 319
    :cond_0
    return-void
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 9
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "Mms/SmsReceiverService"

    .line 433
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 435
    .local v1, msgs:[Landroid/telephony/SmsMessage;
    aget-object v3, v1, v6

    .line 436
    .local v3, sms:Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v4, :cond_2

    .line 438
    :cond_0
    const-string v4, "Mms/SmsReceiverService"

    const-string v4, "IMPROPER SMS RECEIVED"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    new-instance v2, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct {v2}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    .line 443
    .local v2, mtparser:Lcom/android/mms/transaction/MTMessageParser;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eq v4, v7, :cond_1

    .line 448
    invoke-direct {p0, p0, v1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v0

    .line 450
    .local v0, messageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    const-string v4, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsReceived"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "(replace)"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_3
    if-eqz v0, :cond_1

    .line 460
    invoke-static {p0, v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 461
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 452
    :cond_4
    const-string v5, ""

    goto :goto_1
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 6
    .parameter "intent"
    .parameter "error"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const-string v4, "Mms/SmsReceiverService"

    .line 381
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 382
    .local v1, uri:Landroid/net/Uri;
    iput-boolean v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 383
    const-string v2, "SendNextMsg"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 385
    .local v0, sendNextMsg:Z
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 386
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const-string v2, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent sending uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    invoke-static {p0, v1, v5, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    const-string v2, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent: failed to move message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to sent folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_1
    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 397
    :cond_2
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 398
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 422
    :cond_3
    :goto_0
    return-void

    .line 399
    :cond_4
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 401
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 402
    const-string v2, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 409
    const/4 v2, 0x6

    invoke-static {p0, v1, v2, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 410
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 417
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;I)V

    .line 418
    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_0
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const-string v8, "pref_key_manage_smsc_address"

    .line 296
    const-string v4, "smsc"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, Smsc:[Ljava/lang/String;
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 301
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 303
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    aget-object v4, v0, v7

    const-string v5, "NotSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090155

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, not_set:Ljava/lang/String;
    const-string v4, "pref_key_manage_smsc_address"

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    .end local v2           #not_set:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    return-void

    .line 308
    :cond_0
    const-string v4, "pref_key_manage_smsc_address"

    aget-object v4, v0, v7

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private handleVoicemailReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 467
    const-string v17, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 469
    .local v8, mNotificationManager:Landroid/app/NotificationManager;
    const-string v17, "count"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 471
    .local v15, voicemailCount:I
    const/16 v17, 0x7c

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 472
    const/16 v17, 0x1

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 474
    :cond_0
    new-instance v9, Landroid/app/Notification;

    const v17, 0x108007e

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Voicemail"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v0, v9

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 477
    .local v9, notification:Landroid/app/Notification;
    const-string v17, "voicemail"

    const-string v18, ""

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 478
    .local v13, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object v0, v6

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 479
    .local v6, callIntent:Landroid/content/Intent;
    const/high16 v17, 0x1000

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 481
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object v2, v6

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 484
    .local v7, contentIntent:Landroid/app/PendingIntent;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Voicemail"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Voicemail"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 487
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 489
    .local v12, sp:Landroid/content/SharedPreferences;
    const-string v17, "pref_key_vibrate"

    const/16 v18, 0x1

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 490
    .local v14, vibrate:Z
    if-eqz v14, :cond_1

    .line 491
    move-object v0, v9

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object v1, v9

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 495
    :cond_1
    const-string v17, "pref_key_backlight"

    const/16 v18, 0x1

    move-object v0, v12

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 497
    .local v5, backlight:Z
    if-eqz v5, :cond_2

    .line 498
    const-string v17, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 499
    .local v10, pm:Landroid/os/PowerManager;
    const v17, 0x1000001a

    const-string v18, "New message notification LCD on"

    move-object v0, v10

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    .line 501
    .local v16, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    const/16 v19, 0x0

    move-object v0, v10

    move-wide/from16 v1, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 502
    const-wide/16 v17, 0x1388

    invoke-virtual/range {v16 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 506
    .end local v10           #pm:Landroid/os/PowerManager;
    .end local v16           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_2
    const-string v17, "pref_key_ringtone"

    const/16 v18, 0x0

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 507
    .local v11, ringtoneStr:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, v17

    move-object v1, v9

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 510
    const/16 v17, 0x7c

    move-object v0, v8

    move/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 507
    :cond_3
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    goto :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 557
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 559
    .local v0, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_0

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V

    .line 561
    const/4 v1, 0x0

    .line 565
    :goto_0
    return-object v1

    .line 562
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 563
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 565
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private messageFailedToSend(Landroid/net/Uri;I)V
    .locals 3
    .parameter "uri"
    .parameter "error"

    .prologue
    .line 425
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 429
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 430
    return-void
.end method

.method private moveOutboxMessagesToQueuedBox()V
    .locals 6

    .prologue
    .line 527
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 529
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    return-void
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1039
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 1041
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1042
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1044
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1048
    return-void
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 21
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 579
    const/4 v3, 0x0

    aget-object v20, p2, v3

    .line 580
    .local v20, sms:Landroid/telephony/SmsMessage;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 582
    :cond_0
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "IMPROPER SMS RECEIVED"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/4 v3, 0x0

    .line 619
    :goto_0
    return-object v3

    .line 585
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v12

    .line 587
    .local v12, values:Landroid/content/ContentValues;
    const-string v3, "body"

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v3, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 591
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    .line 592
    .local v18, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v19

    .line 593
    .local v19, protocolIdentifier:I
    const-string v7, "address = ? AND protocol = ?"

    .line 597
    .local v7, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v8, v3

    const/4 v3, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    .line 601
    .local v8, selectionArgs:[Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 604
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 606
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 607
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 608
    .local v16, messageId:J
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 611
    .local v11, messageUri:Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v4

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object v3, v11

    goto :goto_0

    .end local v11           #messageUri:Landroid/net/Uri;
    .end local v16           #messageId:J
    :cond_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_3
    invoke-direct/range {p0 .. p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private storeCbMessage(Landroid/content/Context;[Landroid/telephony/gsm/CbMessage;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v6, "body"

    .line 1003
    aget-object v0, p2, v5

    .line 1007
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1008
    array-length v2, p2

    .line 1011
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1013
    invoke-virtual {v0}, Landroid/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1014
    const-string v2, "body"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :goto_0
    const-string v0, "address"

    const-string v2, "CBmessages"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1029
    const-string v0, "protocol"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v0, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1033
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v5

    .line 1019
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1020
    aget-object v4, p2, v3

    .line 1021
    invoke-virtual {v4}, Landroid/telephony/gsm/CbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1023
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    const-string v2, "body"

    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 24
    .parameter "context"
    .parameter "msgs"
    .parameter "error"

    .prologue
    .line 623
    const/16 v20, 0x0

    aget-object v17, p2, v20

    .line 624
    .local v17, sms:Landroid/telephony/SmsMessage;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 626
    :cond_0
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "IMPROPER SMS RECEIVED"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/16 v20, 0x0

    .line 775
    :goto_0
    return-object v20

    .line 629
    :cond_1
    const/4 v13, 0x0

    .line 633
    .local v13, not_supported_port_message:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v6, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v19

    .line 635
    .local v19, values:Landroid/content/ContentValues;
    if-nez v19, :cond_2

    .line 637
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "extractContentValues() is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/4 v6, 0x0

    .line 639
    const/16 v20, 0x0

    goto :goto_0

    .line 642
    :cond_2
    const-string v20, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    move-object/from16 v0, p2

    array-length v0, v0

    move v14, v0

    .line 646
    .local v14, pduCount:I
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 648
    .local v8, header:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v8, :cond_4

    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 649
    move-object v0, v8

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v15, v0

    .line 650
    .local v15, port:I
    const/16 v20, 0x1580

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x1581

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x1582

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x1583

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x1585

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x1586

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x1589

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x158a

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x15e1

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x15e3

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x2134

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x2135

    move v0, v15

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x2136

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 655
    :cond_3
    const-string v20, "<<"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const v20, 0x7f090187

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v20, ">>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const/4 v13, 0x1

    .line 668
    .end local v15           #port:I
    :cond_4
    const/16 v20, 0x1

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 674
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 676
    .local v12, msgBody:Ljava/lang/String;
    if-nez v12, :cond_b

    if-nez v13, :cond_b

    .line 679
    const-string v20, "<<"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const v20, 0x7f090187

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v20, ">>\n"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v20, "body"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v20, "thread_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 713
    .local v18, threadId:Ljava/lang/Long;
    const-string v20, "address"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, address:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 716
    const/16 v20, 0x1

    move-object v0, v5

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    .line 717
    .local v7, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v7, :cond_6

    .line 718
    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 725
    .end local v7           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_6
    :goto_2
    if-eqz v18, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    :cond_7
    if-eqz v5, :cond_8

    .line 726
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 727
    const-string v20, "thread_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 730
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 735
    .local v16, resolver:Landroid/content/ContentResolver;
    const-string v20, "ril.sms.gcf-mode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, GcfMode:Ljava/lang/String;
    const-string v20, "On"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 739
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode On"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 742
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_e

    .line 744
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    sget-object v20, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 748
    .local v10, insertedUri:Landroid/net/Uri;
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 750
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    .line 773
    .end local v11           #intent:Landroid/content/Intent;
    :cond_9
    :goto_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    move-object/from16 v20, v10

    .line 775
    goto/16 :goto_0

    .line 661
    .end local v4           #GcfMode:Ljava/lang/String;
    .end local v5           #address:Ljava/lang/String;
    .end local v10           #insertedUri:Landroid/net/Uri;
    .end local v16           #resolver:Landroid/content/ContentResolver;
    .end local v18           #threadId:Ljava/lang/Long;
    .restart local v15       #port:I
    :cond_a
    const/16 v20, 0x1c6b

    move v0, v15

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 663
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 683
    .end local v15           #port:I
    .restart local v12       #msgBody:Ljava/lang/String;
    :cond_b
    if-nez v13, :cond_5

    .line 689
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 695
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_c
    if-nez v13, :cond_5

    .line 697
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    if-ge v9, v14, :cond_5

    .line 698
    aget-object v17, p2, v9

    .line 699
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 721
    .end local v9           #i:I
    .restart local v5       #address:Ljava/lang/String;
    .restart local v18       #threadId:Ljava/lang/Long;
    :cond_d
    new-instance v5, Ljava/lang/String;

    .end local v5           #address:Ljava/lang/String;
    const-string v20, "Unknown"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 722
    .restart local v5       #address:Ljava/lang/String;
    const-string v20, "address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 756
    .restart local v4       #GcfMode:Ljava/lang/String;
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    :cond_e
    const/4 v10, 0x0

    .restart local v10       #insertedUri:Landroid/net/Uri;
    goto :goto_3

    .line 762
    .end local v10           #insertedUri:Landroid/net/Uri;
    :cond_f
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode Off"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    sget-object v20, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .restart local v10       #insertedUri:Landroid/net/Uri;
    goto :goto_3
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 2

    .prologue
    .line 1051
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "unRegisterForServiceStateChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1056
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 206
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Mms/SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 166
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 168
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 169
    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 202
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 181
    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    if-eqz p1, :cond_1

    const-string v2, "result"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 188
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 189
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 190
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    const/4 v2, 0x2

    return v2

    .end local v1           #msg:Landroid/os/Message;
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 184
    goto :goto_0
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 20

    .prologue
    .line 328
    monitor-enter p0

    const/16 v18, 0x1

    .line 330
    .local v18, success:Z
    :try_start_0
    const-string v3, "content://sms/queued"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 331
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 332
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 336
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 338
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 340
    .local v9, msgText:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, address:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 342
    .local v19, threadId:I
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 344
    .local v17, status:I
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 345
    .local v16, msgId:I
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v10, v0

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 347
    .local v13, msgUri:Landroid/net/Uri;
    new-instance v6, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide v10, v0

    const/16 v3, 0x20

    move/from16 v0, v17

    move v1, v3

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    move v12, v3

    :goto_0
    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V

    .line 351
    .local v6, sender:Lcom/android/mms/transaction/SmsMessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #resolver:Landroid/content/ContentResolver;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendFirstQueuedMessage "

    .end local v5           #uri:Landroid/net/Uri;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xxxxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_0
    const-wide/16 v10, -0x1

    :try_start_2
    invoke-virtual {v6, v10, v11}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 359
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 370
    .end local v6           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #msgText:Ljava/lang/String;
    .end local v13           #msgUri:Landroid/net/Uri;
    .end local v16           #msgId:I
    .end local v17           #status:I
    .end local v19           #threadId:I
    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_2
    if-eqz v18, :cond_3

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 378
    :cond_3
    monitor-exit p0

    return-void

    .line 347
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #msgText:Ljava/lang/String;
    .restart local v13       #msgUri:Landroid/net/Uri;
    .restart local v16       #msgId:I
    .restart local v17       #status:I
    .restart local v19       #threadId:I
    :cond_4
    const/4 v3, 0x0

    move v12, v3

    goto :goto_0

    .line 360
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v6       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v3

    move-object v15, v3

    .line 361
    .local v15, e:Lcom/google/android/mms/MmsException;
    :try_start_4
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 365
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    const/16 v18, 0x0

    goto :goto_1

    .line 370
    .end local v6           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #msgText:Ljava/lang/String;
    .end local v13           #msgUri:Landroid/net/Uri;
    .end local v15           #e:Lcom/google/android/mms/MmsException;
    .end local v16           #msgId:I
    .end local v17           #status:I
    .end local v19           #threadId:I
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 328
    .end local v14           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
