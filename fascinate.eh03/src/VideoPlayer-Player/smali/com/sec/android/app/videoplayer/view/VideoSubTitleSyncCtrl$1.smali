.class Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;
.super Ljava/lang/Object;
.source "VideoSubTitleSyncCtrl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "event"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 91
    .local v0, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 105
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 94
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    goto :goto_0

    .line 98
    :pswitch_1
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    const/4 v3, 0x2

    const-wide/16 v4, 0x64

    #calls: Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->sendMessage(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->access$000(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;IJ)V

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->showSyncBtn()V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
