.class Lcom/android/music/common/util/DrmServicePopup$3;
.super Ljava/lang/Object;
.source "DrmServicePopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/DrmServicePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/DrmServicePopup;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/DrmServicePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayListener:onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    iget-object v0, v0, Lcom/android/music/common/util/DrmServicePopup;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/common/manager/MusicDrmManager;->setDrmPopupShown(Z)V

    .line 391
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$400(Lcom/android/music/common/util/DrmServicePopup;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    .line 393
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter from ListView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->playMusicInPopup(Z)V

    .line 464
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$400(Lcom/android/music/common/util/DrmServicePopup;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    .line 400
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Play on ListView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$300(Lcom/android/music/common/util/DrmServicePopup;)Lcom/android/music/common/util/DrmPopupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->playMusicInPopup(Z)V

    goto :goto_0

    .line 405
    :cond_1
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mPlayListener.onClick:CorePlayerService.class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    const-string v0, "_data = ?"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const/4 v7, 0x0

    .line 417
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v9}, Lcom/android/music/common/util/DrmServicePopup;->access$200(Lcom/android/music/common/util/DrmServicePopup;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 422
    if-eqz v0, :cond_7

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 423
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 435
    :goto_1
    if-eqz v0, :cond_6

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 440
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 441
    iget-object v1, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v1}, Lcom/android/music/common/util/DrmServicePopup;->access$200(Lcom/android/music/common/util/DrmServicePopup;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/system/media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 449
    :goto_3
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v1, "command"

    const-string v2, "com.android.music.musicservicecommand.prepare"

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v1, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string v0, "bPlay"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 463
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-virtual {v0}, Lcom/android/music/common/util/DrmServicePopup;->dismiss()V

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 427
    :goto_4
    :try_start_2
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteFullException getFileId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 429
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 435
    if-eqz v1, :cond_5

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto/16 :goto_2

    .line 430
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 431
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteDiskIOException getFileId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->makeNotiMessageForClosingAPK(Landroid/content/Context;)V

    .line 433
    iget-object v0, p0, Lcom/android/music/common/util/DrmServicePopup$3;->this$0:Lcom/android/music/common/util/DrmServicePopup;

    invoke-static {v0}, Lcom/android/music/common/util/DrmServicePopup;->access$100(Lcom/android/music/common/util/DrmServicePopup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicUtils;->forceStopPackage(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 435
    if-eqz v1, :cond_5

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto/16 :goto_2

    .line 435
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_6
    if-eqz v1, :cond_2

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 445
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_3

    .line 457
    :cond_4
    const-string v0, "mPlayListener.onClick:: mUri==null"

    .line 458
    invoke-static {}, Lcom/android/music/common/util/DrmServicePopup;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 430
    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5

    .line 426
    :catch_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_4

    :cond_5
    move-object v0, v8

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v1, v8

    goto/16 :goto_1
.end method
