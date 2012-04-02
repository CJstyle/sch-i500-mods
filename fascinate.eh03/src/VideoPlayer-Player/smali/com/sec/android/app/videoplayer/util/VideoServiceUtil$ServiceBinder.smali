.class Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;
.super Ljava/lang/Object;
.source "VideoServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceBinder"
.end annotation


# instance fields
.field mCallback:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1488
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    .line 1489
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1492
    invoke-static {p2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 1493
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1495
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil$ServiceBinder;->mCallback:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1501
    :cond_0
    return-void
.end method
