.class public Lcom/android/music/player/activity/MusicPlayer$Worker;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    const-string v3, "Worker"

    .line 3539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3536
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    .line 3540
    const-string v1, "Worker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3542
    .local v0, t:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3543
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3544
    const-string v1, "Worker"

    const-string v1, "t.start();"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3546
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3548
    :try_start_1
    const-string v2, "Worker"

    const-string v3, "Before mLock.wait();"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3550
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3553
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 3554
    return-void

    .line 3553
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 3574
    const-string v0, "Worker"

    const-string v1, "Worker:quit() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3576
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const-string v0, "Worker"

    .line 3561
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3562
    :try_start_0
    const-string v1, "Worker"

    const-string v2, "run();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3564
    const-string v1, "Worker"

    const-string v2, "Looper.prepare();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLooper:Landroid/os/Looper;

    .line 3566
    const-string v1, "Worker"

    const-string v2, "Looper.myLooper();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 3568
    const-string v1, "Worker"

    const-string v2, "Looper.notifyAll();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3570
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3571
    return-void

    .line 3569
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
