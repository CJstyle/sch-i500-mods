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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 51
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 52
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private dispatchWapPdu_DMNoti([BI)V
    .locals 3
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 473
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const-string v1, "WAP PUSH"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method private dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I
    .locals 13
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerStartIndex"
    .parameter "headerLength"
    .parameter "mimeType"
    .parameter "binaryContentType"
    .parameter "applicationId"

    .prologue
    .line 502
    const/4 v9, 0x1

    .line 504
    .local v9, ret:I
    move/from16 v0, p5

    new-array v0, v0, [B

    move-object v7, v0

    .line 505
    .local v7, header:[B
    const/4 v10, 0x0

    array-length v11, v7

    move-object v0, p1

    move/from16 v1, p4

    move-object v2, v7

    move v3, v10

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    add-int v6, p4, p5

    .line 507
    .local v6, dataIndex:I
    array-length v10, p1

    sub-int/2addr v10, v6

    new-array v5, v10, [B

    .line 508
    .local v5, data:[B
    const/4 v10, 0x0

    array-length v11, v5

    invoke-static {p1, v6, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v8, intent:Landroid/content/Intent;
    const-string/jumbo v10, "transactionId"

    invoke-virtual {v8, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 512
    const-string/jumbo v10, "pduType"

    move-object v0, v8

    move-object v1, v10

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v10, "header"

    invoke-virtual {v8, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 514
    const-string v10, "data"

    invoke-virtual {v8, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 515
    const-string v10, "applicationId"

    move-object v0, v8

    move-object v1, v10

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 519
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Receive EMN : mimeType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " binaryContentType= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " applicationId= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sparse-switch p7, :sswitch_data_0

    .line 578
    :goto_0
    return v9

    .line 523
    :sswitch_0
    const-string v10, "application/vnd.docomo.pf"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-wide/32 v10, 0x9056

    cmp-long v10, p8, v10

    if-nez v10, :cond_1

    .line 526
    const-string v10, "com.nttdocomo.email.service"

    const-string v11, "com.nttdocomo.email.service.ImodeMailService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_0

    .line 528
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 529
    const/4 v9, -0x1

    .line 531
    :cond_0
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : i-mode.net"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_1
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :sswitch_1
    const-string v10, "application/vnd.syncml.notification"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const-wide/16 v10, 0x7

    cmp-long v10, p8, v10

    if-nez v10, :cond_3

    .line 542
    const-string v10, "jp.co.nttdocomo.fota"

    const-string v11, "jp.co.nttdocomo.fota.SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    .line 544
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 545
    const/4 v9, -0x1

    .line 547
    :cond_2
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : fota"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 550
    :cond_3
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 555
    :sswitch_2
    const-string v10, "application/vnd.wap.emn+wbxml"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-wide/32 v10, 0x905c

    cmp-long v10, p8, v10

    if-nez v10, :cond_5

    .line 558
    const-string v10, "jp.co.nttdocomo.carriermail"

    const-string v11, "jp.co.nttdocomo.carriermail.SMSService"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_4

    .line 560
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 561
    const/4 v9, -0x1

    .line 563
    :cond_4
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : Carrier Mail"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 565
    :cond_5
    const-wide/16 v10, 0x9

    cmp-long v10, p8, v10

    if-nez v10, :cond_7

    .line 567
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    if-eqz v10, :cond_6

    .line 568
    iget-object v10, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v11, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v10, v8, v11}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 569
    const/4 v9, -0x1

    .line 571
    :cond_6
    const-string v10, "WAP PUSH"

    const-string v11, "Receive EMN : mopera U"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 574
    :cond_7
    const-string v10, "WAP PUSH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Application id is unknown:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 521
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x30a -> :sswitch_2
        0x310 -> :sswitch_0
    .end sparse-switch
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

    .line 450
    new-array v2, p5, [B

    .line 451
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p4, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    add-int v1, p4, p5

    .line 453
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 454
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 461
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_MMS"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 464
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
    .line 435
    new-array v0, p5, [B

    .line 436
    .local v0, header:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p1, p4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string/jumbo v2, "transactionId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string/jumbo v2, "pduType"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 443
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 445
    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private dispatchWapPdu_PushMsg([BI)V
    .locals 4
    .parameter "pdu"
    .parameter "binaryContentType"

    .prologue
    .line 486
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

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 492
    const-string/jumbo v1, "pushtype"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 494
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

    .line 415
    new-array v2, p6, [B

    .line 416
    .local v2, header:[B
    array-length v4, v2

    invoke-static {p1, p5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    add-int v1, p5, p6

    .line 420
    .local v1, dataIndex:I
    array-length v4, p1

    sub-int/2addr v4, v1

    new-array v0, v4, [B

    .line 421
    .local v0, data:[B
    array-length v4, v0

    invoke-static {p1, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string/jumbo v4, "transactionId"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string/jumbo v4, "pduType"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 427
    const-string v4, "header"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 428
    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 430
    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 431
    return-void
.end method


# virtual methods
.method public dispatchDomesticWapPdu([B)I
    .locals 20
    .parameter "pdu"

    .prologue
    .line 286
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

    .line 288
    const/16 v18, 0x0

    .line 289
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v2, p1, v18

    and-int/lit16 v4, v2, 0xff

    .line 290
    .local v4, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v2, p1, v19

    and-int/lit16 v5, v2, 0xff

    .line 291
    .local v5, pduType:I
    const/4 v7, 0x0

    .line 293
    .local v7, headerLength:I
    const/4 v2, 0x6

    if-eq v5, v2, :cond_0

    const/4 v2, 0x7

    if-eq v5, v2, :cond_0

    .line 295
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

    .line 296
    const/4 v2, 0x1

    .line 411
    :goto_0
    return v2

    .line 299
    .restart local v4       #transactionId:I
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    const-string v2, "MMSDomesticHelper"

    const-string v3, "Received PDU. Header Length error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v2, 0x2

    goto :goto_0

    .line 311
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v7, v2

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int/lit8 v18, v2, 0x2

    .line 314
    move/from16 v6, v18

    .line 328
    .local v6, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 329
    const-string v2, "MMSDomesticHelper"

    const-string v3, "Received PDU. Header Content-Type error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v2, 0x2

    goto :goto_0

    .line 333
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v12

    .line 335
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

    .line 337
    if-nez v12, :cond_4

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v2

    long-to-int v15, v2

    .line 339
    .local v15, binaryContentType:I
    sparse-switch v15, :sswitch_data_0

    .line 363
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

    .line 366
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 341
    .restart local v4       #transactionId:I
    :sswitch_0
    const-string v12, "application/vnd.oma.drm.rights+xml"

    .line 392
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v2

    add-int v18, v18, v2

    .line 394
    add-int v16, v6, v7

    .line 395
    .local v16, dataIndex:I
    const/16 v17, 0x0

    .line 396
    .local v17, dispatchedByApplication:Z
    sparse-switch v15, :sswitch_data_1

    .line 408
    :goto_2
    if-nez v17, :cond_3

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    move v13, v6

    move v14, v7

    .line 409
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 411
    :cond_3
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 344
    .end local v16           #dataIndex:I
    .end local v17           #dispatchedByApplication:Z
    :sswitch_1
    const-string v12, "application/vnd.oma.drm.rights+wbxml"

    .line 345
    goto :goto_1

    .line 347
    :sswitch_2
    const-string v12, "application/vnd.wap.sic"

    .line 348
    goto :goto_1

    .line 350
    :sswitch_3
    const-string v12, "application/vnd.wap.slc"

    .line 351
    goto :goto_1

    .line 353
    :sswitch_4
    const-string v12, "application/vnd.wap.coc"

    .line 354
    goto :goto_1

    .line 356
    :sswitch_5
    const-string v12, "application/vnd.wap.mms-message"

    .line 357
    goto :goto_1

    .line 359
    :sswitch_6
    const-string v12, "application/vnd.syncml.notification"

    .line 360
    goto :goto_1

    .line 369
    .end local v15           #binaryContentType:I
    :cond_4
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 370
    const/16 v15, 0x4a

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 371
    .end local v15           #binaryContentType:I
    :cond_5
    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 372
    const/16 v15, 0x4b

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 373
    .end local v15           #binaryContentType:I
    :cond_6
    const-string v2, "application/vnd.wap.sic"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 374
    const/16 v15, 0x2e

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 375
    .end local v15           #binaryContentType:I
    :cond_7
    const-string v2, "application/vnd.wap.slc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 376
    const/16 v15, 0x30

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 377
    .end local v15           #binaryContentType:I
    :cond_8
    const-string v2, "application/vnd.wap.coc"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 378
    const/16 v15, 0x32

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 379
    .end local v15           #binaryContentType:I
    :cond_9
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 380
    const/16 v15, 0x3e

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 381
    .end local v15           #binaryContentType:I
    :cond_a
    const-string v2, "application/vnd.syncml.notification"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 382
    const/16 v15, 0x44

    .restart local v15       #binaryContentType:I
    goto :goto_1

    .line 385
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

    .line 398
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 399
    const/16 v17, 0x1

    .line 400
    goto :goto_2

    :sswitch_8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 402
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 403
    const/16 v17, 0x1

    .line 404
    goto/16 :goto_2

    .line 339
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

    .line 396
    :sswitch_data_1
    .sparse-switch
        0x32 -> :sswitch_7
        0x3e -> :sswitch_8
    .end sparse-switch
.end method

.method public dispatchWapPdu([B)I
    .locals 26
    .parameter "pdu"

    .prologue
    .line 66
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rx: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v24, 0x0

    .line 69
    .local v24, index:I
    add-int/lit8 v25, v24, 0x1

    .end local v24           #index:I
    .local v25, index:I
    aget-byte v4, p1, v24

    and-int/lit16 v6, v4, 0xff

    .line 70
    .local v6, transactionId:I
    add-int/lit8 v24, v25, 0x1

    .end local v25           #index:I
    .restart local v24       #index:I
    aget-byte v4, p1, v25

    and-int/lit16 v7, v4, 0xff

    .line 71
    .local v7, pduType:I
    const/4 v9, 0x0

    .line 73
    .local v9, headerLength:I
    const/4 v4, 0x6

    if-eq v7, v4, :cond_0

    const/4 v4, 0x7

    if-eq v7, v4, :cond_0

    .line 75
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received non-PUSH WAP PDU. Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v4, 0x1

    .line 280
    :goto_0
    return v4

    .line 79
    .restart local v6       #transactionId:I
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Length error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v4, 0x2

    goto :goto_0

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v9, v4

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int/lit8 v24, v4, 0x2

    .line 94
    move/from16 v8, v24

    .line 108
    .local v8, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 109
    const-string v4, "WAP PUSH"

    const-string v5, "Received PDU. Header Content-Type error."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v4, 0x2

    goto :goto_0

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, mimeType:Ljava/lang/String;
    if-nez v10, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    long-to-int v11, v4

    .line 117
    .local v11, binaryContentType:I
    sparse-switch v11, :sswitch_data_0

    .line 171
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received PDU. Unsupported Content-Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 119
    .restart local v6       #transactionId:I
    :sswitch_0
    const-string v10, "application/vnd.oma.drm.rights+xml"

    .line 223
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v4

    add-int v24, v24, v4

    .line 225
    const/16 v22, 0x0

    .line 226
    .local v22, dispatchedByApplication:Z
    sparse-switch v11, :sswitch_data_1

    .line 276
    :goto_2
    if-nez v22, :cond_3

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v9

    .line 277
    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_default([BIILjava/lang/String;II)V

    .line 280
    :cond_3
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 122
    .end local v22           #dispatchedByApplication:Z
    :sswitch_1
    const-string v10, "application/vnd.oma.drm.rights+wbxml"

    .line 123
    goto :goto_1

    .line 125
    :sswitch_2
    const-string v10, "application/vnd.wap.sic"

    .line 126
    goto :goto_1

    .line 128
    :sswitch_3
    const-string v10, "application/vnd.wap.slc"

    .line 129
    goto :goto_1

    .line 131
    :sswitch_4
    const-string v10, "application/vnd.wap.coc"

    .line 132
    goto :goto_1

    .line 134
    :sswitch_5
    const-string v10, "application/vnd.wap.mms-message"

    .line 135
    goto :goto_1

    .line 137
    :sswitch_6
    const-string v10, "application/vnd.omaloc-supl-init"

    .line 138
    goto :goto_1

    .line 140
    :sswitch_7
    const-string v10, "application/vnd.docomo.pf"

    .line 141
    goto :goto_1

    .line 149
    :sswitch_8
    const-string v10, "application/vnd.syncml.notification"

    .line 150
    goto :goto_1

    .line 155
    :sswitch_9
    const-string v10, "application/vnd.wap.connectivity-wbxml"

    .line 156
    goto :goto_1

    .line 158
    :sswitch_a
    const-string v10, "application/vnd.syncml.dm+wbxml"

    .line 159
    goto :goto_1

    .line 161
    :sswitch_b
    const-string v10, "application/vnd.syncml.dm+xml"

    .line 162
    goto :goto_1

    .line 166
    :sswitch_c
    const-string v10, "application/vnd.wap.emn+wbxml"

    .line 167
    goto :goto_1

    .line 177
    .end local v11           #binaryContentType:I
    :cond_4
    const-string v4, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    const/16 v11, 0x4a

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .line 179
    .end local v11           #binaryContentType:I
    :cond_5
    const-string v4, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 180
    const/16 v11, 0x4b

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .line 181
    .end local v11           #binaryContentType:I
    :cond_6
    const-string v4, "application/vnd.wap.sic"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 182
    const/16 v11, 0x2e

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .line 183
    .end local v11           #binaryContentType:I
    :cond_7
    const-string v4, "application/vnd.wap.slc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 184
    const/16 v11, 0x30

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .line 185
    .end local v11           #binaryContentType:I
    :cond_8
    const-string v4, "application/vnd.wap.coc"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 186
    const/16 v11, 0x32

    .restart local v11       #binaryContentType:I
    goto :goto_1

    .line 187
    .end local v11           #binaryContentType:I
    :cond_9
    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 188
    const/16 v11, 0x3e

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 189
    .end local v11           #binaryContentType:I
    :cond_a
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 190
    const/16 v11, 0x312

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 191
    .end local v11           #binaryContentType:I
    :cond_b
    const-string v4, "application/vnd.docomo.pf"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 192
    const/16 v11, 0x310

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 198
    .end local v11           #binaryContentType:I
    :cond_c
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 199
    const/16 v11, 0x44

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 202
    .end local v11           #binaryContentType:I
    :cond_d
    const-string v4, "application/vnd.wap.connectivity-wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 203
    const/16 v11, 0x36

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 204
    .end local v11           #binaryContentType:I
    :cond_e
    const-string v4, "application/vnd.syncml.dm+wbxml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 205
    const/16 v11, 0x42

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 206
    .end local v11           #binaryContentType:I
    :cond_f
    const-string v4, "application/vnd.syncml.dm+xml"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 207
    const/16 v11, 0x43

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 214
    .end local v11           #binaryContentType:I
    :cond_10
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 215
    const/16 v11, 0x44

    .restart local v11       #binaryContentType:I
    goto/16 :goto_1

    .line 219
    .end local v11           #binaryContentType:I
    :cond_11
    const-string v4, "WAP PUSH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received PDU. Unknown Content-Type = "

    .end local v6           #transactionId:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v6       #transactionId:I
    .restart local v11       #binaryContentType:I
    .restart local v22       #dispatchedByApplication:Z
    :sswitch_d
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 228
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_PushCO([BIIII)V

    .line 229
    const/16 v22, 0x1

    .line 230
    goto/16 :goto_2

    :sswitch_e
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 232
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_MMS([BIIII)V

    .line 233
    const/16 v22, 0x1

    .line 234
    goto/16 :goto_2

    .line 255
    :sswitch_f
    const/16 v22, 0x0

    .line 256
    goto/16 :goto_2

    .line 263
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->getHeaderMapfromSMSPushPDU(III)Ljava/util/HashMap;

    move-result-object v23

    .line 264
    .local v23, headerMap:Ljava/util/HashMap;,"Ljava/util/HashMap<**>;"
    const/16 v4, 0x2f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 266
    .local v21, applicationIdObj:Ljava/lang/Object;
    const-wide/16 v12, 0x0

    .line 267
    .local v12, applicationId:J
    move-object/from16 v0, v21

    instance-of v0, v0, Ljava/lang/Long;

    move v4, v0

    if-eqz v4, :cond_12

    .line 268
    check-cast v21, Ljava/lang/Long;

    .end local v21           #applicationIdObj:Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    :cond_12
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 270
    invoke-direct/range {v4 .. v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN([BIIIILjava/lang/String;IJ)I

    move-result v4

    goto/16 :goto_0

    .line 117
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
        0x30a -> :sswitch_c
        0x310 -> :sswitch_7
        0x312 -> :sswitch_6
    .end sparse-switch

    .line 226
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_f
        0x30 -> :sswitch_f
        0x32 -> :sswitch_d
        0x36 -> :sswitch_f
        0x3e -> :sswitch_e
        0x42 -> :sswitch_f
        0x43 -> :sswitch_f
        0x30a -> :sswitch_10
        0x310 -> :sswitch_10
    .end sparse-switch
.end method
