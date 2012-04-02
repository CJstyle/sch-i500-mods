.class Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;
.super Ljava/lang/Object;
.source "VideoTitleController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoTitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 133
    .local v0, pressTime:J
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 147
    .end local p0
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 136
    .restart local p0
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$000(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;

    move-result-object v2

    const v3, 0x36ee80

    invoke-interface {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoTitleController$TitleControl;->showControls(I)V

    goto :goto_0

    .line 140
    :pswitch_1
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoTitleController$1;->this$0:Lcom/sec/android/app/videoplayer/view/VideoTitleController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoTitleController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoTitleController;->access$100(Lcom/sec/android/app/videoplayer/view/VideoTitleController;)Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->finish()V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
