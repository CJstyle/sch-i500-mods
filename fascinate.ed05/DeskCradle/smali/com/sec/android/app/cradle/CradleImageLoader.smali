.class public Lcom/sec/android/app/cradle/CradleImageLoader;
.super Ljava/lang/Thread;
.source "CradleImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/CradleImageLoader$OnItemUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CradleImageLoader"


# instance fields
.field private mCurrentBitmap:Landroid/graphics/Bitmap;

.field private mCurrentUri:Landroid/net/Uri;

.field private mCurrentView:I

.field private mItemUpdateListener:Lcom/sec/android/app/cradle/CradleImageLoader$OnItemUpdateListener;

.field private mPaused:Z

.field private mThreadLive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public clearQueue()V
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    monitor-exit p0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadImage(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 31
    monitor-enter p0

    .line 33
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mPaused:Z

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mPaused:Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 38
    :cond_0
    monitor-exit p0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mPaused:Z

    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mPaused:Z

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mThreadLive:Z

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/CradleImageLoader;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    :goto_0
    return-void

    .line 83
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 43
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mThreadLive:Z

    .line 44
    const-string v1, "CradleImageLoader"

    const-string v2, "Started."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mThreadLive:Z

    if-eqz v1, :cond_1

    .line 48
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 54
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    iget-object v1, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mItemUpdateListener:Lcom/sec/android/app/cradle/CradleImageLoader$OnItemUpdateListener;

    iget-object v2, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mCurrentBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mCurrentView:I

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/cradle/CradleImageLoader$OnItemUpdateListener;->onImageUpdate(Landroid/graphics/Bitmap;I)V

    .line 62
    iput-boolean v4, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mPaused:Z

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit p0

    .line 64
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setItemUpdateListener(Lcom/sec/android/app/cradle/CradleImageLoader$OnItemUpdateListener;)V
    .locals 0
    .parameter "updateItemListener"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleImageLoader;->mItemUpdateListener:Lcom/sec/android/app/cradle/CradleImageLoader$OnItemUpdateListener;

    .line 98
    return-void
.end method
