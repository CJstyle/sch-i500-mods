.class public Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler$CatchingWorkerHandler;
.super Landroid/content/AsyncQueryHandler$WorkerHandler;
.source "FrequentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CatchingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler$CatchingWorkerHandler;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;

    .line 209
    invoke-direct {p0, p1, p2}, Landroid/content/AsyncQueryHandler$WorkerHandler;-><init>(Landroid/content/AsyncQueryHandler;Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 215
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->access$000()Landroid/content/ContentResolver;

    move-result-object v0

    .line 216
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    .line 281
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 218
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/AsyncQueryHandler$WorkerArgs;

    .line 220
    .local v6, args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    iget v12, p1, Landroid/os/Message;->what:I

    .line 221
    .local v12, token:I
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 223
    .local v9, event:I
    packed-switch v9, :pswitch_data_0

    .line 267
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_1
    iget-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 268
    .local v11, reply:Landroid/os/Message;
    iput-object v6, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 269
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v11, Landroid/os/Message;->arg1:I

    .line 271
    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 274
    .end local v6           #args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    .end local v9           #event:I
    .end local v11           #reply:Landroid/os/Message;
    .end local v12           #token:I
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 275
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v1, "Logs List"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 227
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    .restart local v9       #event:I
    .restart local v12       #token:I
    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$QueryHandler;->access$000()Landroid/content/ContentResolver;

    move-result-object v0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider$Frequent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 230
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 231
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_3

    .line 237
    :cond_1
    :goto_2
    :try_start_2
    iput-object v7, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 276
    .end local v6           #args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #event:I
    .end local v12           #token:I
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 277
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v1, "Logs List"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v6       #args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    .restart local v9       #event:I
    .restart local v12       #token:I
    :catch_2
    move-exception v1

    move-object v8, v1

    .line 234
    .local v8, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .restart local v7       #cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 241
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :pswitch_1
    const/4 v10, 0x0

    .line 243
    .local v10, iterator:Landroid/content/EntityIterator;
    :try_start_3
    iget-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/util/CursorConverter;->toEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 249
    :goto_3
    :try_start_4
    iput-object v10, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 278
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    .end local v9           #event:I
    .end local v10           #iterator:Landroid/content/EntityIterator;
    .end local v12           #token:I
    :catch_3
    move-exception v1

    move-object v8, v1

    .line 279
    .local v8, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v1, "Logs List"

    const-string v2, "Exception on background worker thread"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v8           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #args:Landroid/content/AsyncQueryHandler$WorkerArgs;
    .restart local v9       #event:I
    .restart local v12       #token:I
    :pswitch_2
    :try_start_5
    iget-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 257
    :pswitch_3
    iget-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->values:Landroid/content/ContentValues;

    iget-object v3, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_1

    .line 262
    :pswitch_4
    iget-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->selection:Ljava/lang/String;

    iget-object v3, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v6, Landroid/content/AsyncQueryHandler$WorkerArgs;->result:Ljava/lang/Object;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 246
    .restart local v10       #iterator:Landroid/content/EntityIterator;
    :catch_4
    move-exception v1

    goto :goto_3

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
