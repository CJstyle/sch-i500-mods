.class public Lcom/sec/android/app/twlauncher/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field mAnimationDuration:I

.field mAnimationFrom:F

.field mAnimationStartTime:J

.field mAnimationState:I

.field mAnimationTo:F

.field mDrawState:I

.field mPrevDrawState:I

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/PageIndicator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 265
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    .line 257
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    .line 259
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 260
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationDuration:I

    .line 267
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;I)Z
    .locals 12
    .parameter "canvas"
    .parameter "index"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    const/high16 v7, 0x3f80

    const/4 v9, 0x2

    const/high16 v8, 0x4000

    .line 291
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    if-ne v3, v11, :cond_0

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationStartTime:J

    .line 293
    iput v9, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 296
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v1, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextPaint:Landroid/graphics/Paint;

    .line 298
    .local v1, p:Landroid/graphics/Paint;
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    if-ne v3, v9, :cond_4

    .line 299
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 300
    .local v0, normalized:F
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_1

    .line 301
    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 303
    :cond_1
    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 305
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationTo:F

    iget v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float v2, v3, v4

    .line 307
    .local v2, value:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 308
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 311
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    if-eq p2, v10, :cond_2

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v3

    aget v3, v3, v11

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v3

    aget v3, v3, v9

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 316
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 317
    if-eq p2, v10, :cond_3

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v3

    aget v3, v3, v9

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 318
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v4

    aget v4, v4, v9

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 335
    .end local v0           #normalized:F
    .end local v2           #value:F
    :cond_3
    :goto_0
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    move v3, v11

    .line 339
    :goto_1
    return v3

    .line 321
    :cond_4
    iget v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 322
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    aget v2, v3, v4

    .line 323
    .restart local v2       #value:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v7, v2

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v7, v2

    mul-float/2addr v4, v5

    div-float/2addr v4, v8

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 329
    if-eq p2, v10, :cond_3

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v3

    aget v3, v3, v9

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    .line 330
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget v3, v3, Lcom/sec/android/app/twlauncher/PageIndicator;->mTextSize:I

    int-to-float v3, v3

    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v4

    aget v4, v4, v9

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->this$0:Lcom/sec/android/app/twlauncher/PageIndicator;

    iget-object v5, v5, Lcom/sec/android/app/twlauncher/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 339
    .end local v2           #value:F
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method initDrawState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    .line 271
    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    .line 272
    return-void
.end method

.method setDrawState(I)V
    .locals 2
    .parameter "drawState"

    .prologue
    .line 275
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    .line 276
    iput p1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    .line 278
    iget v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationState:I

    .line 281
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationTo:F

    .line 282
    invoke-static {}, Lcom/sec/android/app/twlauncher/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/sec/android/app/twlauncher/PageIndicator$Page;->mAnimationFrom:F

    .line 284
    :cond_0
    return-void
.end method
