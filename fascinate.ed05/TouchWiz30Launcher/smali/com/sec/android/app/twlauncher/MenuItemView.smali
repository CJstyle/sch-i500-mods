.class public Lcom/sec/android/app/twlauncher/MenuItemView;
.super Landroid/widget/LinearLayout;
.source "MenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;
    }
.end annotation


# instance fields
.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeRightOffset:I

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mFocusMargin:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field private mIsFocused:Z

.field private mIsPressed:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->init()V

    .line 51
    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 11
    .parameter "canvas"
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, badgeCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 134
    instance-of v6, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v6, :cond_2

    .line 135
    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v3           #tag:Ljava/lang/Object;
    iget v0, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 141
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 142
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 143
    .local v5, width:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 145
    .local v1, height:I
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeRightOffset:I

    add-int/2addr v6, v7

    sub-int v2, v6, v5

    .line 146
    .local v2, left:I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    add-int v4, v6, v7

    .line 148
    .local v4, top:I
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v6, :cond_3

    .line 149
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 155
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    add-int v7, v2, v5

    add-int v8, v4, v1

    invoke-virtual {v6, v2, v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    const/16 v6, 0x64

    if-lt v0, v6, :cond_4

    .line 159
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 164
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v4

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f80

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    .end local v1           #height:I
    .end local v2           #left:I
    .end local v4           #top:I
    .end local v5           #width:I
    :cond_1
    return-void

    .line 136
    .restart local v3       #tag:Ljava/lang/Object;
    :cond_2
    instance-of v6, v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v6, :cond_0

    .line 137
    check-cast v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v3           #tag:Ljava/lang/Object;
    iget v0, v3, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    goto/16 :goto_0

    .line 152
    .restart local v1       #height:I
    .restart local v2       #left:I
    .restart local v4       #top:I
    .restart local v5       #width:I
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 153
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 161
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTopOffset:I

    .line 57
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 59
    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 63
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    .line 64
    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeRightOffset:I

    .line 66
    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    .line 67
    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 215
    .local v0, p:Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;

    if-eqz v1, :cond_0

    .line 216
    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/twlauncher/MenuItemView$UninstallableMarkerDrawParent;->drawChildUninstallableMarker(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 218
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 170
    instance-of v7, p2, Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    .line 171
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v7, :cond_4

    .line 172
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 173
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :cond_0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 179
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 181
    .local v6, ret:Z
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 182
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 183
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v7, v6

    .line 205
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v6           #ret:Z
    :goto_0
    return v7

    .line 186
    :cond_4
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v7, :cond_5

    .line 187
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 188
    .local v4, offset:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 189
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 193
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 194
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 196
    .restart local v6       #ret:Z
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v7, v6

    .line 198
    goto :goto_0

    .line 200
    .end local v4           #offset:I
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #ret:Z
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 201
    .restart local v6       #ret:Z
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawBadge(Landroid/graphics/Canvas;Landroid/view/View;)V

    move v7, v6

    .line 202
    goto :goto_0

    .line 205
    .end local v6           #ret:Z
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getDrawableState()[I

    move-result-object v4

    .line 103
    .local v4, state:[I
    const v5, 0x7f06000a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 109
    :cond_0
    array-length v0, v4

    .line 110
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 111
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_2

    .line 112
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 129
    :cond_1
    :goto_1
    return-void

    .line 115
    :cond_2
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_3

    .line 116
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 117
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    goto :goto_1

    .line 110
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v5, :cond_1

    .line 124
    :cond_5
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 125
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 222
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 223
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getChildCount()I

    move-result v0

    .line 224
    .local v0, count:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTopOffset:I

    .line 225
    .local v2, offset:I
    if-lez v2, :cond_0

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 227
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 228
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v1           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 93
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 87
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 88
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 89
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 76
    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 81
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method
