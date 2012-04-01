.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;
.super Landroid/os/Handler;
.source "MoviePlayer.java"


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
    .line 1852
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1855
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1871
    :goto_0
    return-void

    .line 1858
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->queueNextRefresh(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$000(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;IJ)V

    goto :goto_0

    .line 1862
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    goto :goto_0

    .line 1865
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->getDuringCallToast()Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$200(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1866
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$1;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #calls: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->activityFinish()V
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$100(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V

    goto :goto_0

    .line 1855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
