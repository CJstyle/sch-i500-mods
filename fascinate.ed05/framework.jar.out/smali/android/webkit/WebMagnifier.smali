.class Landroid/webkit/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field static final DEBUG:Z = false

.field static final DEFAULT_ZOOM_SCALE:F = 1.2f

.field static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field static final MAGNIFIER_HEIGHT:I = 0x64

.field static final MAGNIFIER_PADDING:I = 0x5

.field static final MAGNIFIER_WIDTH:I = 0xc8

.field static final ROUND_DIAMETER:F = 10.0f

.field static SHOW_HEIGHT:I = 0x0

.field static SHOW_WIDTH:I = 0x0

.field static final STROKE_WIDTH:I = 0x1

.field static final TAIL_HEIGHT:I = 0x14

.field static final TAIL_WIDTH:I = 0x1e

.field static mRectCurSel:Landroid/graphics/Rect;

.field static mfFlexibleZoomScale:F

.field static mfWebViewZoomScale:F


# instance fields
.field mBgPath:Landroid/graphics/Path;

.field mBoundaryPaint:Landroid/graphics/Paint;

.field final mContext:Landroid/content/Context;

.field mGarbageBgPath:Landroid/graphics/Path;

.field mMagnifierPath:Landroid/graphics/Path;

.field mPathBgFill:Landroid/graphics/Path;

.field mShowX:I

.field mShowY:I

.field mSrcView:Landroid/view/View;

.field mSrcX:I

.field mSrcY:I

.field mViewHeight:I

.field mViewWidth:I

.field mWebView:Landroid/view/View;

.field mWindowManager:Landroid/view/WindowManager;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xc8

    sput v0, Landroid/webkit/WebMagnifier;->SHOW_WIDTH:I

    .line 75
    const/16 v0, 0x78

    sput v0, Landroid/webkit/WebMagnifier;->SHOW_HEIGHT:I

    .line 80
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 81
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 82
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "webView"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 78
    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 84
    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    .line 93
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/webkit/WebMagnifier;->setPadding(IIII)V

    .line 99
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    .line 109
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    .line 110
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 114
    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 202
    const/high16 v5, 0x4348

    sget v6, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 203
    .local v4, zoomarea_width:I
    const/high16 v5, 0x42c8

    sget v6, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 205
    .local v3, zoomarea_height:I
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 206
    .local v2, winloc:[I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 208
    new-instance v1, Landroid/graphics/Rect;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v6, v2, v8

    add-int/2addr v5, v6

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v7, v2, v9

    add-int/2addr v6, v7

    div-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v8, v2, v8

    add-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v9, v2, v9

    add-int/2addr v8, v9

    div-int/lit8 v9, v3, 0x2

    add-int/2addr v8, v9

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    .local v1, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v0, matrix:Landroid/graphics/Matrix;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit16 v9, v9, 0xc8

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v10, v10, 0x64

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, v7}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 219
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 221
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 222
    return-void
.end method

.method private setShowXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    iput p1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 227
    iput p2, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 230
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 231
    .local v0, winloc:[I
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkit/WebMagnifier;->SHOW_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    .line 234
    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkit/WebMagnifier;->SHOW_HEIGHT:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 235
    iget v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    const/16 v2, 0x28

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 237
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    .line 238
    return-void
.end method

.method private updateDrawingPath()V
    .locals 15

    .prologue
    const/16 v14, 0xf

    const/4 v13, 0x5

    const/4 v12, 0x0

    const/high16 v11, 0x4120

    .line 165
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 166
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 170
    const/16 v4, 0xc7

    .line 171
    .local v4, w:I
    const/16 v0, 0x63

    .line 172
    .local v0, h:I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v11, v11, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 175
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v7, v14

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    add-int/lit8 v7, v7, 0x14

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 177
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/lit8 v7, v7, 0xf

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v14

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 180
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xf

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 183
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x5

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit16 v9, v9, 0xc8

    sub-int/2addr v9, v13

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v10, v10, 0x64

    sub-int/2addr v10, v13

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v11, v11, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 189
    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v12, v12, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    .line 191
    .local v2, regionClip:Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 192
    .local v1, regionBgFill:Landroid/graphics/Region;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 193
    .local v3, regionMagnifier:Landroid/graphics/Region;
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 194
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 195
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 198
    return-void
.end method

.method private updateZoomScale()V
    .locals 3

    .prologue
    .line 242
    sget-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 244
    :cond_0
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 257
    :goto_0
    return-void

    .line 249
    :cond_1
    const/high16 v0, 0x42a0

    sget-object v1, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-boolean v0, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v0, :cond_0

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 327
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 328
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 331
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 332
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 334
    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 349
    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->invalidate()V

    .line 350
    return-void
.end method

.method public move(IILandroid/graphics/Rect;F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rtCurSel"
    .parameter "fZoomScale"

    .prologue
    .line 339
    sput-object p3, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 340
    sput p4, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    .line 341
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateZoomScale()V

    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 344
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x100

    .line 121
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 125
    .local v2, saveCount:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 126
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 142
    .local v0, gPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 151
    invoke-direct {p0, p1}, Landroid/webkit/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 155
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 159
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 160
    return-void
.end method

.method public show(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 270
    iget-object v9, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    .line 272
    .local v9, srcView:Landroid/view/View;
    :goto_0
    if-eqz v9, :cond_0

    .line 274
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .end local v9           #srcView:Landroid/view/View;
    check-cast v9, Landroid/view/View;

    .restart local v9       #srcView:Landroid/view/View;
    goto :goto_0

    .line 280
    :cond_0
    if-nez v9, :cond_2

    .line 282
    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "show : Cannot find Decor View."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    :goto_1
    return-void

    .line 285
    :cond_2
    iput-object v9, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    .line 291
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 292
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    .line 293
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 299
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eq v1, v10, :cond_1

    .line 302
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    const/16 v5, 0x3e8

    const/16 v6, 0x208

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 312
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 313
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iput-boolean v10, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_1
.end method

.method public show(IILandroid/graphics/Rect;F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rtCurSel"
    .parameter "fZoomScale"

    .prologue
    .line 261
    sput-object p3, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 262
    sput p4, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    .line 263
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateZoomScale()V

    .line 265
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 266
    return-void
.end method
