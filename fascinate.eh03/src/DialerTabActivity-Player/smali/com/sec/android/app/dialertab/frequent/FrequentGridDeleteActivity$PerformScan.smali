.class public Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "FrequentGridDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 378
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 24
    .parameter "params"

    .prologue
    .line 381
    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->isWhichOp:I

    .line 382
    const-string v20, "Frequent Delete Activity"

    const-string v21, "[PerformScan] Call Log delete start ....."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->isWhichOp:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 384
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v18, value:Landroid/content/ContentValues;
    const-string v20, "frequent"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const/4 v10, 0x0

    .line 387
    .local v10, firstCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v10

    .line 390
    :cond_0
    const/16 v16, 0x0

    .line 391
    .local v16, secondCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v16

    .line 394
    :cond_1
    add-int v17, v10, v16

    .line 396
    .local v17, totalCnt:I
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    div-int/lit8 v22, v17, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 398
    const/4 v9, 0x0

    .line 400
    .local v9, favoIdxId:I
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 401
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "starred"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v15, sb:Ljava/lang/StringBuilder;
    const-string v20, "_id"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v20, " IN ("

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 407
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 408
    if-eqz v14, :cond_2

    .line 409
    const-string v20, ","

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    move-object v0, v15

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 407
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 414
    :cond_3
    const-string v20, ")"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 420
    const-wide/16 v20, 0x12c

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    .line 421
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 513
    .end local v9           #favoIdxId:I
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v17           #totalCnt:I
    .end local v18           #value:Landroid/content/ContentValues;
    .end local v19           #values:Landroid/content/ContentValues;
    .end local p1
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/ProgressDialog;->getMax()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 514
    const-string v20, "Frequent Delete Activity"

    const-string v21, "[PerformScan] Call Log delete end ....."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v20, 0x0

    return-object v20

    .line 423
    .end local v10           #firstCnt:I
    .end local v14           #i:I
    .end local v16           #secondCnt:I
    .restart local p1
    :cond_4
    const/4 v5, 0x0

    .line 424
    .local v5, checkedItem:I
    const/4 v10, 0x0

    .line 425
    .restart local v10       #firstCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v10

    .line 428
    :cond_5
    const/16 v16, 0x0

    .line 429
    .restart local v16       #secondCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getCount()I

    move-result v16

    .line 433
    :cond_6
    const/4 v7, 0x0

    .line 434
    .local v7, favoCheckedCnt:I
    const/4 v11, 0x0

    .line 435
    .local v11, freqCheckedCnt:I
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 436
    .local v12, freqChkList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 438
    .local v8, favoChkList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    if-ge v14, v10, :cond_9

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/GridView;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 440
    .local v13, giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v13}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getDataTypeTag()I

    move-result v6

    .line 442
    .local v6, dataTag:I
    const/16 v20, 0x2

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 443
    add-int/lit8 v5, v5, 0x1

    .line 444
    add-int/lit8 v11, v11, 0x1

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v6           #dataTag:I
    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 448
    .restart local v6       #dataTag:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 449
    add-int/lit8 v7, v7, 0x1

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 455
    .end local v6           #dataTag:I
    .end local v13           #giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_9
    const/4 v14, 0x0

    :goto_4
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$700(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/widget/GridView;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;

    .line 457
    .restart local v13       #giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    invoke-virtual {v13}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteCursorAdapter;->getDataTypeTag()I

    move-result v6

    .line 459
    .restart local v6       #dataTag:I
    const/16 v20, 0x2

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 460
    add-int/lit8 v5, v5, 0x1

    .line 461
    add-int/lit8 v11, v11, 0x1

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x2

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 455
    .end local v6           #dataTag:I
    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 465
    .restart local v6       #dataTag:I
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 466
    add-int/lit8 v7, v7, 0x1

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 473
    .end local v6           #dataTag:I
    .end local v13           #giv:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$GridItemView;
    :cond_c
    if-lez v11, :cond_f

    .line 474
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 475
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "frequent"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 477
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    const-string v20, "number"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v20, " IN ("

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const/4 v14, 0x0

    .end local p1
    :goto_6
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v20

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 482
    if-eqz v14, :cond_d

    .line 483
    const-string v20, ","

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_d
    const-string v20, "\'"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v12, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v20, "\'"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 489
    :cond_e
    const-string v20, ")"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_f
    if-lez v7, :cond_12

    .line 493
    new-instance v19, Landroid/content/ContentValues;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Landroid/content/ContentValues;-><init>(I)V

    .line 494
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v20, "starred"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .restart local v15       #sb:Ljava/lang/StringBuilder;
    const-string v20, "_id"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v20, " IN ("

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v20

    move v0, v14

    move/from16 v1, v20

    if-ge v0, v1, :cond_11

    .line 500
    if-eqz v14, :cond_10

    .line 501
    const-string v20, ","

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_10
    invoke-virtual {v8, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 505
    :cond_11
    const-string v20, ")"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    .end local v15           #sb:Ljava/lang/StringBuilder;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_12
    const-wide/16 v20, 0x32

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 530
    iget v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->finish()V

    .line 560
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 561
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    const v1, 0x7f090045

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->access$800(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 522
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 377
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method