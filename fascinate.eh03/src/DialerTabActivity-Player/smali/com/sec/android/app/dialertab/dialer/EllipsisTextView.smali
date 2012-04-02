.class public Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;
.super Landroid/widget/EditText;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsized:Z

    .line 36
    const/high16 v0, 0x4210

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    .line 41
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    .line 46
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    .line 51
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    .line 59
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->initWidget()V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsized:Z

    .line 36
    const/high16 v0, 0x4210

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    .line 41
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    .line 46
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    .line 51
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    .line 59
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->initWidget()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsized:Z

    .line 36
    const/high16 v0, 0x4210

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    .line 41
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    .line 46
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    .line 51
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    .line 59
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView$1;-><init>(Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->initWidget()V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0, p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 211
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 220
    return-void
.end method

.method public getLocalwidth()F
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    return v0
.end method

.method public getScaleTextSize()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v7, 0x0

    .line 180
    if-eqz p1, :cond_1

    .line 181
    int-to-float v5, p1

    iput v5, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 186
    .local v1, s:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 187
    .local v2, textPaint:Landroid/text/TextPaint;
    iget v5, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 188
    .local v4, textWidth:F
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 189
    .local v0, measureWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getTextSize()F

    move-result v5

    iget v6, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    div-float v3, v5, v6

    .line 194
    .local v3, textSize:F
    :goto_1
    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    sub-float v5, v3, v5

    iget v6, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 195
    iget v5, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v3, v5

    .line 196
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setTextSize(F)V

    .line 197
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_1

    .line 182
    .end local v0           #measureWidth:F
    .end local v1           #s:Ljava/lang/CharSequence;
    .end local v2           #textPaint:Landroid/text/TextPaint;
    .end local v3           #textSize:F
    .end local v4           #textWidth:F
    :cond_1
    if-nez p1, :cond_0

    .line 183
    const v5, 0x43858000

    iget v6, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    goto :goto_0

    .line 200
    .restart local v0       #measureWidth:F
    .restart local v1       #s:Ljava/lang/CharSequence;
    .restart local v2       #textPaint:Landroid/text/TextPaint;
    .restart local v3       #textSize:F
    .restart local v4       #textWidth:F
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    .line 230
    .local v7, tSize:F
    cmpl-float v0, v7, v3

    if-eqz v0, :cond_3

    .line 231
    iput v7, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    .line 235
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 236
    .local v2, textWidth:F
    const/4 v6, 0x0

    .line 237
    .local v6, measureWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getTextSize()F

    move-result v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    div-float v8, v0, v3

    .line 238
    .local v8, textSize:F
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 240
    .local v1, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    .line 242
    if-ge p3, p4, :cond_4

    .line 244
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mEllipsized:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v8, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    .line 247
    :cond_1
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v8, v0

    .line 248
    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setTextSize(F)V

    .line 249
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 250
    cmpl-float v0, v6, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    sub-float v0, v8, v0

    iget v3, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    .line 269
    :cond_2
    :goto_1
    return-void

    .line 232
    .end local v1           #textPaint:Landroid/text/TextPaint;
    .end local v2           #textWidth:F
    .end local v6           #measureWidth:F
    .end local v8           #textSize:F
    :cond_3
    cmpl-float v0, v7, v3

    if-nez v0, :cond_0

    .line 233
    const v0, 0x43858000

    iget v3, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    goto :goto_0

    .line 254
    .restart local v1       #textPaint:Landroid/text/TextPaint;
    .restart local v2       #textWidth:F
    .restart local v6       #measureWidth:F
    .restart local v8       #textSize:F
    :cond_4
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v8

    iget v3, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    .line 257
    :cond_5
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v8, v0

    .line 258
    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setTextSize(F)V

    .line 259
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 260
    cmpl-float v0, v6, v2

    if-lez v0, :cond_6

    .line 261
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    sub-float/2addr v8, v0

    .line 262
    invoke-virtual {p0, v8}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->setTextSize(F)V

    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 264
    goto :goto_1

    .line 266
    :cond_6
    cmpg-float v0, v6, v2

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    add-float/2addr v0, v8

    iget v3, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_5

    goto :goto_1
.end method

.method public setLocalwidth(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 111
    iput p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mWidth:F

    .line 112
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .parameter "minTextSize"

    .prologue
    .line 153
    iput p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMinTextSize:F

    .line 154
    return-void
.end method

.method public setScaleTextSize(F)V
    .locals 0
    .parameter "scaleTextSize"

    .prologue
    .line 167
    iput p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaleTextSize:F

    .line 168
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0
    .parameter "scaledDensity"

    .prologue
    .line 125
    iput p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mScaledDensity:F

    .line 126
    return-void
.end method

.method public setmMaxTextSize(F)V
    .locals 0
    .parameter "maxTextSize"

    .prologue
    .line 139
    iput p1, p0, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->mMaxTextSize:F

    .line 140
    return-void
.end method
