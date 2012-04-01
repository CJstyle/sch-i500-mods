.class Lcom/sec/android/app/videoplayer/activity/VideoList$10;
.super Landroid/os/Handler;
.source "VideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$10;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 1225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1241
    :goto_0
    return-void

    .line 1228
    :pswitch_0
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mProcessingDone:Z

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$10;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->changeListView(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2500(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    goto :goto_0

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$10;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mProcessingRemove:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2600(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1235
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$10;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mProcessingRemove:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2600(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
