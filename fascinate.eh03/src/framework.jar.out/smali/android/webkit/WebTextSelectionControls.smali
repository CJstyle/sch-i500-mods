.class public Landroid/webkit/WebTextSelectionControls;
.super Ljava/lang/Object;
.source "WebTextSelectionControls.java"


# static fields
.field private static CharControllerHeight:I = 0x0

.field private static CharControllerWidth:I = 0x0

.field static final LOGTAG:Ljava/lang/String; = "WebSelectionControls"

.field private static MIN_SCALE_LEVEL:F

.field private static ParaControllerHeight:I

.field private static ParaControllerWidth:I

.field private static mControllerHeight:I

.field private static mControllerWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEndRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSelectedtext:Ljava/lang/String;

.field private mStartRect:Landroid/graphics/Rect;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 59
    sput v1, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 60
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 61
    sput v1, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 63
    const/high16 v0, 0x3f80

    sput v0, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    .line 65
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 66
    sput v1, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 74
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "webview"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 88
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 89
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Landroid/webkit/WebTextSelectionControls;->Init(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"
    .parameter "webview"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    .line 120
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 122
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 123
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 124
    iput-object p5, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    .line 125
    return-void
.end method

.method private DrawSelectionCharController(Landroid/graphics/Canvas;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .parameter "canvas"
    .parameter "controllerWidth"
    .parameter "controllerHeight"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 459
    iget v4, p4, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v2, v4, v5

    .line 460
    .local v2, x:I
    iget v4, p4, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, p3

    .line 465
    .local v3, y:I
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080291

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 466
    .local v1, SController:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080293

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 469
    .local v0, EController:Landroid/graphics/drawable/Drawable;
    add-int v4, v2, p2

    add-int v5, v3, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 470
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 472
    const-string v4, "WebSelectionControls"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebView Scale Value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScale()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget v4, p5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v5, p2, 0x2

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v2, v4, v5

    .line 476
    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    .line 478
    add-int v4, v2, p2

    add-int v5, v3, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 481
    return-void
.end method

.method private DrawSelectionParaController(Landroid/graphics/Canvas;IIII)V
    .locals 5
    .parameter "canvas"
    .parameter "controllerWidth"
    .parameter "controllerHeight"
    .parameter "X"
    .parameter "Y"

    .prologue
    .line 491
    iget-object v3, p0, Landroid/webkit/WebTextSelectionControls;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    .local v0, PController:Landroid/graphics/drawable/Drawable;
    div-int/lit8 v3, p2, 0x2

    sub-int v1, p4, v3

    .line 496
    .local v1, x:I
    div-int/lit8 v3, p3, 0x2

    sub-int v2, p5, v3

    .line 498
    .local v2, y:I
    add-int v3, v1, p2

    add-int v4, v2, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 499
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 501
    return-void
.end method

.method private Init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080291

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 98
    .local v1, SController:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080292

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, PController:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    .line 105
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    .line 107
    :cond_0
    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sput v2, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    .line 112
    :cond_1
    return-void
.end method


# virtual methods
.method public DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V
    .locals 35
    .parameter "canvas"
    .parameter "copyRegion"
    .parameter "startRect"
    .parameter "endRect"
    .parameter "pressed"
    .parameter "selectionGranularity"
    .parameter "controler"
    .parameter "showController"

    .prologue
    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v33

    .line 278
    .local v33, scalecont:I
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 279
    .local v22, paintSelected:Landroid/graphics/Paint;
    const/4 v6, 0x1

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    const/16 v6, 0x80

    const/16 v7, 0x96

    const/16 v8, 0xcb

    const/16 v9, 0xfb

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 281
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScale()F

    move-result v31

    .line 284
    .local v31, scale:F
    const/16 v32, 0x0

    .line 287
    .local v32, scaleLevel:I
    const/4 v6, 0x4

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_2

    .line 288
    sget v6, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v6, v31, v6

    if-lez v6, :cond_1

    .line 289
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v6, v6

    div-float v6, v6, v31

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 290
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v6, v6

    div-float v6, v6, v31

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    .line 306
    :goto_0
    const/4 v6, 0x4

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_5

    .line 307
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 308
    .local v5, SelectionPath:Landroid/graphics/Path;
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 309
    .local v19, Paragraphrect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v34

    .line 310
    .local v34, temp:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 311
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 312
    .local v20, centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 315
    .local v11, centerY:I
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 317
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 319
    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 322
    if-nez p5, :cond_4

    .line 323
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v10, v20

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIII)V

    .line 325
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v10, v0

    .line 326
    .end local v20           #centerX:I
    .local v10, centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 327
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIII)V

    .line 329
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v10, v6, 0x2

    .line 330
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v11, v0

    .line 331
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIII)V

    .line 334
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v10, v6, 0x2

    .line 335
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 336
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIII)V

    .line 447
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v19           #Paragraphrect:Landroid/graphics/Rect;
    .end local v34           #temp:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 448
    return-void

    .line 292
    :cond_1
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerWidth:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v31

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 293
    sget v6, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->ParaControllerHeight:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v31

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 297
    :cond_2
    sget v6, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    cmpl-float v6, v31, v6

    if-lez v6, :cond_3

    .line 298
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v6, v6

    div-float v6, v6, v31

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 299
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v6, v6

    div-float v6, v6, v31

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 301
    :cond_3
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerWidth:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v31

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    .line 302
    sget v6, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    sget v7, Landroid/webkit/WebTextSelectionControls;->CharControllerHeight:I

    int-to-float v7, v7

    sget v8, Landroid/webkit/WebTextSelectionControls;->MIN_SCALE_LEVEL:F

    sub-float v8, v8, v31

    mul-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    sput v6, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    goto/16 :goto_0

    .line 340
    .restart local v5       #SelectionPath:Landroid/graphics/Path;
    .restart local v11       #centerY:I
    .restart local v19       #Paragraphrect:Landroid/graphics/Rect;
    .restart local v20       #centerX:I
    .restart local v34       #temp:Landroid/graphics/Rect;
    :cond_4
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 341
    .local v12, path:Landroid/graphics/Path;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v21, paint:Landroid/graphics/Paint;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v13, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    add-int/lit8 v6, v6, 0x2

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 345
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 346
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v13, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    add-int/lit8 v6, v6, 0x2

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 349
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 350
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    int-to-float v13, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 353
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 354
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    int-to-float v13, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    int-to-float v14, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v15, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 357
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 358
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    const v6, -0xffff01

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    move-object/from16 v0, p1

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 363
    packed-switch p7, :pswitch_data_0

    .line 385
    const-string v6, ""

    const-string v7, "Selection controler not set!!! "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v20

    .line 389
    .end local v20           #centerX:I
    .restart local v10       #centerX:I
    :goto_2
    sget v8, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v9, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v11}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionParaController(Landroid/graphics/Canvas;IIII)V

    goto/16 :goto_1

    .line 365
    .end local v10           #centerX:I
    .restart local v20       #centerX:I
    :pswitch_0
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v10, v0

    .line 366
    .end local v20           #centerX:I
    .restart local v10       #centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 367
    goto :goto_2

    .line 370
    .end local v10           #centerX:I
    .restart local v20       #centerX:I
    :pswitch_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v10, v0

    .line 371
    .end local v20           #centerX:I
    .restart local v10       #centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v11, v6, 0x2

    .line 372
    goto :goto_2

    .line 375
    .end local v10           #centerX:I
    .restart local v20       #centerX:I
    :pswitch_2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v10, v6, 0x2

    .line 376
    .end local v20           #centerX:I
    .restart local v10       #centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v11, v0

    .line 377
    goto :goto_2

    .line 380
    .end local v10           #centerX:I
    .restart local v20       #centerX:I
    :pswitch_3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    add-int/2addr v6, v7

    div-int/lit8 v10, v6, 0x2

    .line 381
    .end local v20           #centerX:I
    .restart local v10       #centerX:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .line 382
    goto :goto_2

    .line 396
    .end local v5           #SelectionPath:Landroid/graphics/Path;
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v12           #path:Landroid/graphics/Path;
    .end local v19           #Paragraphrect:Landroid/graphics/Rect;
    .end local v21           #paint:Landroid/graphics/Paint;
    .end local v34           #temp:Landroid/graphics/Rect;
    :cond_5
    new-instance v30, Landroid/graphics/Rect;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/Rect;-><init>()V

    .line 397
    .local v30, rtStart:Landroid/graphics/Rect;
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 398
    .local v28, rtMiddle:Landroid/graphics/Rect;
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 400
    .local v27, rtEnd:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v29

    .line 403
    .local v29, rtSelected:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v30

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 405
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v9, v0

    move-object/from16 v0, v28

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 407
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v27

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    new-instance v26, Landroid/graphics/Region;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Region;-><init>()V

    .line 412
    .local v26, regionSelection:Landroid/graphics/Region;
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 413
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 414
    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 416
    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    .line 417
    .local v23, pathSelection:Landroid/graphics/Path;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->getBoundaryPath(Landroid/graphics/Path;)Z

    .line 419
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 422
    const/4 v6, 0x1

    move v0, v6

    move/from16 v1, p8

    if-ne v0, v1, :cond_0

    .line 423
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 424
    .restart local v21       #paint:Landroid/graphics/Paint;
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 425
    .local v24, rect1:Landroid/graphics/Rect;
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 427
    .local v25, rect2:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 429
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    move-object/from16 v0, v25

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 431
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 432
    const v6, -0xffff01

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    if-nez p5, :cond_6

    .line 435
    const/16 v6, 0xff

    const/16 v7, 0x58

    const/16 v8, 0xa5

    const/16 v9, 0xdc

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 438
    :cond_6
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 440
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 442
    sget v15, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    sget v16, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v18}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionCharController(Landroid/graphics/Canvas;IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "text"
    .parameter "value"
    .parameter "Start"
    .parameter "End"

    .prologue
    .line 261
    iput-object p1, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    .line 263
    iput-object p3, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    .line 264
    iput-object p4, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    .line 265
    return-void
.end method

.method public copy()Z
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " html copy() "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    const-string v1, "Copy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v0, "WebSelectionControls"

    const-string v1, "Selected text String is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControllerHeight()I
    .locals 1

    .prologue
    .line 201
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerHeight:I

    return v0
.end method

.method public getControllerWidth()I
    .locals 1

    .prologue
    .line 192
    sget v0, Landroid/webkit/WebTextSelectionControls;->mControllerWidth:I

    return v0
.end method

.method public getSelectionRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionRegionStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSelectionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/webkit/WebTextSelectionControls;->mSelectedtext:Ljava/lang/String;

    return-object v0
.end method

.method public saveImage(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 17
    .parameter "filepath"
    .parameter "rt"

    .prologue
    .line 206
    const/4 v5, 0x0

    .local v5, bitmapwidth:I
    const/4 v4, 0x0

    .line 207
    .local v4, bitmapheight:I
    const/4 v6, 0x0

    .local v6, bitmapx:F
    const/4 v7, 0x0

    .line 210
    .local v7, bitmapy:F
    move-object/from16 v13, p2

    .line 212
    .local v13, rtSelection:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->right:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v4

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v6

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    iget v15, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v7

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextSelectionControls;->mWebView:Landroid/webkit/WebView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v12

    .line 225
    .local v12, picture:Landroid/graphics/Picture;
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 226
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 228
    .local v3, bitmapCanvas:Landroid/graphics/Canvas;
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.left :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v14, "WebSelectionControls"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "rtSelection.top : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v13

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    neg-float v14, v6

    neg-float v15, v7

    invoke-virtual {v3, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    invoke-virtual {v12, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 234
    new-instance v9, Ljava/io/File;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v9, mFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 237
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 240
    :cond_0
    const/4 v10, 0x0

    .line 243
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/FileOutputStream;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v11, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v2, v14, v15, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v10, v11

    .line 249
    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v10, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :cond_1
    :goto_1
    return-void

    .line 251
    :catch_0
    move-exception v8

    .line 252
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v14

    goto :goto_0

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v11       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method
