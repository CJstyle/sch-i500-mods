.class Landroid/webkit/WebView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 5138
    iput-object p1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5138
    invoke-direct {p0, p1}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5247
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 5249
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onNewScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    .line 5252
    .local v0, flag:Z
    if-ne v0, v6, :cond_0

    .line 5257
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2, v6}, Landroid/webkit/WebView;->access$1902(Landroid/webkit/WebView;Z)Z

    :cond_0
    move v2, v0

    .line 5280
    .end local v0           #flag:Z
    :goto_0
    return v2

    .line 5264
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 5266
    .local v1, scale:F
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Landroid/webkit/WebView;->access$3100()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 5267
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2, v6}, Landroid/webkit/WebView;->access$1902(Landroid/webkit/WebView;Z)Z

    .line 5269
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 5270
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    const/high16 v3, 0x3fa0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 5274
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;F)F

    .line 5275
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 5276
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2, v1, v7, v7}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZ)V

    .line 5277
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    move v2, v6

    .line 5278
    goto :goto_0

    .line 5272
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_3
    move v2, v7

    .line 5280
    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 5143
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)V

    .line 5144
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 5146
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v2, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 5149
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5150
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 5153
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->startZoom()V

    .line 5157
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 5159
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 5161
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 5162
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v2, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 5163
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 5166
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/webkit/OnPinchZoomListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;FF)Z

    .line 5171
    :cond_2
    return v4
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5177
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 5179
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1, v6}, Landroid/webkit/WebView;->access$1902(Landroid/webkit/WebView;Z)Z

    .line 5180
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getCenterX()F

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;F)F

    .line 5181
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getCenterY()F

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 5182
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getScale()F

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 5184
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 5185
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 5187
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 5188
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 5191
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5192
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1, v5}, Landroid/webkit/WebView;->access$1902(Landroid/webkit/WebView;Z)Z

    .line 5193
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v4}, Landroid/webkit/WebView;->access$2300(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;I)I

    .line 5194
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v4}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;I)I

    .line 5207
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    invoke-static {v1, v2, v6, v6}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZ)V

    .line 5209
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 5213
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1500(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1, v5}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5217
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 5222
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Landroid/webkit/WebView;->access$2702(Landroid/webkit/WebView;I)I

    .line 5223
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v1, v6}, Landroid/webkit/WebView;->access$2802(Landroid/webkit/WebView;Z)Z

    .line 5224
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-static {v4}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;FFJ)V

    .line 5227
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->endZoom()V

    .line 5231
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 5233
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1, p1}, Landroid/webkit/OnPinchZoomListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 5234
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 5236
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 5237
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v6, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 5238
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 5241
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_4
    return-void
.end method
