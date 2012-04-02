.class Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;
.super Ljava/lang/Object;
.source "VideoBtnController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoBtnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)V
    .locals 0
    .parameter

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xbb8

    .line 1218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1220
    .local v0, pressTime:J
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mRoot:Landroid/view/View;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1100(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1247
    :cond_0
    :goto_0
    return v7

    .line 1225
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/16 v3, 0x9

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->removeMessage(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1900(Lcom/sec/android/app/videoplayer/view/VideoBtnController;I)V

    .line 1226
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_0

    .line 1230
    :pswitch_1
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1231
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mShowVolumeBar:Z
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$2200(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 1233
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    .line 1241
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    #getter for: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->mPlayer:Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;
    invoke-static {v2}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1500(Lcom/sec/android/app/videoplayer/view/VideoBtnController;)Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/sec/android/app/videoplayer/view/VideoBtnController$BtnControl;->showControls(I)V

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->setVolumeBarVisible(Z)V

    .line 1237
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoBtnController$8;->this$0:Lcom/sec/android/app/videoplayer/view/VideoBtnController;

    const/4 v3, 0x2

    const-wide/16 v4, 0xbb8

    #calls: Lcom/sec/android/app/videoplayer/view/VideoBtnController;->sendMessage(IJ)V
    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/videoplayer/view/VideoBtnController;->access$1600(Lcom/sec/android/app/videoplayer/view/VideoBtnController;IJ)V

    goto :goto_1

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
