.class public Lcom/android/music/player/widget/MusicScrollTextView;
.super Landroid/widget/TextView;
.source "MusicScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/widget/MusicScrollTextView$ITwTextScrollable;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mCheckTextWidth:I

.field private mCheckWidth:I

.field private mIsChecked:Z

.field private mOriginalTruncateAt:Landroid/text/TextUtils$TruncateAt;

.field private mPaused:Z

.field private mRndDuration:I

.field private mSlr:Landroid/widget/Scroller;

.field private mStartScroll:Ljava/lang/Runnable;

.field private mStopped:Z

.field private mXPaused:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/music/player/widget/MusicScrollTextView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/music/player/widget/MusicScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/player/widget/MusicScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mRndDuration:I

    .line 53
    iput v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mXPaused:I

    .line 58
    iput-boolean v2, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStopped:Z

    .line 71
    iput-boolean v2, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mIsChecked:Z

    .line 73
    iput v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mCheckWidth:I

    .line 75
    iput v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mCheckTextWidth:I

    .line 325
    new-instance v0, Lcom/android/music/player/widget/MusicScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/android/music/player/widget/MusicScrollTextView$1;-><init>(Lcom/android/music/player/widget/MusicScrollTextView;)V

    iput-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStartScroll:Ljava/lang/Runnable;

    .line 97
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->setSingleLine()V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 100
    return-void
.end method

.method private calculateScrollingLen()I
    .locals 6

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 244
    .local v3, tp:Landroid/text/TextPaint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 245
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, strTxt:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getWidth()I

    move-result v5

    add-int v1, v4, v5

    .line 248
    .local v1, scrollingLen:I
    const/4 v0, 0x0

    .line 249
    return v1
.end method

.method private needScrollByTextWidth()Z
    .locals 5

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, needScroll:Z
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 295
    .local v2, width:I
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getTextWidth()I

    move-result v1

    .line 297
    .local v1, textwidth:I
    iget v3, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mCheckWidth:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mCheckTextWidth:I

    if-eq v3, v1, :cond_1

    .line 301
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mIsChecked:Z

    .line 303
    iput v2, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mCheckWidth:I

    .line 305
    iput v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mCheckTextWidth:I

    .line 307
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getTextWidth()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 309
    const/4 v0, 0x1

    .line 319
    :cond_1
    :goto_0
    return v0

    .line 313
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    .line 267
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStopped:Z

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mXPaused:I

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    .line 273
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->resumeScroll()V

    goto :goto_0
.end method

.method public getRndDuration()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mRndDuration:I

    return v0
.end method

.method public getTextWidth()I
    .locals 5

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 254
    .local v2, tp:Landroid/text/TextPaint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 255
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, strTxt:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 257
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    return v3
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    return v0
.end method

.method public needScroll()Z
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 232
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getTextWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    .line 114
    invoke-direct {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->needScrollByTextWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mIsChecked:Z

    if-nez v0, :cond_0

    .line 120
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setGravity(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->setSingleLine()V

    .line 124
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setRndDuration(I)V

    .line 126
    sget-object v0, Lcom/android/music/player/widget/MusicScrollTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStartScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    sget-object v0, Lcom/android/music/player/widget/MusicScrollTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStartScroll:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    iput-boolean v4, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mIsChecked:Z

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    return-void

    .line 136
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mIsChecked:Z

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->stopScroll()V

    .line 140
    iput-boolean v4, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mIsChecked:Z

    goto :goto_0
.end method

.method public pauseScroll()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    .line 220
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mXPaused:I

    .line 222
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method public resumeScroll()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    .line 178
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setScroller(Landroid/widget/Scroller;)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->calculateScrollingLen()I

    move-result v6

    .line 182
    .local v6, scrollingLen:I
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mXPaused:I

    add-int/2addr v0, v1

    sub-int v3, v6, v0

    .line 185
    .local v3, distance:I
    iget v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mRndDuration:I

    mul-int v5, v3, v0

    .line 188
    .local v5, duration:I
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mXPaused:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 189
    iput-boolean v2, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mPaused:Z

    .line 190
    iput-boolean v2, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStopped:Z

    .line 191
    return-void
.end method

.method public setRndDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 282
    iput p1, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mRndDuration:I

    .line 283
    return-void
.end method

.method public setTextScroll(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public startScroll()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStopped:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mOriginalTruncateAt:Landroid/text/TextUtils$TruncateAt;

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mXPaused:I

    .line 165
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setHorizontallyScrolling(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/music/player/widget/MusicScrollTextView;->resumeScroll()V

    .line 168
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mStopped:Z

    .line 201
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mSlr:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 202
    iget-object v0, p0, Lcom/android/music/player/widget/MusicScrollTextView;->mOriginalTruncateAt:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/music/player/widget/MusicScrollTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
