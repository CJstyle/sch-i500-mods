.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AxT9KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private mAscent:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLangWidth:I

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private mDiffLimit:I

.field private mHeight:I

.field private mHitThreshold:Z

.field private mMiddleX:I

.field private mNextLangWidth:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLangWidth:I

.field private mPrevLanguage:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThreshold:I

.field private mWidth:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/drawable/Drawable;II)V
    .locals 10
    .parameter
    .parameter "background"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    .line 8080
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 8070
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 8081
    iput-object p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 8082
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 8083
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8086
    :cond_0
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    .line 8087
    iput p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    .line 8088
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 8089
    const v4, 0x1030044

    const/16 v5, 0x12

    invoke-static {p1, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;II)I

    move-result v3

    .line 8090
    .local v3, textSize:I
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 8091
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 8092
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8093
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 8094
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v9}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 8095
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    .line 8096
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 8097
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mMiddleX:I

    .line 8102
    :goto_0
    iget-object v4, p1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mThreshold:I

    .line 8103
    iget-object v4, p1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x42a0

    move v1, v4

    .line 8104
    .local v1, diffdpi:F
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    .line 8106
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 8107
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 8108
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 8109
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 8112
    :cond_1
    const/16 v4, 0x14

    new-array v0, v4, [F

    .line 8113
    .local v0, buffer:[F
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 8114
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    .line 8115
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 8116
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    int-to-float v4, v4

    aget v5, v0, v2

    add-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    .line 8115
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 8099
    .end local v0           #buffer:[F
    .end local v1           #diffdpi:F
    .end local v2           #i:I
    :cond_2
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mMiddleX:I

    goto :goto_0

    .line 8103
    :cond_3
    const v4, 0x41d55604

    move v1, v4

    goto :goto_1

    .line 8118
    .restart local v0       #buffer:[F
    .restart local v1       #diffdpi:F
    .restart local v2       #i:I
    :cond_4
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 8119
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    .line 8120
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 8121
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    int-to-float v4, v4

    aget v5, v0, v2

    add-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    .line 8120
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8123
    :cond_5
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 8124
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    .line 8125
    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 8126
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    int-to-float v4, v4

    aget v5, v0, v2

    add-float/2addr v4, v5

    add-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    .line 8125
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 8128
    :cond_6
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 8149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8150
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v0, :cond_0

    .line 8151
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 8152
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 8153
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8155
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 8156
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8161
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8165
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8170
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mAscent:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8188
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 8190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 8191
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 8192
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8194
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 8195
    return-void

    .line 8158
    :cond_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    int-to-float v0, v0

    const v1, 0x3e666666

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f466666

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v5, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto/16 :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 8219
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 8214
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 8199
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 8205
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 8210
    return-void
.end method

.method setDiff(I)V
    .locals 4
    .parameter "diff"

    .prologue
    .line 8131
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    .line 8132
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 8133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 8145
    :goto_0
    return-void

    .line 8136
    :cond_0
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    .line 8138
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mPrevLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int v0, v2, v3

    .line 8139
    .local v0, leftLimit:I
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mCurrentLangWidth:I

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mNextLangWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiffLimit:I

    add-int v1, v2, v3

    .line 8141
    .local v1, rightLimit:I
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    if-le v2, v1, :cond_1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    .line 8142
    :cond_1
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    neg-int v3, v0

    if-ge v2, v3, :cond_2

    neg-int v2, v0

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    .line 8143
    :cond_2
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mDiff:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mThreshold:I

    if-le v2, v3, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 8144
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method
