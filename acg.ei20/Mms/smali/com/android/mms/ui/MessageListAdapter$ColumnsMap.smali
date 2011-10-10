.class public Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsMap"
.end annotation


# instance fields
.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsPriority:I

.field public mColumnMmsRead:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnSmsAddress:I

.field public mColumnSmsAlertHandling:I

.field public mColumnSmsBody:I

.field public mColumnSmsCategory:I

.field public mColumnSmsCertainty:I

.field public mColumnSmsDate:I

.field public mColumnSmsErrorCode:I

.field public mColumnSmsExpires:I

.field public mColumnSmsIdentifier:I

.field public mColumnSmsLanguage:I

.field public mColumnSmsLocked:I

.field public mColumnSmsPriority:I

.field public mColumnSmsRead:I

.field public mColumnSmsResponseType:I

.field public mColumnSmsServiceCategory:I

.field public mColumnSmsSeverity:I

.field public mColumnSmsStatus:I

.field public mColumnSmsType:I

.field public mColumnSmsUrgency:I

.field public mColumnThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    .line 384
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    .line 385
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    .line 386
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    .line 387
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    .line 388
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    .line 389
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    .line 390
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    .line 391
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    .line 392
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    .line 393
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I

    .line 394
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    .line 395
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    .line 396
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    .line 397
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    .line 398
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    .line 399
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    .line 400
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    .line 401
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    .line 403
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    .line 404
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    .line 405
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I

    .line 407
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServiceCategory:I

    .line 408
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCategory:I

    .line 409
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsResponseType:I

    .line 410
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSeverity:I

    .line 411
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsUrgency:I

    .line 412
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCertainty:I

    .line 413
    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsIdentifier:I

    .line 414
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAlertHandling:I

    .line 415
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsExpires:I

    .line 416
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLanguage:I

    .line 417
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const-string v1, "read"

    const-string v1, "pri"

    const-string v1, "locked"

    const-string v2, "colsMap"

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    :try_start_1
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    :goto_1
    :try_start_2
    const-string v1, "thread_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 442
    :goto_2
    :try_start_3
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 448
    :goto_3
    :try_start_4
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 454
    :goto_4
    :try_start_5
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 460
    :goto_5
    :try_start_6
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 466
    :goto_6
    :try_start_7
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 472
    :goto_7
    :try_start_8
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 478
    :goto_8
    :try_start_9
    const-string v1, "service_category"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServiceCategory:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 483
    :goto_9
    :try_start_a
    const-string v1, "category"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCategory:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 488
    :goto_a
    :try_start_b
    const-string v1, "response_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsResponseType:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 493
    :goto_b
    :try_start_c
    const-string v1, "severity"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSeverity:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    .line 498
    :goto_c
    :try_start_d
    const-string v1, "urgency"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsUrgency:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 503
    :goto_d
    :try_start_e
    const-string v1, "certainty"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCertainty:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    .line 508
    :goto_e
    :try_start_f
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    .line 514
    :goto_f
    :try_start_10
    const-string v1, "error_code"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10

    .line 520
    :goto_10
    :try_start_11
    const-string v1, "pri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11

    .line 525
    :goto_11
    :try_start_12
    const-string v1, "sub"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_12

    .line 531
    :goto_12
    :try_start_13
    const-string v1, "sub_cs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13

    .line 537
    :goto_13
    :try_start_14
    const-string v1, "m_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_14

    .line 543
    :goto_14
    :try_start_15
    const-string v1, "msg_box"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_15

    .line 549
    :goto_15
    :try_start_16
    const-string v1, "d_rpt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_16

    .line 555
    :goto_16
    :try_start_17
    const-string v1, "rr"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_17

    .line 561
    :goto_17
    :try_start_18
    const-string v1, "err_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_18

    .line 567
    :goto_18
    :try_start_19
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_19

    .line 573
    :goto_19
    :try_start_1a
    const-string v1, "read"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 578
    :goto_1a
    :try_start_1b
    const-string v1, "pri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 582
    :goto_1b
    return-void

    .line 425
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 426
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 431
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 432
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 437
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 438
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 443
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 444
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 449
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 450
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 455
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 456
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 461
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 462
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 467
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 468
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 473
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 474
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 479
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 480
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 484
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 485
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 489
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 490
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 494
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 495
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 499
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 500
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 504
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 505
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 509
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 510
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 515
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 516
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 521
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 522
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 526
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 527
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 532
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 533
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 538
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 539
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 544
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 545
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 550
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 551
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 556
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 557
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 562
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 563
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 568
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 569
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 574
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 575
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 579
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 580
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b
.end method
