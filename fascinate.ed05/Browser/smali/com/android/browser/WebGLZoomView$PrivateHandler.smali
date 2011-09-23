.class Lcom/android/browser/WebGLZoomView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebGLZoomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebGLZoomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebGLZoomView;


# direct methods
.method constructor <init>(Lcom/android/browser/WebGLZoomView;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x5

    const/4 v6, 0x0

    .line 153
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 159
    :pswitch_0
    const/4 v1, 0x0

    .line 163
    .local v1, resend:Z
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v3, v3, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3, v4}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTextureBitmap(Landroid/graphics/Region;Z)Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 165
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mTextureBitmapDirtyRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 167
    const/4 v1, 0x0

    .line 176
    :goto_1
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomView;->status()I

    move-result v2

    if-eq v2, v5, :cond_0

    if-ne v1, v4, :cond_0

    .line 178
    invoke-virtual {p0, v4}, Lcom/android/browser/WebGLZoomView$PrivateHandler;->removeMessages(I)V

    .line 179
    invoke-virtual {p0, v4}, Lcom/android/browser/WebGLZoomView$PrivateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 170
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 190
    .end local v1           #resend:Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-boolean v2, v2, Lcom/android/browser/WebGLZoomView;->mScrollChangedCalled:Z

    if-nez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iput-boolean v6, v2, Lcom/android/browser/WebGLZoomView;->mOnScroll:Z

    .line 194
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iput-boolean v6, v2, Lcom/android/browser/WebGLZoomView;->mTouchMoved:Z

    .line 195
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomView;->hide()V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iput-boolean v6, v2, Lcom/android/browser/WebGLZoomView;->mScrollChangedCalled:Z

    .line 200
    invoke-virtual {p0, v5}, Lcom/android/browser/WebGLZoomView$PrivateHandler;->removeMessages(I)V

    .line 201
    invoke-static {}, Lcom/android/browser/WebGLZoomView;->access$100()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/browser/WebGLZoomView$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomRenderer;->surfaceChanged()V

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomRenderer;->updateWebViewTexture()V

    goto :goto_0

    .line 215
    :pswitch_4
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v2, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    const/high16 v4, 0x3f80

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    .line 217
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v2, v2, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    const/high16 v3, 0x4130

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 219
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTScale:F

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->onAdaptiveZoomFinished(F)V

    .line 221
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 222
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v3, v3, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;)V

    .line 223
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomRenderer;->onScaleEnd()V

    goto/16 :goto_0

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v2, v2, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    const/high16 v3, 0x4140

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iput v7, v2, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    .line 233
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iput v7, v2, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    .line 234
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomView;->hide()V

    .line 235
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iput-boolean v6, v2, Lcom/android/browser/WebGLZoomView;->mDoubleTapping:Z

    goto/16 :goto_0

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v2, v2, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    .line 243
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTEndScrollX:F

    iput v3, v2, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    .line 244
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTEndScrollY:F

    iput v3, v2, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    .line 245
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTZoomCX:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTZoomCY:F

    iget-object v5, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v5, v5, Lcom/android/browser/WebGLZoomView;->mDTEndScale:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/browser/WebGLZoomRenderer;->show(FFF)V

    .line 246
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2, v6}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    .line 249
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTEndScale:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTEndScale:F

    iget-object v5, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v5, v5, Lcom/android/browser/WebGLZoomView;->mDTZoomCX:F

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v6, v6, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v6, v6, Lcom/android/browser/WebGLZoomView;->mDTZoomCY:F

    iget-object v7, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v7, v7, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 254
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v3}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v3

    iget v3, v3, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v4}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v4

    iget v4, v4, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 255
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v3, v3, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;)V

    .line 258
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 265
    :cond_6
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v2, v2, Lcom/android/browser/WebGLZoomView;->mDTStartScale:F

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTScaleDelta:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 266
    .local v0, newScale:F
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTStartScrollX:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    iget-object v5, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v5, v5, Lcom/android/browser/WebGLZoomView;->mDTScrollXDelta:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    .line 267
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTStartScrollY:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTCount:F

    iget-object v5, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v5, v5, Lcom/android/browser/WebGLZoomView;->mDTScrollYDelta:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    .line 271
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v2}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTZoomCX:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTZoomCY:F

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/browser/WebGLZoomRenderer;->show(FFF)V

    .line 272
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2, v6}, Lcom/android/browser/WebGLZoomView;->requestDrawFrame(Z)V

    .line 275
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v3, v3, Lcom/android/browser/WebGLZoomView;->mDTZoomCX:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v4, v4, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget v4, v4, Lcom/android/browser/WebGLZoomView;->mDTZoomCY:F

    iget-object v5, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v5, v5, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 280
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v3}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v3

    iget v3, v3, Lcom/android/browser/WebGLZoomRenderer;->mScrollDX:F

    iget-object v4, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    invoke-static {v4}, Lcom/android/browser/WebGLZoomView;->access$000(Lcom/android/browser/WebGLZoomView;)Lcom/android/browser/WebGLZoomRenderer;

    move-result-object v4

    iget v4, v4, Lcom/android/browser/WebGLZoomRenderer;->mScrollDY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 281
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v3, v3, Lcom/android/browser/WebGLZoomView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->transformPlugins(Landroid/graphics/Matrix;)V

    .line 283
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    iget-object v2, p0, Lcom/android/browser/WebGLZoomView$PrivateHandler;->this$0:Lcom/android/browser/WebGLZoomView;

    iget-object v2, v2, Lcom/android/browser/WebGLZoomView;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3

    invoke-virtual {v2, v8, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
