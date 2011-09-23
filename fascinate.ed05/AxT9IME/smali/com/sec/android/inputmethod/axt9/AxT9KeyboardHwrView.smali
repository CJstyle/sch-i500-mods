.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
.super Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.source "AxT9KeyboardHwrView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    }
.end annotation


# static fields
.field static STATUSBAR_HEIGHT:I


# instance fields
.field final POST_HWR_RECOGNIZE_TIME:I

.field private isHWRDrawing:Z

.field private mCurveEndX:F

.field private mCurveEndY:F

.field private mHwrBox1RectArea:Landroid/graphics/Rect;

.field private mHwrBox2RectArea:Landroid/graphics/Rect;

.field private mHwrBox3RectArea:Landroid/graphics/Rect;

.field private mHwrBox4RectArea:Landroid/graphics/Rect;

.field private mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

.field private mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

.field mHwrDrawingX:F

.field mHwrDrawingY:F

.field mHwrKeyIndex:I

.field private mHwrPaint:Landroid/graphics/Paint;

.field private mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

.field mHwrPenColor:I

.field mHwrPenThickness:I

.field private mHwrRecognize:Ljava/lang/Runnable;

.field mHwrRecognizeTime:I

.field private mHwrRectArea:Landroid/graphics/Rect;

.field mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

.field private final mInvalidRect:Landroid/graphics/Rect;

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mPath:Landroid/graphics/Path;

.field private mPostHwrRecognize:Ljava/lang/Runnable;

.field mStartedHwrTimer:Z

.field private mTimerFlag:Z

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->STATUSBAR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 55
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    .line 67
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mTimerFlag:Z

    .line 84
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 90
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    .line 97
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->POST_HWR_RECOGNIZE_TIME:I

    .line 98
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    .line 710
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 106
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->init()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 55
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    .line 67
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mTimerFlag:Z

    .line 84
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    .line 88
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 90
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    .line 97
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->POST_HWR_RECOGNIZE_TIME:I

    .line 98
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    .line 710
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->init()V

    .line 112
    return-void
.end method

.method private drawHwrLine(FFFF)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v2, 0x1

    .line 553
    new-instance v5, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 554
    .local v5, paint:Landroid/graphics/Paint;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCanvas:Landroid/graphics/Canvas;

    .line 556
    .local v0, canvas:Landroid/graphics/Canvas;
    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 557
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 559
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 561
    cmpl-float v1, p1, p3

    if-nez v1, :cond_1

    cmpl-float v1, p2, p4

    if-nez v1, :cond_1

    .line 562
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, p1, p2, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 570
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrLineRect(FFFF)V

    .line 572
    :cond_0
    return-void

    .line 564
    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 565
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, p3, p4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 566
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 567
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private invalideHwrLineRect(FFFF)V
    .locals 6
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 575
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 576
    .local v0, dimen:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 578
    .local v1, rect:Landroid/graphics/Rect;
    cmpl-float v2, p1, p3

    if-nez v2, :cond_0

    cmpl-float v2, p2, p4

    if-nez v2, :cond_0

    .line 579
    sub-float v2, p1, v0

    float-to-int v2, v2

    sub-float v3, p2, v0

    float-to-int v3, v3

    add-float v4, p1, v0

    float-to-int v4, v4

    add-float v5, p2, v0

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 588
    :goto_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 589
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 590
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 591
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getBottom()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 593
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate(Landroid/graphics/Rect;)V

    .line 594
    return-void

    .line 582
    :cond_0
    cmpg-float v2, p1, p3

    if-gez v2, :cond_1

    sub-float v2, p1, v0

    float-to-int v2, v2

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 583
    cmpg-float v2, p2, p4

    if-gez v2, :cond_2

    sub-float v2, p2, v0

    float-to-int v2, v2

    :goto_2
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 584
    cmpg-float v2, p1, p3

    if-gez v2, :cond_3

    add-float v2, p3, v0

    float-to-int v2, v2

    :goto_3
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 585
    cmpg-float v2, p2, p4

    if-gez v2, :cond_4

    add-float v2, p4, v0

    float-to-int v2, v2

    :goto_4
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 582
    :cond_1
    sub-float v2, p3, v0

    float-to-int v2, v2

    goto :goto_1

    .line 583
    :cond_2
    sub-float v2, p4, v0

    float-to-int v2, v2

    goto :goto_2

    .line 584
    :cond_3
    add-float v2, p1, v0

    float-to-int v2, v2

    goto :goto_3

    .line 585
    :cond_4
    add-float v2, p2, v0

    float-to-int v2, v2

    goto :goto_4
.end method

.method private isHWRInsideCheckArea(FFFFILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "sx"
    .parameter "sy"
    .parameter "ex"
    .parameter "ey"
    .parameter "penThickness"
    .parameter "Area"

    .prologue
    .line 685
    int-to-float v2, p5

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 686
    .local v0, dimetion:F
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 688
    .local v1, srcRect:Landroid/graphics/Rect;
    cmpg-float v2, p1, p3

    if-gez v2, :cond_0

    sub-float v2, p1, v0

    float-to-int v2, v2

    :goto_0
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 690
    cmpg-float v2, p1, p3

    if-gez v2, :cond_1

    add-float v2, p3, v0

    float-to-int v2, v2

    :goto_1
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 692
    cmpg-float v2, p2, p4

    if-gez v2, :cond_2

    sub-float v2, p2, v0

    float-to-int v2, v2

    :goto_2
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 694
    cmpg-float v2, p2, p4

    if-gez v2, :cond_3

    add-float v2, p4, v0

    float-to-int v2, v2

    :goto_3
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 696
    invoke-virtual {p6, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2

    .line 688
    :cond_0
    sub-float v2, p3, v0

    float-to-int v2, v2

    goto :goto_0

    .line 690
    :cond_1
    add-float v2, p1, v0

    float-to-int v2, v2

    goto :goto_1

    .line 692
    :cond_2
    sub-float v2, p4, v0

    float-to-int v2, v2

    goto :goto_2

    .line 694
    :cond_3
    add-float v2, p2, v0

    float-to-int v2, v2

    goto :goto_3
.end method

.method private postInitHwrService()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrPanelArea()V

    .line 146
    return-void
.end method

.method private setHwrArea(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 637
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 638
    return-void
.end method

.method private setHwrBoxArea(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;)V
    .locals 2
    .parameter "box"

    .prologue
    .line 641
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->One:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 652
    :goto_0
    return-void

    .line 643
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Two:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 645
    :cond_1
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Three:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 647
    :cond_2
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Four:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-ne p1, v0, :cond_3

    .line 648
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private setHwrPanelArea()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 597
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 599
    .local v2, keys:[Landroid/inputmethodservice/Keyboard$Key;
    invoke-direct {p0, v5, v5, v5, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrArea(IIII)V

    .line 600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 601
    aget-object v1, v2, v0

    .line 602
    .local v1, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v3, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v5

    const/16 v4, -0xd2

    if-ne v3, v4, :cond_2

    .line 604
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v8, v1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 605
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 606
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 608
    :cond_0
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    .line 613
    .end local v1           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 617
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 621
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 625
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 629
    return-void

    .line 600
    .restart local v1       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private setPaintAlpha(I)V
    .locals 5
    .parameter "alpha"

    .prologue
    .line 780
    shr-int/lit8 v2, p1, 0x7

    add-int/2addr p1, v2

    .line 781
    const/16 v0, 0xff

    .line 782
    .local v0, baseAlpha:I
    mul-int/lit16 v2, p1, 0xff

    shr-int/lit8 v1, v2, 0x8

    .line 783
    .local v1, useAlpha:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 784
    return-void
.end method

.method private startHwrRecognizeTimer()V
    .locals 3

    .prologue
    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 657
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognizeTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 658
    return-void
.end method

.method private stopHwrRecognizeTimer()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 662
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 663
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 664
    return-void
.end method

.method private touch_move(FF)V
    .locals 16
    .parameter "x"
    .parameter "y"

    .prologue
    .line 733
    const/4 v2, 0x0

    .line 734
    .local v2, areaToRefresh:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    move v8, v0

    .line 735
    .local v8, previousX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    move v9, v0

    .line 736
    .local v9, previousY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    move v10, v0

    sub-float v10, p1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 737
    .local v6, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    move v10, v0

    sub-float v10, p2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 739
    .local v7, dy:F
    const/high16 v10, 0x4080

    cmpl-float v10, v6, v10

    if-gez v10, :cond_0

    const/high16 v10, 0x4080

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_1

    .line 740
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    move v3, v0

    .line 742
    .local v3, border:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    move-object v2, v0

    .line 744
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    move v10, v0

    float-to-int v10, v10

    sub-int/2addr v10, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    move v11, v0

    float-to-int v11, v11

    sub-int/2addr v11, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    move v12, v0

    float-to-int v12, v12

    add-int/2addr v12, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    move v13, v0

    float-to-int v13, v13

    add-int/2addr v13, v3

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 747
    add-float v10, p1, v8

    const/high16 v11, 0x4000

    div-float v4, v10, v11

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    .line 748
    .local v4, cX:F
    add-float v10, p2, v9

    const/high16 v11, 0x4000

    div-float v5, v10, v11

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    .line 750
    .local v5, cY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    move v13, v0

    add-float v13, v13, p1

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    move v14, v0

    add-float v14, v14, p2

    const/high16 v15, 0x4000

    div-float/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 753
    float-to-int v10, v8

    sub-int/2addr v10, v3

    float-to-int v11, v9

    sub-int/2addr v11, v3

    float-to-int v12, v8

    add-int/2addr v12, v3

    float-to-int v13, v9

    add-int/2addr v13, v3

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 757
    float-to-int v10, v4

    sub-int/2addr v10, v3

    float-to-int v11, v5

    sub-int/2addr v11, v3

    float-to-int v12, v4

    add-int/2addr v12, v3

    float-to-int v13, v5

    add-int/2addr v13, v3

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/graphics/Rect;->union(IIII)V

    .line 760
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 761
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 764
    .end local v3           #border:I
    .end local v4           #cX:F
    .end local v5           #cY:F
    :cond_1
    if-eqz v2, :cond_2

    .line 765
    const/4 v10, 0x1

    move v0, v10

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 766
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate(Landroid/graphics/Rect;)V

    .line 768
    :cond_2
    return-void
.end method

.method private touch_start(FF)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const v3, 0x3dcccccd

    .line 716
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 717
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 718
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    add-float v2, p1, v3

    add-float/2addr v3, p2

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 720
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    .line 721
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    .line 722
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 723
    .local v0, border:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mInvalidRect:Landroid/graphics/Rect;

    float-to-int v2, p1

    sub-int/2addr v2, v0

    float-to-int v3, p2

    sub-int/2addr v3, v0

    float-to-int v4, p1

    add-int/2addr v4, v0

    float-to-int v5, p2

    add-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 725
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndX:F

    .line 726
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurveEndY:F

    .line 728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 729
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate()V

    .line 730
    return-void
.end method

.method private touch_up(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCanvas:Landroid/graphics/Canvas;

    .line 771
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mX:F

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 774
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 775
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidate()V

    .line 776
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 777
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearCurrentComposing()V

    .line 1013
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCanvas:Landroid/graphics/Canvas;

    .line 1014
    invoke-super {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->closing()V

    .line 1015
    return-void
.end method

.method public finishRecognition()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onPostHwrTimeOut()V

    .line 673
    return-void
.end method

.method public finishRecognitionAndCommit()V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onHwrTimeOut()V

    .line 679
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onPostHwrTimeOut()V

    .line 681
    return-void
.end method

.method protected freeVariables()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1031
    invoke-super {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->freeVariables()V

    .line 1034
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 1036
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    .line 1037
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    .line 1038
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    .line 1039
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    .line 1040
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    .line 1052
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 1053
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

    .line 1055
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 1057
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognize:Ljava/lang/Runnable;

    .line 1058
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    .line 1059
    return-void
.end method

.method public getKeyBackGround(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "primaryCodes"

    .prologue
    .line 524
    const/16 v0, -0xd2

    if-ne p1, v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

    .line 533
    :goto_0
    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 530
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyBackGround(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyBackGround(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public handleHwrTouchDown(II)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->stopHwrRecognizeTimer()V

    .line 793
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 794
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 795
    .local v7, CurBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v9

    .line 796
    .local v9, inputMode:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v8, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 797
    .local v8, inputLanguage:S
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSelectLanguage()I

    move-result v10

    .line 799
    .local v10, selectLanguage:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox1RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 800
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->One:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 801
    const/4 v9, 0x1

    .line 821
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    if-eq v7, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v0

    if-lez v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onHwrTimeOut()V

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0, v9, v8}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setHwrInputMode(IS)V

    .line 826
    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 827
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v0

    if-nez v0, :cond_2

    .line 828
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrBoxArea(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;)V

    .line 832
    .end local v7           #CurBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    .end local v8           #inputLanguage:S
    .end local v9           #inputMode:I
    .end local v10           #selectLanguage:I
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->addPoint(SS)Z

    .line 833
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 834
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 837
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    int-to-float v3, p1

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRInsideCheckArea(FFFFILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 838
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->touch_start(FF)V

    .line 842
    :cond_3
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->drawHwrLine(FFFF)V

    .line 844
    const/4 v0, 0x1

    return v0

    .line 805
    .restart local v7       #CurBoxMode:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;
    .restart local v8       #inputLanguage:S
    .restart local v9       #inputMode:I
    .restart local v10       #selectLanguage:I
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox2RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 806
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Two:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 807
    const/4 v9, 0x1

    .line 808
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const/16 v8, 0x9

    goto :goto_0

    .line 811
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox3RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 812
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Three:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 813
    const/4 v9, 0x2

    goto :goto_0

    .line 814
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrBox4RectArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 815
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->Four:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    .line 816
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 818
    :cond_7
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;->None:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$HwrBox;

    goto/16 :goto_0
.end method

.method public handleHwrTouchMove(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    int-to-short v1, p1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->addPoint(SS)Z

    .line 850
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    int-to-float v3, p1

    int-to-float v4, p2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRectArea:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRInsideCheckArea(FFFFILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->touch_move(FF)V

    .line 862
    :cond_0
    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingX:F

    .line 863
    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDrawingY:F

    .line 865
    const/4 v0, 0x1

    return v0
.end method

.method public handleHwrTouchUp(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 869
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->endStroke()V

    .line 872
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->touch_up(FF)V

    .line 876
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeBackSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrBackgound()V

    move v0, v2

    .line 884
    :goto_0
    return v0

    .line 882
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->startHwrRecognizeTimer()V

    move v0, v2

    .line 884
    goto :goto_0
.end method

.method init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrDividePanelBackground:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->initHwrService()V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setPaintAlpha(I)V

    .line 142
    return-void
.end method

.method public initHwrService()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    if-nez v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getHwrService()Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setContext(Landroid/content/Context;)V

    .line 704
    return-void
.end method

.method public invalideHwrBackgound()V
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 789
    return-void
.end method

.method public isStartedHwrTimer()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    return v0
.end method

.method onBufferDraw()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 212
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 1063
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1065
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isHWRDrawing:Z

    .line 1067
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1073
    :cond_1
    return-void
.end method

.method public onHwrTimeOut()V
    .locals 4

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 892
    .local v0, result:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    if-nez v1, :cond_0

    .line 904
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 897
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeBoxMode()I

    move-result v0

    .line 902
    :goto_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPostHwrRecognize:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrBackgound()V

    goto :goto_0

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeSentence()I

    move-result v0

    goto :goto_1
.end method

.method public onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 24
    .parameter "me"
    .parameter "possiblePoly"

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    const/4 v4, 0x1

    .line 519
    :goto_0
    return v4

    .line 259
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getPaddingLeft()I

    move-result v5

    sub-int v6, v4, v5

    .line 260
    .local v6, touchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mVerticalCorrection:I

    move v5, v0

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getPaddingTop()I

    move-result v5

    sub-int v7, v4, v5

    .line 261
    .local v7, touchY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 262
    .local v10, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 264
    .local v8, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboardOnScreen:Z

    move v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mUmlautMiniKeyboardOnScreen:Z

    move v4, v0

    if-eqz v4, :cond_6

    .line 265
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v17

    .line 266
    .local v17, event:Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPopupX:I

    move v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v14, v4, v5

    .line 267
    .local v14, dispatchX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPopupY:I

    move v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v15, v4, v5

    .line 268
    .local v15, dispatchY:F
    const/4 v4, 0x0

    cmpg-float v4, v14, v4

    if-gtz v4, :cond_2

    const/high16 v4, 0x3f80

    :goto_1
    const/4 v5, 0x0

    cmpg-float v5, v15, v5

    if-gtz v5, :cond_4

    const/high16 v5, 0x3f80

    .end local v6           #touchX:I
    :goto_2
    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsSendFirstEvent:Z

    move v4, v0

    if-nez v4, :cond_1

    .line 271
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsSendFirstEvent:Z

    .line 272
    invoke-static/range {v17 .. v17}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v16

    .line 273
    .local v16, downEvent:Landroid/view/MotionEvent;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    .end local v16           #downEvent:Landroid/view/MotionEvent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 268
    .restart local v6       #touchX:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v14, v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_1

    :cond_3
    move v4, v14

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v15, v5

    if-ltz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    goto :goto_2

    :cond_5
    move v5, v15

    goto :goto_2

    .line 281
    .end local v14           #dispatchX:F
    .end local v15           #dispatchY:F
    .end local v17           #event:Landroid/view/MotionEvent;
    :cond_6
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mOldEventTime:J

    .line 284
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyIndices(II[I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentTouchKeyIndex:I

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentTouchKeyIndex:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v4, v0

    invoke-virtual {v4, v6, v7}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v20

    .line 288
    .local v20, keyIndices:[I
    if-eqz v20, :cond_7

    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    if-lez v4, :cond_7

    .line 289
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getTheNearestKeyIndex(II[I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentTouchKeyIndex:I

    .line 292
    .end local v20           #keyIndices:[I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentTouchKeyIndex:I

    move/from16 v19, v0

    .line 295
    .local v19, keyIndex:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 296
    :cond_8
    const/16 v19, -0x1

    .line 299
    :cond_9
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mPossiblePoly:Z

    .line 302
    if-nez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->clear()V

    .line 303
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 306
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 314
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboardOnScreen:Z

    move v4, v0

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExpandCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 315
    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 317
    :cond_e
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    aget-object v4, v4, v19

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v11, v4

    .line 319
    .local v11, code:I
    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 517
    .end local v8           #eventTime:J
    :cond_f
    :goto_4
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastX:I

    .line 518
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastY:I

    .line 519
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 317
    .end local v11           #code:I
    .restart local v8       #eventTime:J
    :cond_10
    const/4 v4, 0x0

    move v11, v4

    goto :goto_3

    .line 321
    .restart local v11       #code:I
    :pswitch_0
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mAbortKey:Z

    .line 322
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartX:I

    .line 323
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartY:I

    .line 324
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastCodeX:I

    .line 325
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastCodeY:I

    .line 326
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKeyTime:J

    .line 327
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    .line 328
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKey:I

    .line 329
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    .line 330
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownKey:I

    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownTime:J

    .line 332
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownTime:J

    move-wide v4, v0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastMoveTime:J

    .line 333
    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->checkMultiTap(JI)V

    .line 335
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    aget-object v4, v4, v19

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xd2

    if-ne v4, v5, :cond_12

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v4

    if-nez v4, :cond_11

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalideHwrBackgound()V

    .line 339
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchDown(II)Z

    .line 340
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 344
    :cond_12
    const/16 v4, 0x20

    if-ne v11, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 345
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    .line 346
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    .line 348
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-object v4, v0

    invoke-interface {v4, v11}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    if-ltz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v5, v0

    aget-object v4, v4, v5

    iget-boolean v4, v4, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v4, :cond_14

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->repeatKey()Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 353
    .local v21, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const-wide/16 v8, 0x190

    move-object v0, v4

    move-object/from16 v1, v21

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 355
    .end local v8           #eventTime:J
    .end local v21           #msg:Landroid/os/Message;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x4

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 357
    .restart local v21       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const-wide/16 v8, 0x320

    move-object v0, v4

    move-object/from16 v1, v21

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    .end local v21           #msg:Landroid/os/Message;
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    goto/16 :goto_4

    .line 363
    .restart local v8       #eventTime:J
    :pswitch_1
    const/4 v12, 0x0

    .line 365
    .local v12, continueLongPress:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v5, v0

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v11, v4

    .line 366
    :goto_5
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    aget-object v4, v4, v19

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xd2

    if-ne v4, v5, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-eq v4, v5, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 369
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_1a

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v22

    .line 371
    .local v22, size:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    .line 372
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchMove(II)Z

    .line 371
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 365
    .end local v18           #i:I
    .end local v22           #size:I
    :cond_18
    const/4 v4, 0x0

    move v11, v4

    goto :goto_5

    .line 374
    .restart local v18       #i:I
    .restart local v22       #size:I
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchMove(II)Z

    .line 376
    .end local v18           #i:I
    .end local v22           #size:I
    :cond_1a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 377
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-eq v4, v5, :cond_1c

    .line 382
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 384
    :cond_1c
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    aget-object v4, v4, v19

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v13, v4

    .line 385
    .local v13, currentKeyCode:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 386
    const/16 v4, 0x20

    if-ne v11, v4, :cond_23

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    .line 388
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    .line 389
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    .line 402
    :cond_1d
    :goto_8
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mAbortKey:Z

    move v4, v0

    if-nez v4, :cond_20

    .line 403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 404
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    .line 405
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownTime:J

    move-wide v4, v0

    sub-long v4, v8, v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    .line 423
    .end local v8           #eventTime:J
    :cond_1e
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_1f

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    .line 427
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 429
    :cond_20
    if-nez v12, :cond_f

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_f

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x4

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    .line 435
    .restart local v21       #msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    const-wide/16 v8, 0x320

    move-object v0, v4

    move-object/from16 v1, v21

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 384
    .end local v13           #currentKeyCode:I
    .end local v21           #msg:Landroid/os/Message;
    .restart local v8       #eventTime:J
    :cond_21
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_7

    .line 390
    .restart local v13       #currentKeyCode:I
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    move v4, v0

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    move-object v4, v0

    if-eqz v4, :cond_1d

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    move v5, v0

    sub-int v5, v6, v5

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->setDiff(I)V

    .line 392
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 394
    :cond_23
    const/16 v4, 0x20

    if-ne v13, v4, :cond_1d

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1d

    .line 396
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    .line 397
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    goto/16 :goto_8

    .line 407
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_25

    .line 408
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastMoveTime:J

    move-wide v12, v0

    .end local v12           #continueLongPress:Z
    sub-long/2addr v8, v12

    add-long/2addr v4, v8

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    .line 409
    .end local v8           #eventTime:J
    const/4 v12, 0x1

    .restart local v12       #continueLongPress:Z
    goto/16 :goto_9

    .line 410
    .restart local v8       #eventTime:J
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1e

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->resetMultiTap()V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4, v11}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onChange(I)V

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKey:I

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastX:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastCodeX:I

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastY:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastCodeY:I

    .line 418
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    move-wide v4, v0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastMoveTime:J

    move-wide v8, v0

    .end local v8           #eventTime:J
    sub-long/2addr v4, v8

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKeyTime:J

    .line 419
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    .line 420
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    goto/16 :goto_9

    .line 441
    .end local v12           #continueLongPress:Z
    .end local v13           #currentKeyCode:I
    .restart local v8       #eventTime:J
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeAllMsg()V

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v5, v0

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move v11, v4

    .line 444
    :goto_a
    const/4 v4, -0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    aget-object v4, v4, v19

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xd2

    if-ne v4, v5, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-eq v4, v5, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->getInkCounter()I

    move-result v4

    if-lez v4, :cond_29

    .line 448
    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleHwrTouchUp(II)Z

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mDownKey:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrKeyIndex:I

    move v5, v0

    if-ne v4, v5, :cond_29

    .line 450
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 443
    :cond_28
    const/4 v4, 0x0

    move v11, v4

    goto :goto_a

    .line 454
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    move v4, v0

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v23

    .line 456
    .local v23, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2a

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v5, v0

    aget-object v4, v4, v5

    iget v4, v4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v23, v4, 0x3

    .line 459
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    move v4, v0

    sub-int v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v0, v4

    move/from16 v1, v23

    if-le v0, v1, :cond_2b

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    move v4, v0

    sub-int v4, v6, v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleChangeLanguage(I)V

    .line 461
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    .line 462
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeyIndices:[I

    move-object v4, v0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 465
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    .line 466
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    .line 467
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 469
    :cond_2b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mIsInSpaceKey:Z

    .line 470
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSpaceStartX:I

    .line 473
    .end local v23           #width:I
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-ne v0, v1, :cond_30

    .line 474
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastMoveTime:J

    move-wide v12, v0

    sub-long v12, v8, v12

    add-long/2addr v4, v12

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    .line 482
    :goto_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKeyTime:J

    move-wide v12, v0

    cmp-long v4, v4, v12

    if-gez v4, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKey:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKey:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    .line 484
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastCodeX:I

    move v6, v0

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastCodeY:I

    move v7, v0

    .line 488
    :cond_2d
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeyIndices:[I

    move-object v4, v0

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mMiniKeyboardOnScreen:Z

    move v4, v0

    if-nez v4, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mAbortKey:Z

    move v4, v0

    if-nez v4, :cond_2e

    .line 493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v5, v0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->detectAndSendKey(IIIJ)V

    .line 497
    :cond_2e
    const/4 v4, -0x1

    if-eq v11, v4, :cond_2f

    const/4 v4, -0x5

    if-eq v11, v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v4

    if-nez v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2f

    if-nez p2, :cond_2f

    .line 500
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 502
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShiftPressed(Z)V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 508
    :cond_2f
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mRepeatKeyIndex:I

    goto/16 :goto_4

    .line 476
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->resetMultiTap()V

    .line 477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKey:I

    .line 478
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    move-wide v4, v0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastMoveTime:J

    move-wide v12, v0

    sub-long/2addr v4, v12

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mLastKeyTime:J

    .line 479
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    .line 480
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKeyTime:J

    goto/16 :goto_b

    .line 511
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeAllMsg()V

    .line 512
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mAbortKey:Z

    .line 513
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showPreview(I)V

    .line 514
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mCurrentKey:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    goto/16 :goto_4

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPostHwrTimeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 908
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mTimerFlag:Z

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 910
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 911
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 913
    :cond_0
    return-void
.end method

.method public setHwrInputMode(I)V
    .locals 2
    .parameter "inputMode"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v0, p1, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setHwrInputMode(IS)V

    .line 937
    return-void
.end method

.method public setHwrPenColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 989
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenColor:I

    .line 990
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 994
    return-void
.end method

.method public setHwrPenThickness(I)V
    .locals 2
    .parameter "thickness"

    .prologue
    .line 981
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPenThickness:I

    .line 982
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 986
    return-void
.end method

.method public setHwrRecognitionTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 974
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mHwrRecognizeTime:I

    .line 978
    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    .line 151
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 159
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->postInitHwrService()V

    .line 162
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method
