.class public Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;
.super Landroid/view/View;
.source "PanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/PanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoramaRect"
.end annotation


# instance fields
.field private mPanoramaRect:Landroid/graphics/Rect;

.field private mPanoramaRectPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/sec/android/app/camera/PanoramaView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 434
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->init()V

    .line 436
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 429
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 430
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->init()V

    .line 431
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 424
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 425
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->init()V

    .line 426
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 439
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 441
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 444
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 449
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 453
    const-string v0, "PanoramaView"

    const-string v1, "PanoramaRect draw"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 459
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 469
    return-void
.end method

.method public setPanoramaFocusRect([I)V
    .locals 5
    .parameter "panorama"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->invalidate()V

    .line 465
    return-void
.end method

.method public setPanoramaRectParams(II)V
    .locals 3
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 472
    const-string v0, "PanoramaView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->mPanoramaRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v1}, Lcom/sec/android/app/camera/PanoramaView;->access$000(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v2}, Lcom/sec/android/app/camera/PanoramaView;->access$100(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 475
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->invalidate()V

    .line 476
    return-void
.end method
