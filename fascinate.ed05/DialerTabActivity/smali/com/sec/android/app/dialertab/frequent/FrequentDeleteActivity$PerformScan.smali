.class public Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "FrequentDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerformScan"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private isWhichOp:I

.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 22
    .parameter "params"

    .prologue
    .line 448
    const/16 v18, 0x0

    aget-object v18, p1, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->isWhichOp:I

    .line 449
    const-string v18, "Frequent Delete Activity"

    const-string v19, "[PerformScan] Call Log delete start ....."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->isWhichOp:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 451
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v16, value:Landroid/content/ContentValues;
    const-string v18, "frequent"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v19

    add-int v15, v18, v19

    .line 455
    .local v15, totalCnt:I
    const-string v18, "TAG"

    const-string v19, "// fake progress start"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    div-int/lit8 v20, v15, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 457
    const-string v18, "TAG"

    const-string v19, "// fake progress start"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 460
    const/4 v9, 0x0

    .line 463
    .local v9, favoIdxId:I
    new-instance v17, Landroid/content/ContentValues;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    .line 464
    .local v17, values:Landroid/content/ContentValues;
    const-string v18, "starred"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v14, sb:Ljava/lang/StringBuilder;
    const-string v18, "_id"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v18, " IN ("

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/database/Cursor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 470
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/database/Cursor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 471
    if-eqz v12, :cond_0

    .line 472
    const-string v18, ","

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/database/Cursor;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v0, v14

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/database/Cursor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    .line 470
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 477
    :cond_1
    const-string v18, ")"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 482
    const-wide/16 v18, 0x12c

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    .line 483
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 551
    .end local v9           #favoIdxId:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v15           #totalCnt:I
    .end local v16           #value:Landroid/content/ContentValues;
    .end local v17           #values:Landroid/content/ContentValues;
    .end local p1
    :goto_1
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/ProgressDialog;->getMax()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 552
    const-string v18, "Frequent Delete Activity"

    const-string v19, "[PerformScan] Call Log delete end ....."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v18, 0x0

    return-object v18

    .line 485
    .end local v12           #i:I
    .restart local p1
    :cond_2
    const/4 v5, 0x0

    .line 486
    .local v5, checkedItem:I
    const/4 v6, 0x0

    .line 488
    .local v6, dataCnt:I
    const/4 v7, 0x0

    .line 489
    .local v7, favoCheckedCnt:I
    const/4 v10, 0x0

    .line 490
    .local v10, freqCheckedCnt:I
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 491
    .local v11, freqChkList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 492
    .local v8, favoChkList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getCount()I

    move-result v6

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v12

    .restart local v12       #i:I
    :goto_2
    if-ge v12, v6, :cond_5

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/widget/ListView;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)I

    move-result v19

    move v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v13

    .line 496
    .local v13, isFrequent:Z
    if-eqz v13, :cond_4

    .line 497
    add-int/lit8 v5, v5, 0x1

    .line 498
    add-int/lit8 v10, v10, 0x1

    .line 499
    sget-object v18, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    const/16 v19, 0x1

    sub-int v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Landroid/database/MergeCursor;->moveToPosition(I)Z

    .line 500
    sget-object v18, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/database/MergeCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v13           #isFrequent:Z
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 502
    .restart local v13       #isFrequent:Z
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 503
    add-int/lit8 v7, v7, 0x1

    .line 504
    sget-object v18, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    const/16 v19, 0x1

    sub-int v19, v12, v19

    invoke-virtual/range {v18 .. v19}, Landroid/database/MergeCursor;->moveToPosition(I)Z

    .line 505
    sget-object v18, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mMCursor:Landroid/database/MergeCursor;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/database/MergeCursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 510
    .end local v13           #isFrequent:Z
    :cond_5
    if-lez v10, :cond_8

    .line 511
    new-instance v17, Landroid/content/ContentValues;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    .line 512
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "frequent"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    const-string v18, "number"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v18, " IN ("

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const/4 v12, 0x0

    .end local p1
    :goto_4
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 519
    if-eqz v12, :cond_6

    .line 520
    const-string v18, ","

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_6
    const-string v18, "\'"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v18, "\'"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 526
    :cond_7
    const-string v18, ")"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    const-string v18, "test"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_8
    if-lez v7, :cond_b

    .line 531
    new-instance v17, Landroid/content/ContentValues;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/content/ContentValues;-><init>(I)V

    .line 532
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "starred"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    const-string v18, "_id"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v18, " IN ("

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 538
    if-eqz v12, :cond_9

    .line 539
    const-string v18, ","

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    :cond_9
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 537
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 543
    :cond_a
    const-string v18, ")"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const-string v18, "test"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 548
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_b
    const-wide/16 v18, 0x32

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 444
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 569
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->finish()V

    .line 576
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 577
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    const v1, 0x7f090045

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->access$900(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 560
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 444
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
