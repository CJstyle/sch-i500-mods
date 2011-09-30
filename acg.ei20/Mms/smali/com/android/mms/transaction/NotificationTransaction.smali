.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 3
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 147
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p4, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 155
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 156
    return-void

    .line 149
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/NotificationTransaction"

    const-string v2, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v5, "Mms/NotificationTransaction"

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 84
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 95
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, checkTId:Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/MMSDomesticHelper;->isDomesticTestMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, isSimbol:I
    const-string v3, "Mms/NotificationTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContentLocation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 108
    if-eq v2, v7, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    const-string v3, "Mms/NotificationTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v2, v3, :cond_3

    .line 118
    const-string v3, "Mms/NotificationTransaction"

    const-string v3, "The last char is ="

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v6, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v7, v3, :cond_3

    .line 120
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 124
    :cond_3
    const-string v3, "Mms/NotificationTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2           #isSimbol:I
    :cond_4
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MMSDomesticHelper;->isDomesticTestMode(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://222.231.61.41/servlets/mms?message-id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 130
    const-string v3, "MMSDomesticHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Location : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_5
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/NotificationTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 136
    return-void

    .line 89
    .end local v0           #checkTId:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 90
    .local v1, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/NotificationTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load NotificationInd from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 273
    .local v0, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 165
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 168
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 169
    .local v2, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 170
    .local v0, autoDownload:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    const/4 v10, 0x1

    move v1, v10

    .line 174
    .local v1, dataSuspended:Z
    :goto_0
    :try_start_0
    const-string v10, "Mms/NotificationTransaction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Notification transaction launched: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/16 v7, 0x83

    .line 182
    .local v7, status:I
    if-eqz v0, :cond_0

    if-eqz v1, :cond_5

    .line 183
    :cond_0
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v11, 0x80

    invoke-virtual {v2, v10, v11}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 184
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 252
    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    .line 255
    :cond_1
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 257
    :cond_2
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    .line 258
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 259
    const-string v10, "Mms/NotificationTransaction"

    const-string v11, "NotificationTransaction failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 263
    .end local v7           #status:I
    :goto_1
    return-void

    .line 170
    .end local v1           #dataSuspended:Z
    :cond_4
    const/4 v10, 0x0

    move v1, v10

    goto :goto_0

    .line 188
    .restart local v1       #dataSuspended:Z
    .restart local v7       #status:I
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v11, 0x81

    invoke-virtual {v2, v10, v11}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 191
    const-string v10, "Mms/NotificationTransaction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content-Location: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    const/4 v6, 0x0

    .line 198
    .local v6, retrieveConfData:[B
    :try_start_2
    const-string v10, "Mms/NotificationTransaction"

    const-string v11, "start immediate retrieve"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 205
    :goto_2
    if-eqz v6, :cond_7

    .line 206
    :try_start_3
    new-instance v10, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v10, v6}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    .line 207
    .local v5, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v10

    const/16 v11, 0x84

    if-eq v10, v11, :cond_f

    .line 208
    :cond_6
    const-string v10, "Mms/NotificationTransaction"

    const-string v11, "Invalid M-RETRIEVE.CONF PDU."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 210
    const/16 v7, 0x84

    .line 228
    .end local v5           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_7
    :goto_3
    const-string v10, "Mms/NotificationTransaction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "status=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    packed-switch v7, :pswitch_data_0

    .line 244
    :cond_8
    :goto_4
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 247
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v12}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 251
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 252
    if-eqz v0, :cond_9

    if-eqz v1, :cond_a

    .line 255
    :cond_9
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 257
    :cond_a
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_b

    .line 258
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 259
    const-string v10, "Mms/NotificationTransaction"

    const-string v11, "NotificationTransaction failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_b
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_1

    .line 201
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 202
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 248
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #retrieveConfData:[B
    .end local v7           #status:I
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 249
    .local v8, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v10, "Mms/NotificationTransaction"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 252
    if-eqz v0, :cond_c

    if-eqz v1, :cond_d

    .line 255
    :cond_c
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 257
    :cond_d
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_e

    .line 258
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 259
    const-string v10, "Mms/NotificationTransaction"

    const-string v11, "NotificationTransaction failed."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_e
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_1

    .line 213
    .end local v8           #t:Ljava/lang/Throwable;
    .restart local v5       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6       #retrieveConfData:[B
    .restart local v7       #status:I
    :cond_f
    :try_start_6
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 214
    .local v4, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v10}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 217
    .local v9, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v10, v9, v11}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 222
    iput-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 223
    const/16 v7, 0x81

    goto/16 :goto_3

    .line 234
    .end local v4           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v5           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v9           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    .line 251
    .end local v6           #retrieveConfData:[B
    .end local v7           #status:I
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v12, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 252
    if-eqz v0, :cond_10

    if-eqz v1, :cond_11

    .line 255
    :cond_10
    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 257
    :cond_11
    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v11}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    .line 258
    iget-object v11, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 259
    const-string v11, "Mms/NotificationTransaction"

    const-string v12, "NotificationTransaction failed."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_12
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    throw v10

    .line 238
    .restart local v6       #retrieveConfData:[B
    .restart local v7       #status:I
    :pswitch_2
    :try_start_7
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v10}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v10

    if-nez v10, :cond_8

    .line 239
    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 232
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
