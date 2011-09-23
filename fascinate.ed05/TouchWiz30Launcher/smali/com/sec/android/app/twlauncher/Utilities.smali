.class final Lcom/sec/android/app/twlauncher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Utilities$BubbleText;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final TEXT_BURN:Z

.field static final sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;

.field static final sRandom3rdIconBg:[I

.field static final sRandomIconBg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 54
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 55
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 56
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureWidth:I

    .line 57
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureHeight:I

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 69
    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sColors:[I

    .line 95
    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sColorIndex:I

    .line 559
    invoke-static {}, Lcom/sec/android/app/twlauncher/BgMapFactory;->getBgMap()[Lcom/sec/android/app/twlauncher/BgMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    .line 561
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f020029

    aput v1, v0, v4

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    .line 565
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    return-void

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data

    .line 565
    :array_1
    .array-data 0x4
        0x24t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    return-void
.end method

.method static centerToFit(Landroid/graphics/Bitmap;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"
    .parameter "context"

    .prologue
    const/high16 v8, 0x4000

    .line 74
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 75
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 77
    .local v0, bitmapHeight:I
    if-lt v1, p1, :cond_0

    if-ge v0, p2, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 80
    .local v4, color:I
    if-ge v1, p1, :cond_2

    move v5, p1

    :goto_0
    if-ge v0, p2, :cond_3

    move v6, p2

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 82
    .local v3, centered:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 83
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    sub-int v5, p1, v1

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-int v6, p2, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    move-object p0, v3

    .line 91
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #centered:Landroid/graphics/Bitmap;
    .end local v4           #color:I
    :cond_1
    return-object p0

    .restart local v4       #color:I
    :cond_2
    move v5, v1

    .line 80
    goto :goto_0

    :cond_3
    move v6, v0

    goto :goto_1
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 490
    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 491
    :try_start_0
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 492
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 493
    .local v7, resources:Landroid/content/res/Resources;
    const/high16 v11, 0x105

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    sput v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 497
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_0
    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 498
    .local v9, width:I
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 500
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 501
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 503
    .local v0, bitmapHeight:I
    if-lez v9, :cond_7

    if-lez v4, :cond_7

    .line 504
    if-lt v9, v1, :cond_1

    if-ge v4, v0, :cond_5

    .line 505
    :cond_1
    int-to-float v11, v1

    int-to-float v12, v0

    div-float v6, v11, v12

    .line 507
    .local v6, ratio:F
    if-le v1, v0, :cond_3

    .line 508
    int-to-float v11, v9

    div-float/2addr v11, v6

    float-to-int v4, v11

    .line 513
    :cond_2
    :goto_0
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    if-ne v9, v11, :cond_4

    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    if-ne v4, v11, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    move-object v2, v11

    .line 515
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 516
    .local v8, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 517
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 518
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 519
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 520
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 521
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v12, v12, 0x2

    sget v13, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v11, v12, v13, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 522
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 523
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v12, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 524
    monitor-exit v10

    move-object v10, v8

    .line 540
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :goto_2
    return-object v10

    .line 509
    .restart local v6       #ratio:F
    :cond_3
    if-le v0, v1, :cond_2

    .line 510
    int-to-float v11, v4

    mul-float/2addr v11, v6

    float-to-int v9, v11

    goto :goto_0

    .line 513
    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, v11

    goto :goto_1

    .line 525
    .end local v6           #ratio:F
    :cond_5
    if-lt v1, v9, :cond_6

    if-ge v0, v4, :cond_7

    .line 526
    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 527
    .restart local v2       #c:Landroid/graphics/Bitmap$Config;
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 528
    .restart local v8       #thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 529
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 530
    .restart local v5       #paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 531
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 532
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 533
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v11, v1

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v3, p0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 535
    monitor-exit v10

    move-object v10, v8

    goto :goto_2

    .line 538
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :cond_7
    monitor-exit v10

    move-object v10, p0

    .line 540
    goto :goto_2

    .line 538
    .end local v0           #bitmapHeight:I
    .end local v1           #bitmapWidth:I
    .end local v4           #height:I
    .end local v9           #width:I
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 103
    sget-object v6, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v6

    .line 104
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 105
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 108
    :cond_0
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 109
    .local v4, width:I
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 111
    .local v3, height:I
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 113
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 114
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 123
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 124
    .local v2, sourceWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 126
    .local v1, sourceHeight:I
    if-lez v2, :cond_6

    if-lez v2, :cond_6

    .line 128
    if-lt v4, v2, :cond_2

    if-ge v3, v1, :cond_5

    .line 130
    :cond_2
    int-to-float p1, v2

    int-to-float v5, v1

    div-float/2addr p1, v5

    .line 131
    .local p1, ratio:F
    if-le v2, v1, :cond_4

    .line 132
    int-to-float v1, v4

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    :goto_1
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    move v5, v1

    .line 144
    .end local v1           #width:I
    .local v5, width:I
    :goto_2
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureWidth:I

    .line 145
    .local v3, textureWidth:I
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureHeight:I

    .line 147
    .local v4, textureHeight:I
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 149
    .local p1, bitmap:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 150
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    .line 153
    .local v3, left:I
    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 164
    .local v4, top:I
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 165
    add-int/2addr v5, v3

    add-int/2addr v2, v4

    invoke-virtual {p0, v3, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    .end local v2           #height:I
    .end local v5           #width:I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    monitor-exit v6

    return-object p1

    .line 115
    .local v3, height:I
    .local v4, width:I
    .local p1, context:Landroid/content/Context;
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 117
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 118
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 170
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #width:I
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 133
    .local v1, sourceHeight:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .restart local p0
    .local p1, ratio:F
    :cond_4
    if-le v1, v2, :cond_7

    .line 134
    int-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v4           #width:I
    .local p1, width:I
    move v1, p1

    .end local p1           #width:I
    .local v1, width:I
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_1

    .line 136
    .end local p1           #height:I
    .local v1, sourceHeight:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_5
    if-ge v2, v4, :cond_6

    if-ge v1, v3, :cond_6

    .line 138
    move v2, v2

    .line 139
    .end local v4           #width:I
    .local v2, width:I
    move p1, v1

    .end local v3           #height:I
    .restart local p1       #height:I
    move v5, v2

    .end local v2           #width:I
    .restart local v5       #width:I
    move v2, p1

    .end local p1           #height:I
    .local v2, height:I
    goto :goto_2

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    :cond_6
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v5, v4

    .end local v4           #width:I
    .restart local v5       #width:I
    goto :goto_2

    .end local v5           #width:I
    .local v2, sourceWidth:I
    .restart local v3       #height:I
    .restart local v4       #width:I
    .local p1, ratio:F
    :cond_7
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    move v1, v4

    .end local v4           #width:I
    .local v1, width:I
    goto :goto_1
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 405
    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v8

    .line 406
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 408
    .local v1, resources:Landroid/content/res/Resources;
    const/high16 v2, 0x105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .end local v1           #resources:Landroid/content/res/Resources;
    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 411
    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 412
    .local v5, width:I
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 414
    .local v3, height:I
    const/high16 v4, 0x3f80

    .line 415
    .local v4, scale:F
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    .line 416
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object p1, v0

    .line 417
    .local p1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 418
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 427
    .end local p1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 428
    .local v2, iconWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 430
    .local v1, iconHeight:I
    if-lez v5, :cond_7

    if-lez v3, :cond_7

    .line 431
    if-lt v5, v2, :cond_2

    if-lt v3, v1, :cond_2

    const/high16 p1, 0x3f80

    cmpl-float p1, v4, p1

    if-eqz p1, :cond_6

    .line 432
    :cond_2
    int-to-float p1, v2

    int-to-float v4, v1

    div-float/2addr p1, v4

    .line 434
    .local p1, ratio:F
    if-le v2, v1, :cond_4

    .line 435
    .end local v4           #scale:F
    int-to-float v1, v5

    div-float p1, v1, p1

    float-to-int p1, p1

    .end local v3           #height:I
    .local p1, height:I
    move v1, p1

    .end local p1           #height:I
    .local v1, height:I
    move v3, v5

    .line 440
    .end local v5           #width:I
    .local v3, width:I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    .end local v2           #iconWidth:I
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 442
    .local p1, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    sget v2, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v2, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 443
    .local v2, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 444
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 450
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 452
    .local v4, x:I
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    .line 453
    .local v5, y:I
    add-int v6, v4, v3

    add-int v7, v5, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 454
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 456
    new-instance p1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {p1, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local p0
    .local p1, icon:Landroid/graphics/drawable/Drawable;
    move-object p0, p1

    .end local p1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    move p1, v1

    .end local v1           #height:I
    .local p1, height:I
    move v1, v3

    .line 471
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    .end local v3           #width:I
    .end local v4           #x:I
    .end local v5           #y:I
    .local v1, width:I
    :goto_3
    monitor-exit v8

    .line 473
    return-object p0

    .line 419
    .end local v1           #width:I
    .local v3, height:I
    .local v4, scale:F
    .local v5, width:I
    .local p1, context:Landroid/content/Context;
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 421
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 422
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 471
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v4           #scale:F
    .end local v5           #width:I
    :catchall_0
    move-exception p1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 436
    .local v1, iconHeight:I
    .local v2, iconWidth:I
    .restart local v3       #height:I
    .restart local v5       #width:I
    .local p1, ratio:F
    :cond_4
    if-le v1, v2, :cond_8

    .line 437
    int-to-float v1, v3

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .end local v5           #width:I
    .local p1, width:I
    move v1, v3

    .end local v3           #height:I
    .local v1, height:I
    move v3, p1

    .end local p1           #width:I
    .local v3, width:I
    goto :goto_1

    .line 440
    .end local v2           #iconWidth:I
    :cond_5
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 457
    .local v1, iconHeight:I
    .restart local v2       #iconWidth:I
    .local v3, height:I
    .restart local v4       #scale:F
    .restart local v5       #width:I
    :cond_6
    if-ge v2, v5, :cond_7

    if-ge v1, v3, :cond_7

    .line 458
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 459
    .local p1, c:Landroid/graphics/Bitmap$Config;
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .end local v4           #scale:F
    sget v6, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v4, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 460
    .local v4, thumb:Landroid/graphics/Bitmap;
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 461
    .local p1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    sget-object v6, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 463
    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    .line 464
    .local v6, x:I
    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    .line 465
    .local v7, y:I
    add-int/2addr v2, v6

    add-int/2addr v1, v7

    invoke-virtual {p0, v6, v7, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    .end local v1           #iconHeight:I
    .end local v2           #iconWidth:I
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 467
    sget-object p1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local p1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 468
    new-instance p1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {p1, v4}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0
    .local p1, icon:Landroid/graphics/drawable/Drawable;
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    move-object p0, p1

    .end local p1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    goto :goto_3

    .end local v6           #x:I
    .end local v7           #y:I
    .end local p1           #height:I
    .local v1, iconHeight:I
    .restart local v2       #iconWidth:I
    .restart local v3       #height:I
    .local v4, scale:F
    .restart local v5       #width:I
    :cond_7
    move p1, v3

    .end local v3           #height:I
    .restart local p1       #height:I
    move v1, v5

    .end local v5           #width:I
    .local v1, width:I
    goto :goto_3

    .end local v4           #scale:F
    .local v1, iconHeight:I
    .restart local v3       #height:I
    .restart local v5       #width:I
    .local p1, ratio:F
    :cond_8
    move v1, v3

    .end local v3           #height:I
    .local v1, height:I
    move v3, v5

    .end local v5           #width:I
    .local v3, width:I
    goto/16 :goto_1
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 223
    sget-object v2, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v2

    .line 224
    :try_start_0
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 225
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    .local v1, disabled:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 230
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    monitor-exit v2

    return-object v1

    .line 235
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #disabled:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "dest"
    .parameter "destWidth"
    .parameter "destHeight"
    .parameter "pressed"
    .parameter "src"

    .prologue
    .line 175
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    .line 176
    :try_start_0
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 180
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 183
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 185
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 186
    .local v3, xy:[I
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v5, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, mask:Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, p1, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 189
    .local v1, px:F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, p2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 190
    .local v2, py:F
    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    if-eqz p3, :cond_1

    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    monitor-exit v4

    .line 195
    return-void

    .line 190
    :cond_1
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static findResFixedBg(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 602
    const/4 v2, -0x1

    .line 603
    .local v2, res:I
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    array-length v3, v4

    .line 604
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 605
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    aget-object v0, v4, v1

    .line 608
    .local v0, bgmap:Lcom/sec/android/app/twlauncher/BgMap;
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/BgMap;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 609
    if-eqz p1, :cond_0

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/BgMap;->mClassName:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 610
    :cond_0
    iget v2, v0, Lcom/sec/android/app/twlauncher/BgMap;->mResid:I

    .line 618
    .end local v0           #bgmap:Lcom/sec/android/app/twlauncher/BgMap;
    :cond_1
    :goto_1
    return v2

    .line 612
    .restart local v0       #bgmap:Lcom/sec/android/app/twlauncher/BgMap;
    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/BgMap;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 613
    iget v2, v0, Lcom/sec/android/app/twlauncher/BgMap;->mResid:I

    .line 614
    goto :goto_1

    .line 604
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static getDrawableIconBg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "packageName"
    .parameter "className"
    .parameter "context"
    .parameter "isSystemApp"

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 576
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 578
    .local v1, fixedBg:Z
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    .line 580
    :cond_0
    const/4 v5, -0x1

    .line 581
    .local v5, res:I
    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 582
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/Utilities;->findResFixedBg(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 583
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 584
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    array-length v9, v9

    int-to-long v9, v9

    rem-long v3, v7, v9

    .line 585
    .local v3, random:J
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    long-to-int v8, v3

    aget v5, v7, v8

    .line 596
    .end local v3           #random:J
    :cond_1
    :goto_0
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 598
    return-object v0

    .line 588
    :cond_2
    if-nez p0, :cond_3

    .line 589
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    const/4 v8, 0x0

    aget v5, v7, v8

    goto :goto_0

    .line 591
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 592
    .local v2, len:I
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    sget-object v8, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    array-length v8, v8

    rem-int v8, v2, v8

    aget v5, v7, v8

    goto :goto_0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 240
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 241
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v1, density:F
    const/high16 v4, 0x105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 244
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureHeight:I

    sput v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconTextureWidth:I

    .line 246
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a0

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 247
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 249
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 252
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 253
    .local v0, cm:Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 254
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 255
    sget-object v4, Lcom/sec/android/app/twlauncher/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 256
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 209
    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 210
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 211
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/Utilities;->initStatics(Landroid/content/Context;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    if-ne v1, v2, :cond_1

    .line 215
    monitor-exit v0

    move-object v0, p0

    .line 217
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static roundToPow2(I)I
    .locals 3
    .parameter "n"

    .prologue
    .line 373
    move v1, p0

    .line 374
    .local v1, orig:I
    shr-int/lit8 p0, p0, 0x1

    .line 375
    const/high16 v0, 0x800

    .line 376
    .local v0, mask:I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 377
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 380
    or-int/2addr p0, v0

    .line 381
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 383
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 384
    if-eq p0, v1, :cond_2

    .line 385
    shl-int/lit8 p0, p0, 0x1

    .line 387
    :cond_2
    return p0
.end method

.method static zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V
    .locals 6
    .parameter "vg"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "requestLayout"

    .prologue
    .line 654
    if-ne p1, p2, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 660
    .local v0, childCount:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 669
    .local v3, vf:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 670
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    sub-int v4, v0, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_2

    .line 671
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 672
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 680
    .end local v2           #v:Landroid/view/View;
    :cond_2
    if-eqz p3, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method static zOrderTweakSwapChild(Landroid/view/ViewGroup;IIZ)V
    .locals 9
    .parameter "vg"
    .parameter "index1"
    .parameter "index2"
    .parameter "requestLayout"

    .prologue
    const/4 v8, 0x1

    .line 625
    if-ne p1, p2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 630
    .local v2, lower:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 631
    .local v3, upper:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 632
    .local v0, childCount:I
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 633
    .local v5, vl:Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 635
    .local v6, vu:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->bringToFront()V

    .line 636
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    sub-int v7, v3, v2

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_2

    .line 637
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 638
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 640
    .end local v4           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 641
    const/4 v1, 0x0

    :goto_2
    sub-int v7, v0, v3

    sub-int/2addr v7, v8

    if-ge v1, v7, :cond_3

    .line 642
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 643
    .restart local v4       #v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 646
    .end local v4           #v:Landroid/view/View;
    :cond_3
    if-eqz p3, :cond_0

    .line 647
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method
