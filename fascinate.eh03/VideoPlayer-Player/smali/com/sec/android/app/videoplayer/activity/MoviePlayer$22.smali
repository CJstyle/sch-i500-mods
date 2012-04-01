.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3180
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-static {p2}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 3183
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-nez v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$500(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 3186
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$22;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$502(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .line 3190
    return-void
.end method
