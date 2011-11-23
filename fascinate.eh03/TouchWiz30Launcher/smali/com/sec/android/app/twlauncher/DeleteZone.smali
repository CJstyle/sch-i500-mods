.class public Lcom/sec/android/app/twlauncher/DeleteZone;
.super Landroid/widget/LinearLayout;
.source "DeleteZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;,
        Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# instance fields
.field private final mApplyIconHoverColorFilter:Z

.field private mDragEnter:Z

.field private mDragEnterForced:Z

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private final mDrawDeleteZoneBg:Z

.field private mHandle:Landroid/view/View;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mIconHoverColorFilter:Landroid/graphics/ColorFilter;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private final mInOutAnimationDuration:I

.field private final mInOutAnimationTranslationRatio:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private final mLocation:[I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/RectF;

.field private mRemoveBg:Landroid/graphics/drawable/Drawable;

.field private mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

.field private mRemoveIcon:Landroid/widget/TextView;

.field private mRemoveView:Landroid/widget/FrameLayout;

.field private mTrashMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 59
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x6001

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    .line 75
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    .line 77
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    .line 78
    const/4 v1, 0x4

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    .line 79
    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->init()V

    .line 83
    return-void
.end method

.method private createAnimations()V
    .locals 15

    .prologue
    const/high16 v14, 0x3f80

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 246
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 247
    .local v13, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 248
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_4

    .line 250
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :goto_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 259
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 261
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 262
    new-instance v13, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v13}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    .line 263
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v14}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    .line 265
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 273
    :goto_1
    iput-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    iget v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_2

    .line 278
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 279
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 280
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 281
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v14, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 282
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_6

    .line 283
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 291
    :goto_2
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v3, v0

    invoke-virtual {v13, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 293
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 294
    new-instance v13, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;

    invoke-direct {v13}, Lcom/sec/android/app/twlauncher/DeleteZone$FastAnimationSet;-><init>()V

    .line 295
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v14, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getOrientation()I

    move-result v0

    if-nez v0, :cond_7

    .line 297
    new-instance v0, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 305
    :goto_3
    iput-object v13, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 308
    .end local v13           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_3
    return-void

    .line 254
    .restart local v13       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v7, v5

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 269
    :cond_5
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v7, v5

    move v8, v2

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 287
    :cond_6
    new-instance v4, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v6, v2

    move v7, v5

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 301
    :cond_7
    new-instance v4, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInOutAnimationTranslationRatio:F

    move v6, v2

    move v7, v5

    move v9, v1

    move v10, v2

    move v11, v1

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/sec/android/app/twlauncher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method private init()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 88
    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    .line 89
    return-void
.end method

.method private setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V
    .locals 5
    .parameter "iconView"
    .parameter "cf"

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, ds:[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 181
    return-void
.end method

.method private setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 365
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 367
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    if-eqz v1, :cond_1

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v1, :cond_2

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 120
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 121
    return-void

    .line 113
    .restart local v0       #background:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getDeleteAreaRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outDelAreaRect"

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    if-eqz v0, :cond_0

    .line 229
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 233
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 188
    .local v0, icon:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 192
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x0

    .line 200
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setTrashPaint(I)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 203
    .local v0, icon:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_0

    .line 204
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 207
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 196
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 10
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 210
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v1, v0

    .line 211
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-eqz v1, :cond_0

    .line 212
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 213
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    .line 214
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->createAnimations()V

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    .line 216
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v8

    int-to-float v5, v5

    aget v6, v2, v9

    iget v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 220
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 222
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .end local v2           #location:[I
    :cond_0
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 133
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v3, v0

    .line 135
    .local v3, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v8, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 174
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-wide v8, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 138
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v8, :cond_3

    .line 139
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 158
    :cond_1
    :goto_1
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_8

    .line 159
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v7, v0

    .line 160
    .local v7, userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 161
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8, v7}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 173
    .end local v7           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0

    .line 140
    :cond_3
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v8, :cond_4

    .line 141
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_1

    .line 142
    :cond_4
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v8, :cond_5

    .line 143
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 144
    :cond_5
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v8, :cond_6

    .line 145
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v4, v0

    invoke-virtual {v8, v4}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_1

    .line 147
    :cond_6
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "What\'s that????? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 150
    :cond_7
    instance-of v8, p1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v8, :cond_1

    .line 151
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v6, v0

    .line 152
    .local v6, userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 155
    .restart local v7       #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v7, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 162
    .end local v6           #userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v7           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_8
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v8, :cond_9

    .line 163
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v4, v0

    .line 164
    .local v4, launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v1

    .line 165
    .local v1, appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    if-eqz v1, :cond_2

    .line 166
    iget v8, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_2

    .line 168
    .end local v1           #appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .end local v4           #launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_9
    instance-of v8, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v8, :cond_2

    .line 169
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v2, v0

    .line 170
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    .line 171
    .local v5, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v8, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 101
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 103
    return-void
.end method

.method resetMode()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 362
    return-void
.end method

.method setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 0
    .parameter "dragLayer"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 316
    return-void
.end method

.method setDragEnterForced(Z)V
    .locals 2
    .parameter "dragOver"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    .line 93
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 96
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHandle(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mHandle:Landroid/view/View;

    .line 320
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 312
    return-void
.end method
