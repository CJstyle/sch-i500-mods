.class Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;
.super Ljava/lang/Object;
.source "BookMarkDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->startThumbnailCreateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const-string v12, "BookMarkDialog"

    .line 439
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->m_tag:Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getThumbnailHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 441
    .local v5, thumbnail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/videoplayer/util/VideoThumb;>;"
    const-string v9, "BookMarkDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPausing :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1100(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1100(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 445
    if-eqz v5, :cond_1

    sget-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    if-nez v9, :cond_3

    .line 447
    :cond_1
    const-string v9, "BookMarkDialog"

    const-string v9, "BookMark : Thumbnail : return "

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2
    :goto_0
    return-void

    .line 450
    :cond_3
    sget-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 452
    .local v3, size:I
    if-gtz v3, :cond_4

    .line 454
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z
    invoke-static {v9, v13}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1102(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z

    .line 455
    const-string v9, "BookMarkDialog"

    const-string v9, "BookMark : Thumbnail : thumbnail.size() == 0 "

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9

    if-ne v9, v3, :cond_5

    .line 461
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #setter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z
    invoke-static {v9, v13}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1102(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;Z)Z

    .line 462
    const-string v9, "BookMarkDialog"

    const-string v9, "BookMark : Thumbnail : thumbnail.size() == mCursor.getCount() "

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 466
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 467
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 469
    sget-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mPausing:Z
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1100(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 472
    sget-object v9, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mBookMarkArrayList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 473
    .local v6, time:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 474
    .local v8, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-nez v8, :cond_7

    .line 475
    new-instance v8, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .end local v8           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/sec/android/app/videoplayer/util/VideoThumb;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 476
    .restart local v8       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_7
    invoke-virtual {v8}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getRretrieverChecked()Z

    move-result v9

    if-nez v9, :cond_9

    .line 478
    const/4 v4, 0x0

    .line 480
    .local v4, thumb:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 484
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mFilePath:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1200(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 491
    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v6

    const/4 v11, 0x3

    invoke-virtual {v2, v9, v10, v11}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 505
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 512
    :goto_2
    monitor-enter v5

    .line 514
    if-nez v4, :cond_8

    .line 516
    :try_start_2
    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #getter for: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$800(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 517
    .local v1, imageView:Landroid/widget/ImageView;
    const v9, 0x7f020031

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 518
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 520
    .end local v1           #imageView:Landroid/widget/ImageView;
    :cond_8
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->setRretrieverChecked(Z)V

    .line 521
    invoke-virtual {v8, v4}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 522
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog$6;->this$0:Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;

    #calls: Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->inNotifyDataSetChanged(I)V
    invoke-static {v9, v0}, Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;->access$1300(Lcom/sec/android/app/videoplayer/popup/BookMarkDialog;I)V

    .line 524
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 467
    .end local v2           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    .restart local v2       #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 505
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 507
    :catch_1
    move-exception v9

    goto :goto_2

    .line 497
    :catch_2
    move-exception v9

    .line 505
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 507
    :catch_3
    move-exception v9

    goto :goto_2

    .line 503
    :catchall_0
    move-exception v9

    .line 505
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 510
    :goto_3
    throw v9

    .line 524
    :catchall_1
    move-exception v9

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v9

    .line 507
    :catch_4
    move-exception v9

    goto :goto_2

    :catch_5
    move-exception v10

    goto :goto_3
.end method
