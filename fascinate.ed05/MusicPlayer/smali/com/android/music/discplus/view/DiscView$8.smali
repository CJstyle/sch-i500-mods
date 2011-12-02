.class Lcom/android/music/discplus/view/DiscView$8;
.super Landroid/os/Handler;
.source "DiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/discplus/view/DiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;)V
    .locals 0
    .parameter

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1417
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1465
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1466
    return-void

    .line 1420
    :sswitch_0
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->viewMedia()V

    .line 1421
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v2

    sget-object v3, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v2, v3, :cond_0

    .line 1422
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/discplus/data/DiscPlusData;->getAudioItemCount()I

    move-result v0

    .line 1423
    .local v0, audioCount:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getTotalCount()I

    move-result v1

    .line 1424
    .local v1, count:I
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$900(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$CDPlay;->btn:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1425
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1900(Lcom/android/music/discplus/view/DiscView;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1424
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1425
    goto :goto_2

    .line 1432
    .end local v0           #audioCount:I
    .end local v1           #count:I
    :sswitch_1
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v2

    sget-object v3, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_RUNNING:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v2

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->access$1000(Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;)Lcom/android/music/discplus/view/DiscRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscRenderer;->isTextureLoaded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1437
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2, v4}, Lcom/android/music/discplus/view/DiscView;->setRenderMode(Z)V

    goto :goto_0

    .line 1439
    :cond_3
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$2000(Lcom/android/music/discplus/view/DiscView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x4b0

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1446
    :sswitch_2
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->viewMedia()V

    goto :goto_0

    .line 1451
    :sswitch_3
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->viewMedia()V

    .line 1452
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView;->stopAnimation()V

    goto/16 :goto_0

    .line 1459
    :sswitch_4
    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/discplus/view/DiscView$8;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$1100(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscView$DiscGLSurfaceView;->setSpinStop()V

    goto/16 :goto_0

    .line 1417
    :sswitch_data_0
    .sparse-switch
        0x44c -> :sswitch_0
        0x4b0 -> :sswitch_1
        0x514 -> :sswitch_2
        0x578 -> :sswitch_3
        0x5dc -> :sswitch_4
    .end sparse-switch
.end method
