.class public Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "LogDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 12
    .parameter "params"

    .prologue
    .line 286
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->isWhichOp:I

    .line 287
    const-string v8, "Log Delete Activity"

    const-string v9, "[PerformScan] Call Log delete start ....."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 289
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v6

    .line 291
    .local v6, totalCnt:I
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    div-int/lit8 v10, v6, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 292
    const-wide/16 v8, 0x12c

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 294
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 311
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    :goto_0
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 387
    .end local v6           #totalCnt:I
    .end local p1
    :goto_1
    const-string v8, "Log Delete Activity"

    const-string v9, "[PerformScan] Call Log delete end ....."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v8, 0x0

    return-object v8

    .line 296
    .restart local v6       #totalCnt:I
    .restart local p1
    :pswitch_0
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 299
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "type=3"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "type=2"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$AllCallDelete;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "type=1"

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 318
    .end local v6           #totalCnt:I
    :cond_0
    const/4 v1, 0x0

    .line 319
    .local v1, colIdx:I
    const/4 v3, 0x0

    .line 320
    .local v3, dataId:I
    const/4 v2, 0x0

    .line 321
    .local v2, dataCnt:I
    const/4 v5, 0x0

    .line 322
    .local v5, endComma:Z
    const/4 v4, 0x0

    .line 323
    .local v4, deletedCnt:I
    const/4 v0, 0x0

    .line 325
    .local v0, checkedPos:I
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v7, whereLogsDB:Ljava/lang/StringBuffer;
    const-string v8, "_id in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    const/4 v2, 0x0

    .end local p1
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 351
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 352
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 353
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 354
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/database/Cursor;

    move-result-object v8

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 355
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$500(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 359
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    rem-int/lit8 v8, v2, 0x64

    if-nez v8, :cond_2

    .line 362
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 367
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 368
    const-string v8, "_id in ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const/4 v5, 0x0

    .line 370
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 349
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 373
    :cond_2
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    const/4 v5, 0x1

    goto :goto_3

    .line 377
    :cond_3
    if-eqz v5, :cond_4

    .line 378
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 379
    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    iget-object v8, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 381
    const-string v8, "Log Delete Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Logs DB remained data deleted Count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 385
    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 282
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x1

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->setResult(I)V

    .line 403
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->isWhichOp:I

    if-ne v0, v2, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->finish()V

    .line 409
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 410
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    const v1, 0x7f090044

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->access$600(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 394
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 282
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
