.class public Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;
.super Landroid/os/AsyncTask;
.source "LogDetailDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;
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

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->isWhichOp:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 15
    .parameter "params"

    .prologue
    .line 179
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->isWhichOp:I

    .line 180
    const-string v0, "Log Delete Activity"

    const-string v1, "[PerformScan] Call Log delete start ....."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$100(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v13

    .line 184
    .local v13, totalCnt:I
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    div-int/lit8 v2, v13, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 185
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 234
    .end local v13           #totalCnt:I
    .end local p1
    :cond_0
    :goto_0
    const-string v0, "Log Delete Activity"

    const-string v1, "[PerformScan] Call Log delete end ....."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 191
    .restart local p1
    :cond_1
    const/4 v7, 0x0

    .line 192
    .local v7, colIdx:I
    const/4 v10, 0x0

    .line 193
    .local v10, dataId:I
    const/4 v9, 0x0

    .line 194
    .local v9, dataCnt:I
    const/4 v12, 0x0

    .line 195
    .local v12, endComma:Z
    const/4 v11, 0x0

    .line 196
    .local v11, deletedCnt:I
    const/4 v6, 0x0

    .line 198
    .local v6, checkedPos:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "logtype"

    aput-object v1, v2, v0

    .line 200
    .local v2, projection:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    .local v14, whereLogsDB:Ljava/lang/StringBuffer;
    const-string v0, "_id in ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$200(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 209
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 210
    const/4 v9, 0x0

    .end local p1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$300(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 212
    invoke-interface {v8, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 213
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 214
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 215
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const/4 v12, 0x1

    .line 210
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 222
    :cond_2
    if-eqz v12, :cond_3

    .line 223
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 224
    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$CallDelete;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #projection:[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 226
    const-string v0, "Log Delete Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logs DB remained data deleted Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 230
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->publishProgress([Ljava/lang/Object;)V

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 250
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->isWhichOp:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->isWhichOp:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->setResult(I)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->finish()V

    .line 257
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 258
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    const v1, 0x7f090044

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->finish()V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;->access$400(Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 241
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogDetailDeleteActivity$PerformScan;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
