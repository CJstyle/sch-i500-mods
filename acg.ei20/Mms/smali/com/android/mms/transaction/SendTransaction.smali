.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 76
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 77
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    .line 81
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 82
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method public run()V
    .locals 27

    .prologue
    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v17

    .line 97
    .local v17, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Sending rate limit surpassed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 202
    .end local v17           #rateCtlr:Lcom/android/mms/util/RateController;
    :goto_0
    return-void

    .line 103
    .restart local v17       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v16

    .line 104
    .local v16, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v22

    check-cast v22, Lcom/google/android/mms/pdu/SendReq;

    .line 107
    .local v22, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6

    .line 108
    .local v12, date:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v22

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 111
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 112
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    const-string v4, "Mms/SendTransaction"

    const-string v5, "start sending"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v24

    .line 129
    .local v24, tokenKey:J
    new-instance v15, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v15

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 130
    .local v15, pComp:Lcom/google/android/mms/pdu/PduComposer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/google/android/mms/pdu/PduComposer;->setOptionalFieldAttendance(Z)V

    .line 132
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v21

    .line 134
    .local v21, response:[B
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 137
    new-instance v20, Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v20, respStr:Ljava/lang/String;
    const-string v4, "Mms/SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), resp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v20           #respStr:Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/SendConf;

    .line 142
    .local v10, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v10, :cond_5

    .line 143
    const-string v4, "Mms/SendTransaction"

    const-string v5, "No M-Send.conf received. Return here!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 149
    :cond_5
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v18

    .line 150
    .local v18, reqId:[B
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v11

    .line 151
    .local v11, confId:[B
    move-object/from16 v0, v18

    move-object v1, v11

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_7

    .line 152
    const-string v4, "Mms/SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent Transaction-ID: req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", conf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 160
    :cond_7
    :try_start_3
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    const/4 v4, 0x2

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 161
    .restart local v7       #values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v19

    .line 162
    .local v19, respStatus:I
    const-string v4, "resp_st"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const/16 v4, 0x80

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_a

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    const-string v4, "Mms/SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned an error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/16 v4, 0x82

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_8

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    new-instance v5, Lcom/android/mms/transaction/SendTransaction$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SendTransaction$1;-><init>(Lcom/android/mms/transaction/SendTransaction;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 179
    :cond_a
    :try_start_4
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 180
    .local v14, messageId:Ljava/lang/String;
    const-string v4, "m_id"

    invoke-virtual {v7, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v26

    .line 188
    .local v26, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 192
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v11           #confId:[B
    .end local v12           #date:J
    .end local v14           #messageId:Ljava/lang/String;
    .end local v15           #pComp:Lcom/google/android/mms/pdu/PduComposer;
    .end local v16           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v17           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v18           #reqId:[B
    .end local v19           #respStatus:I
    .end local v21           #response:[B
    .end local v22           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v24           #tokenKey:J
    .end local v26           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    move-object/from16 v23, v4

    .line 193
    .local v23, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "Mms/SendTransaction"

    invoke-static/range {v23 .. v23}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 195
    .end local v23           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_d

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 198
    const-string v5, "Mms/SendTransaction"

    const-string v6, "Delivery failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    throw v4
.end method
