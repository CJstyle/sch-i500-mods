.class public Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
.super Landroid/view/View;
.source "TwScaleZoomRect.java"


# static fields
.field static final LINE_WIDTH:I = 0x2

.field public static final MAX_ZOOM_LEVEL:I = 0x1e

.field public static final MAX_ZOOM_RATIO:I = 0x190

.field public static final MIN_ZOOM_RATIO:I = 0x64

.field public static final ZOOM_STEP:F = 10.0f


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private zoomValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    .line 49
    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 58
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v11, 0x4120

    const/high16 v10, 0x3f80

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    const/4 v2, 0x0

    .line 64
    .local v2, tempWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 65
    .local v0, hcenter:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v4, v5

    .line 66
    .local v4, wcenter:F
    const/4 v1, 0x1

    .line 68
    .local v1, offset:I
    const-string v5, "800x480"

    const-string v6, "400x240"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    const/high16 v2, 0x41a0

    .line 73
    :goto_0
    const/high16 v3, 0x41a0

    .line 75
    .local v3, textUpperMargin:F
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    add-float/2addr v6, v10

    mul-float/2addr v6, v2

    sub-float v6, v4, v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v7, v7

    div-float/2addr v7, v11

    add-float/2addr v7, v10

    mul-float/2addr v7, v2

    sub-float v7, v0, v7

    iget v8, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    add-float/2addr v8, v10

    mul-float/2addr v8, v2

    add-float/2addr v8, v4

    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    div-float/2addr v9, v11

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    add-float/2addr v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    .line 80
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 81
    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    add-float/2addr v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x4170

    sub-float v6, v4, v6

    add-float v7, v0, v3

    iget v8, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v8, v8

    div-float/2addr v8, v11

    add-float/2addr v8, v10

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 85
    return-void

    .line 71
    .end local v3           #textUpperMargin:F
    :cond_0
    const/high16 v2, 0x4220

    goto :goto_0
.end method

.method public setZoomValue(I)V
    .locals 0
    .parameter "currentzoomValue"

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 89
    return-void
.end method
