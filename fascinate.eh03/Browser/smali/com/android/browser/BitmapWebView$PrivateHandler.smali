.class Lcom/android/browser/BitmapWebView$PrivateHandler;
.super Landroid/os/Handler;
.source "BitmapWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BitmapWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 514
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v1

    .line 515
    .local v1, state:I
    if-eq v1, v4, :cond_1

    .line 517
    if-ne v1, v5, :cond_0

    .line 519
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v5, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 530
    :pswitch_1
    const/4 v0, 0x0

    .line 532
    .local v0, resend:Z
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-boolean v2, v2, Lcom/android/browser/BitmapWebView;->mPaused:Z

    if-eq v2, v4, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-boolean v2, v2, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 540
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 542
    const/4 v0, 0x0

    .line 551
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->status()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    if-ne v0, v4, :cond_0

    .line 553
    invoke-virtual {p0, v4}, Lcom/android/browser/BitmapWebView$PrivateHandler;->removeMessages(I)V

    .line 554
    invoke-virtual {p0, v4}, Lcom/android/browser/BitmapWebView$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 545
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 562
    .end local v0           #resend:Z
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->surfaceChanged()V

    goto :goto_0

    .line 566
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-boolean v2, v2, Lcom/android/browser/BitmapWebView;->mPaused:Z

    if-eq v2, v4, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->updateWebViewTexture()V

    goto :goto_0

    .line 572
    :pswitch_4
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->computeScroll()V

    goto :goto_0

    .line 576
    :pswitch_5
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->doTensionAni()V

    goto :goto_0

    .line 580
    :pswitch_6
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mSurface:Lcom/android/browser/BitmapWebView$Surface;

    invoke-interface {v2}, Lcom/android/browser/BitmapWebView$Surface;->stopDraw()V

    .line 582
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget v3, v3, Lcom/android/browser/BitmapWebView;->mDTScale:F

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->onAdaptiveZoomFinished(F)V

    .line 584
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 585
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v3, v3, Lcom/android/browser/BitmapWebView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;Z)V

    .line 587
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2, v4, v4}, Lcom/android/browser/BitmapWebView;->initWebViewVariables(ZZ)Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 589
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    new-instance v3, Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v4, v4, Lcom/android/browser/BitmapWebView;->mViewRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/BitmapWebView;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    .line 592
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iget-object v2, v2, Lcom/android/browser/BitmapWebView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 599
    :pswitch_7
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iput v3, v2, Lcom/android/browser/BitmapWebView;->mScrollDX:F

    .line 600
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    iput v3, v2, Lcom/android/browser/BitmapWebView;->mScrollDY:F

    .line 601
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->hide()V

    goto/16 :goto_0

    .line 606
    :pswitch_8
    iget-object v2, p0, Lcom/android/browser/BitmapWebView$PrivateHandler;->this$0:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->doubleTapAni()V

    goto/16 :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
