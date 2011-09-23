.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 49
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 445
    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method private dispatchWapPdu_MMS([BIIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 422
    new-array v2, p5, [B

    .line 423
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    add-int v1, p4, p5

    .line 425
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 426
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 432
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 433
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 435
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private dispatchWapPdu_PushCO([BIIII)V
    .locals 4
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    .line 407
    new-array v0, p5, [B

    .line 408
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 415
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 417
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .locals 4
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 458
    const-string v1, "WAP PUSH"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWapPdu_PushMsg : binaryContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 464
    const-string v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private dispatchWapPdu_default([BIILjava/lang/String;II)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "mimeType"
    .parameter "headerStartIndex"
    .parameter "headerLength"

    .prologue
    const/4 v5, 0x0

    .line 387
    new-array v2, p6, [B

    .line 388
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    add-int v1, p5, p6

    .line 392
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 393
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 400
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 402
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 403
    return-void
.end method


# virtual methods
.method public dispatchDomesticWapPdu([B)I
    .locals 20
    .parameter "pdu"

    .prologue
    .line 257
    const-string v2, "MMSDomesticHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchDomesticWapPdu Rx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v18, 0x0

    .line 260
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v2, p1, v18

    and-int/lit16 v4, v2, 0xff

    .line 261
    .local v4, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v2, p1, v19

    and-int/lit16 v5, v2, 0xff

    .line 262
    .local v5, pduType:I
    const/4 v7, 0x0

    .line 264
    .local v7, headerLength:I
    const/4 v2, 0x6

    if-eq v5, v2, :cond_0

    const/4 v2, 0x7

    if-eq v5, v2, :cond_0

    .line 266
    const-string v2, "MMSDomesticHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received non-PUSH WAP PDU. Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v2, 0x1

    .line 382
    :goto_0
    return v2

    .line 270
    .restart local v4       #transactionId:I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    const-string v2, "MMSDomesticHelper"

    const-string v3, "Received PDU. Header Length error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x2

    goto :goto_0

    .line 282
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v7, v2

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/lit8 v18, v2, 0x2

    .line 285
    move/from16 v6, v18

    .line 299
    .local v6, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    const-string v2, "MMSDomesticHelper"

    const-string v3, "Received PDU. Header Content-Type error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v2, 0x2

    goto :goto_0

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 306
    .local v12, mimeType:Ljava/lang/String;
    const-string v2, "MMSDomesticHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimeType = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-nez v12, :cond_4

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v15, v2

    .line 310
    .local v15, binaryContentType:I
    sparse-switch v15, :sswitch_data_0

    .line 334
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PDU. Unsupported Content-Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 312
    .restart local v4       #transactionId:I
    :sswitch_0
    const-string v12, "application/vnd.oma.drm.rights+xml"

    .line 363
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int v18, v18, v2

    .line 365
    add-int v16, v6, v7

    .line 366
    .local v16, dataIndex:I
    const/16 v17, 0x0

    .line 367
    .local v17, dispatchedByApplication:Z
    sparse-switch v15, :sswitch_data_1

    .line 379
    :goto_2
    if-nez v17, :cond_3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move v13, v6

    move v14, v7

    .line 380
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 382
    :cond_3
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 315
    .end local v16           #dataIndex:I
    .end local v17           #dispatchedByApplication:Z
    :sswitch_1
    const-string v12, "application/vnd.oma.drm.rights+wbxml"

    .line 316
    goto :goto_1

    .line 318
    :sswitch_2
    const-string v12, "application/vnd.wap.sic"

    .line 319
    goto :goto_1

    .line 321
    :sswitch_3
    const-string v12, "application/vnd.wap.slc"

    .line 322
    goto :goto_1

    .line 324
    :sswitch_4
    const-string v12, "application/vnd.wap.coc"

    .line 325
    goto :goto_1

    .line 327
    :sswitch_5
    const-string v12, "application/vnd.wap.mms-message"

    .line 328
    goto :goto_1

    .line 330
    :sswitch_6
    const-string v12, "application/vnd.syncml.notification"

    .line 331
    goto :goto_1

    .line 340
    .end local v15           #binaryContentType:I
    :cond_4
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 341
    const/16 v15, 0x4a

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 342
    .end local v15           #binaryContentType:I
    :cond_5
    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 343
    const/16 v15, 0x4b

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 344
    .end local v15           #binaryContentType:I
    :cond_6
    const-string v2, "application/vnd.wap.sic"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 345
    const/16 v15, 0x2e

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 346
    .end local v15           #binaryContentType:I
    :cond_7
    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 347
    const/16 v15, 0x30

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 348
    .end local v15           #binaryContentType:I
    :cond_8
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 349
    const/16 v15, 0x32

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 350
    .end local v15           #binaryContentType:I
    :cond_9
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 351
    const/16 v15, 0x3e

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 352
    .end local v15           #binaryContentType:I
    :cond_a
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 353
    const/16 v15, 0x44

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 356
    .end local v15           #binaryContentType:I
    :cond_b
    const/16 v15, 0x3e

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .restart local v16       #dataIndex:I
    .restart local v17       #dispatchedByApplication:Z
    :sswitch_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 369
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 370
    const/16 v17, 0x1

    .line 371
    goto :goto_2

    :sswitch_8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 373
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 374
    const/16 v17, 0x1

    .line 375
    goto/16 :goto_2

    .line 310
    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3e -> :sswitch_5
        0x44 -> :sswitch_6
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
    .end sparse-switch

    .line 367
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_7
        0x3e -> :sswitch_8
    .end sparse-switch
.end method

.method public dispatchWapPdu([B)I
    .locals 19
    .parameter "pdu"

    .prologue
    .line 63
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v17, 0x0

    .line 66
    .local v17, index:I
    add-int/lit8 v18, v17, 0x1

    .end local v17           #index:I
    .local v18, index:I
    aget-byte v2, p1, v17

    and-int/lit16 v4, v2, 0xff

    .line 67
    .local v4, transactionId:I
    add-int/lit8 v17, v18, 0x1

    .end local v18           #index:I
    .restart local v17       #index:I
    aget-byte v2, p1, v18

    and-int/lit16 v5, v2, 0xff

    .line 68
    .local v5, pduType:I
    const/4 v7, 0x0

    .line 70
    .local v7, headerLength:I
    const/4 v2, 0x6

    if-eq v5, v2, :cond_0

    const/4 v2, 0x7

    if-eq v5, v2, :cond_0

    .line 72
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received non-PUSH WAP PDU. Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v2, 0x1

    .line 251
    :goto_0
    return v2

    .line 76
    .restart local v4       #transactionId:I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string v2, "WAP PUSH"

    const-string v3, "Received PDU. Header Length error."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v2, 0x2

    goto :goto_0

    .line 88
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v7, v2

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/lit8 v17, v2, 0x2

    .line 91
    move/from16 v6, v17

    .line 105
    .local v6, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    const-string v2, "WAP PUSH"

    const-string v3, "Received PDU. Header Content-Type error."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x2

    goto :goto_0

    .line 110
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 111
    .local v12, mimeType:Ljava/lang/String;
    if-nez v12, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v15, v2

    .line 114
    .local v15, binaryContentType:I
    sparse-switch v15, :sswitch_data_0

    .line 161
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PDU. Unsupported Content-Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 116
    .restart local v4       #transactionId:I
    :sswitch_0
    const-string v12, "application/vnd.oma.drm.rights+xml"

    .line 210
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int v17, v17, v2

    .line 212
    const/16 v16, 0x0

    .line 213
    .local v16, dispatchedByApplication:Z
    sparse-switch v15, :sswitch_data_1

    .line 247
    :goto_2
    if-nez v16, :cond_3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move v13, v6

    move v14, v7

    .line 248
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 251
    :cond_3
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 119
    .end local v16           #dispatchedByApplication:Z
    :sswitch_1
    const-string v12, "application/vnd.oma.drm.rights+wbxml"

    .line 120
    goto :goto_1

    .line 122
    :sswitch_2
    const-string v12, "application/vnd.wap.sic"

    .line 123
    goto :goto_1

    .line 125
    :sswitch_3
    const-string v12, "application/vnd.wap.slc"

    .line 126
    goto :goto_1

    .line 128
    :sswitch_4
    const-string v12, "application/vnd.wap.coc"

    .line 129
    goto :goto_1

    .line 131
    :sswitch_5
    const-string v12, "application/vnd.wap.mms-message"

    .line 132
    goto :goto_1

    .line 134
    :sswitch_6
    const-string v12, "application/vnd.omaloc-supl-init"

    .line 135
    goto :goto_1

    .line 137
    :sswitch_7
    const-string v12, "application/vnd.docomo.pf"

    .line 138
    goto :goto_1

    .line 144
    :sswitch_8
    const-string v12, "application/vnd.syncml.notification"

    .line 145
    goto :goto_1

    .line 149
    :sswitch_9
    const-string v12, "application/vnd.wap.connectivity-wbxml"

    .line 150
    goto :goto_1

    .line 152
    :sswitch_a
    const-string v12, "application/vnd.syncml.dm+wbxml"

    .line 153
    goto :goto_1

    .line 155
    :sswitch_b
    const-string v12, "application/vnd.syncml.dm+xml"

    .line 156
    goto :goto_1

    .line 167
    .end local v15           #binaryContentType:I
    :cond_4
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    const/16 v15, 0x4a

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 169
    .end local v15           #binaryContentType:I
    :cond_5
    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    const/16 v15, 0x4b

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 171
    .end local v15           #binaryContentType:I
    :cond_6
    const-string v2, "application/vnd.wap.sic"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 172
    const/16 v15, 0x2e

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 173
    .end local v15           #binaryContentType:I
    :cond_7
    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    const/16 v15, 0x30

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 175
    .end local v15           #binaryContentType:I
    :cond_8
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 176
    const/16 v15, 0x32

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 177
    .end local v15           #binaryContentType:I
    :cond_9
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 178
    const/16 v15, 0x3e

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 179
    .end local v15           #binaryContentType:I
    :cond_a
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 180
    const/16 v15, 0x312

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 181
    .end local v15           #binaryContentType:I
    :cond_b
    const-string v2, "application/vnd.docomo.pf"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 182
    const/16 v15, 0x310

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 188
    .end local v15           #binaryContentType:I
    :cond_c
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 189
    const/16 v15, 0x44

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 192
    .end local v15           #binaryContentType:I
    :cond_d
    const-string v2, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 193
    const/16 v15, 0x36

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 194
    .end local v15           #binaryContentType:I
    :cond_e
    const-string v2, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 195
    const/16 v15, 0x42

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 196
    .end local v15           #binaryContentType:I
    :cond_f
    const-string v2, "application/vnd.syncml.dm+xml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 197
    const/16 v15, 0x43

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 201
    .end local v15           #binaryContentType:I
    :cond_10
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 202
    const/16 v15, 0x44

    .restart local v15       #binaryContentType:I
    goto/16 :goto_1

    .line 206
    .end local v15           #binaryContentType:I
    :cond_11
    const-string v2, "WAP PUSH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received PDU. Unknown Content-Type = "

    .end local v4           #transactionId:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v4       #transactionId:I
    .restart local v15       #binaryContentType:I
    .restart local v16       #dispatchedByApplication:Z
    :sswitch_c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 215
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 216
    const/16 v16, 0x1

    .line 217
    goto/16 :goto_2

    :sswitch_d
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 219
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 220
    const/16 v16, 0x1

    .line 221
    goto/16 :goto_2

    .line 241
    :sswitch_e
    const/16 v16, 0x0

    .line 242
    goto/16 :goto_2

    .line 114
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x30 -> :sswitch_3
        0x32 -> :sswitch_4
        0x36 -> :sswitch_9
        0x3e -> :sswitch_5
        0x42 -> :sswitch_a
        0x43 -> :sswitch_b
        0x44 -> :sswitch_8
        0x4a -> :sswitch_0
        0x4b -> :sswitch_1
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    .line 213
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_e
        0x30 -> :sswitch_e
        0x32 -> :sswitch_c
        0x36 -> :sswitch_e
        0x3e -> :sswitch_d
        0x42 -> :sswitch_e
        0x43 -> :sswitch_e
    .end sparse-switch
.end method
