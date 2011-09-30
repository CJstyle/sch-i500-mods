.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 59
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 60
    iput-object p4, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mId:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ReadRecTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const-string v6, "Mms/ReadRecTransaction"

    .line 72
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 76
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 79
    .local v4, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, lineNumber:Ljava/lang/String;
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v7, "insert-address-token"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 85
    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v4}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    .line 86
    .local v3, postingData:[B
    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/ReadRecTransaction;->sendPdu([B)[B

    .line 88
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 89
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 90
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 104
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 105
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 106
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    .line 110
    .end local v1           #lineNumber:Ljava/lang/String;
    .end local v3           #postingData:[B
    .end local v4           #readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v5           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 93
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v6, "Mms/ReadRecTransaction"

    const-string v7, "Failed to send M-Read-Rec.Ind."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 105
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 106
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 97
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    const-string v6, "Mms/ReadRecTransaction"

    const-string v7, "Failed to load message from Outbox."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_2

    .line 105
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 106
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    .line 99
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 101
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v6, "Mms/ReadRecTransaction"

    const-string v7, "Unexpected RuntimeException."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v8, :cond_3

    .line 105
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 106
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 108
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_0

    .line 104
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    if-eq v7, v8, :cond_4

    .line 105
    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 106
    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v8, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 108
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    throw v6
.end method
