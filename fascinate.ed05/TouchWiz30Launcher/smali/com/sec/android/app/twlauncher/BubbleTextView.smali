.class public Lcom/sec/android/app/twlauncher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# static fields
.field private static final CORNER_RADIUS:F = 8.0f

.field private static final PADDING_H:F = 5.0f

.field private static final PADDING_V:F = 1.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeRightOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompoundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCornerRadius:F

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field private mIsPressed:Z

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

.field private final mRect:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 72
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 78
    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 213
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v7, v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-nez v7, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v2, v0

    .line 215
    .local v2, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I

    move-result v7

    iput v7, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 216
    iget v7, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    if-lez v7, :cond_0

    .line 219
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 220
    .local v6, width:I
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 221
    .local v1, height:I
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeRightOffset:I

    sub-int/2addr v7, v8

    sub-int v3, v7, v6

    .line 222
    .local v3, left:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    .line 224
    .local v5, top:I
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v7, :cond_2

    .line 225
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 226
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 232
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    add-int v8, v3, v6

    add-int v9, v5, v1

    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 233
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 235
    iget v7, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    const/16 v8, 0x64

    if-lt v7, v8, :cond_3

    .line 236
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 241
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v5

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 228
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 229
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 238
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I
    .locals 2
    .parameter "info"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 248
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 81
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setFocusable(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    const v3, 0x7f070002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .local v1, scale:F
    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    .line 93
    const/high16 v2, 0x40a0

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    .line 95
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    .line 97
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7f00

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 99
    const v2, 0x7f02002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    .line 101
    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    .line 102
    const v2, 0x7f08002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeRightOffset:I

    .line 104
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 177
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 178
    iget v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    .line 179
    .local v4, scrollX:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    .line 181
    .local v5, scrollY:I
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_0

    .line 182
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBottom:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 183
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 186
    :cond_0
    or-int v7, v4, v5

    if-nez v7, :cond_2

    .line 187
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 196
    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 197
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 198
    .local v2, left:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v6

    .line 200
    .local v6, top:I
    int-to-float v7, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v7, v8

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    add-float/2addr v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 204
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 206
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawBadge(Landroid/graphics/Canvas;)V

    .line 209
    return-void

    .line 189
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #left:I
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v6           #top:I
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_2
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getDrawableState()[I

    move-result-object v7

    .line 128
    .local v7, state:[I
    const/4 v6, 0x0

    .line 129
    .local v6, pressed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 130
    aget v8, v7, v3

    const v9, 0x10100a7

    if-ne v8, v9, :cond_4

    .line 131
    const/4 v6, 0x1

    .line 136
    :cond_0
    if-nez v6, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 137
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 140
    :cond_1
    if-eqz v6, :cond_5

    .line 141
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 143
    .local v4, icon:[Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    aget-object v8, v4, v11

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-nez v8, :cond_2

    .line 144
    aget-object v8, v4, v11

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    aget-object v8, v4, v11

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 146
    .local v5, oldRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 148
    .local v1, c:Landroid/graphics/Canvas;
    aget-object v8, v4, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v8, v13, v13, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    aget-object v8, v4, v11

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    aget-object v8, v4, v11

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 151
    new-instance v8, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {v8, v0}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    .line 152
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 153
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 156
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v5           #oldRect:Landroid/graphics/Rect;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-eqz v8, :cond_3

    .line 157
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {p0, v12, v8, v12, v12}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    .line 171
    .end local v4           #icon:[Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 172
    return-void

    .line 129
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 161
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    .line 162
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v12, v8, v12, v12}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v8, :cond_3

    .line 166
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 113
    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 116
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
