.class public Lcom/android/mms/util/Recycler$MmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmsRecycler"
.end annotation


# static fields
.field private static final ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "thread_id"

    .line 313
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v5, v0, v2

    const-string v1, "count(*) as msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v5, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 333
    const-string v0, "MaxMmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$MmsRecycler;->MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    return-void
.end method

.method private deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "latestDate"

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND locked=0 AND date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 459
    .local v0, cntDeleted:J
    const-string v2, "Mms/Recycler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS: deleteMessagesOlderThanDate cntDeleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 475
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 476
    .local v9, msgs:Landroid/database/Cursor;
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 478
    .local v8, limit:I
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 480
    .local v10, s:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v11

    .line 481
    .local v11, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 482
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v0, "thread_id="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " AND locked=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 488
    if-eqz v9, :cond_0

    .line 489
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, v8, :cond_0

    .line 490
    const/4 v0, 0x1

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    if-eqz v9, :cond_1

    .line 497
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 499
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v10           #s:Ljava/lang/StringBuffer;
    .end local v11           #threadId:J
    :cond_1
    :goto_0
    return v0

    .line 495
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    if-eqz v9, :cond_3

    .line 497
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    if-eqz v9, :cond_4

    .line 497
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 11
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    const-string v2, "Mms/Recycler"

    .line 412
    const-string v0, "Mms/Recycler"

    const-string v0, "MMS: deleteMessagesForThread"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const/4 v9, 0x0

    .line 418
    .local v9, cursor:Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    .line 420
    .local v6, latestDate:J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 421
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND locked=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    .end local v6           #latestDate:J
    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 426
    if-nez v9, :cond_2

    .line 427
    const-string v0, "Mms/Recycler"

    const-string v2, "MMS: deleteMessagesForThread got back null cursor"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v9, :cond_0

    .line 446
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 431
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 432
    .local v8, count:I
    sub-int v10, v8, p4

    .line 434
    .local v10, numberToDelete:I
    const-string v0, "Mms/Recycler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS: deleteMessagesForThread keep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numberToDelete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    if-gtz v10, :cond_3

    .line 445
    if-eqz v9, :cond_0

    .line 446
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 442
    :cond_3
    :try_start_2
    invoke-interface {v9, p4}, Landroid/database/Cursor;->move(I)Z

    .line 443
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 445
    .restart local v6       #latestDate:J
    if-eqz v9, :cond_4

    .line 446
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 449
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    goto/16 :goto_0

    .line 445
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v6           #latestDate:J
    .end local v8           #count:I
    .end local v10           #numberToDelete:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 446
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 15
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 363
    const-string v0, "Mms/Recycler"

    const-string v1, "MMS: deleteOldMessagesByUri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    const/4 v9, 0x0

    .line 369
    .local v9, cursor:Landroid/database/Cursor;
    const-wide/16 v11, 0x0

    .line 370
    .local v11, latestDate:J
    const-wide/16 v4, 0x0

    .line 372
    .local v4, threadId:J
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 373
    .local v13, msgId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 374
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->MMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id in (select thread_id from pdu where _id="

    .end local v4           #threadId:J
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") AND locked=0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 380
    if-nez v9, :cond_2

    .line 381
    const-string v0, "Mms/Recycler"

    const-string v1, "MMS: deleteOldMessagesInSameThreadAsMessage got back null cursor"

    .end local v1           #resolver:Landroid/content/ContentResolver;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    if-eqz v9, :cond_0

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 385
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 386
    .local v8, count:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/util/Recycler$MmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v10

    .line 387
    .local v10, keep:I
    sub-int v14, v8, v10

    .line 389
    .local v14, numberToDelete:I
    const-string v0, "Mms/Recycler"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #resolver:Landroid/content/ContentResolver;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS: deleteOldMessagesByUri keep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numberToDelete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    if-gtz v14, :cond_3

    .line 401
    if-eqz v9, :cond_0

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 397
    :cond_3
    :try_start_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->move(I)Z

    .line 398
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v6

    .line 399
    .end local v11           #latestDate:J
    .local v6, latestDate:J
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v4

    .line 401
    .restart local v4       #threadId:J
    if-eqz v9, :cond_4

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 405
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    move-object v2, p0

    move-object/from16 v3, p1

    .line 406
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteMessagesOlderThanDate(Landroid/content/Context;JJ)V

    goto/16 :goto_0

    .line 401
    .end local v4           #threadId:J
    .end local v6           #latestDate:J
    .end local v8           #count:I
    .end local v10           #keep:I
    .end local v13           #msgId:Ljava/lang/String;
    .end local v14           #numberToDelete:I
    .restart local v11       #latestDate:J
    :catchall_0
    move-exception v0

    move-wide v6, v11

    .end local v11           #latestDate:J
    .restart local v6       #latestDate:J
    :goto_1
    if-eqz v9, :cond_5

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 401
    .restart local v8       #count:I
    .restart local v10       #keep:I
    .restart local v13       #msgId:Ljava/lang/String;
    .restart local v14       #numberToDelete:I
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 354
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "threads"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$MmsRecycler;->ALL_MMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 358
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 336
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 337
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultMMSMessagesPerThread()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 342
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 344
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxMmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 346
    return-void
.end method
