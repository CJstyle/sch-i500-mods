.class public Lcom/android/mms/ui/SweepHandler;
.super Ljava/lang/Object;
.source "SweepHandler.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarCallback;


# instance fields
.field private currentIndex:I

.field private isCallable:Z

.field private mCallBg:Landroid/graphics/drawable/Drawable;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mCallText:Ljava/lang/String;

.field private mConversationList:Lcom/android/mms/ui/ConversationList;

.field private mDensityScale:F

.field private mLastDrawRcHeight:I

.field private mLastDrawRcWidth:I

.field private mMsgBg:Landroid/graphics/drawable/Drawable;

.field private mMsgIcon:Landroid/graphics/drawable/Drawable;

.field private mMsgText:Ljava/lang/String;

.field private mTempRect:Landroid/graphics/Rect;

.field private mWrongCallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 2
    .parameter "conversationList"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    .line 61
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 62
    iput v1, p0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 103
    iput-boolean v1, p0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 35
    iput-object p1, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    .line 36
    invoke-direct {p0}, Lcom/android/mms/ui/SweepHandler;->initResources()V

    .line 37
    return-void
.end method

.method private adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .parameter "d"
    .parameter "height"
    .parameter "wPadding"

    .prologue
    const/4 v2, 0x0

    const-string v1, "SweepHandler"

    .line 65
    const-string v0, "SweepHandler"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "SweepHandler"

    const-string v0, "adjustDrawableBound"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 69
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 74
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/mms/ui/SweepHandler;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    return-void
.end method

.method private drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V
    .locals 8
    .parameter "canvas"
    .parameter "msgText"
    .parameter "opacity"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 217
    const-string v5, "SweepHandler"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    const-string v5, "wangear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 221
    .local v1, ss:I
    const/high16 v5, 0x41c8

    iget v6, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float v4, v5, v6

    .line 223
    .local v4, textSize:F
    new-instance v3, Landroid/graphics/Paint;

    const/16 v5, 0x101

    invoke-direct {v3, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 226
    .local v3, textPaint:Landroid/graphics/Paint;
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 227
    const-string v5, "SweepHandler"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "wangear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "opa = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    const/high16 v5, 0x437f

    mul-float/2addr v5, p3

    float-to-int v2, v5

    .line 229
    .local v2, textColor:I
    const/high16 v5, 0x437f

    mul-float/2addr v5, p3

    float-to-int v0, v5

    .line 230
    .local v0, shadowColor:I
    shl-int/lit8 v5, v2, 0x18

    const v6, 0xffffff

    add-int v2, v5, v6

    .line 231
    shl-int/lit8 v5, v0, 0x18

    add-int/lit8 v0, v5, 0x0

    .line 232
    const-string v5, "SweepHandler"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "wangear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "textcolor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    const-string v5, "SweepHandler"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "wangear"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shadowColor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    const/high16 v5, 0x4040

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 237
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 239
    const/high16 v5, 0x4148

    add-float/2addr v5, p5

    invoke-virtual {p1, p2, p4, v5, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 241
    return-void
.end method

.method private initResources()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    const v1, 0x7f090233

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    const v1, 0x7f0901c0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    const v1, 0x7f090232

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    .line 58
    return-void
.end method

.method private setupDrawablesBound(II)V
    .locals 4
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    const-string v2, "SweepHandler"

    .line 78
    const-string v1, "SweepHandler"

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "SweepHandler"

    const-string v1, "setupDrawablesBound"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    const/high16 v1, 0x40e0

    iget v2, p0, Lcom/android/mms/ui/SweepHandler;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 82
    .local v0, wPadding:I
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v3, v3, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 86
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p2, v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/mms/ui/SweepHandler;->adjustDrawableBound(Landroid/graphics/drawable/Drawable;II)V

    .line 87
    return-void
.end method


# virtual methods
.method public onDefineSweepAction(I)Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;

    invoke-direct {v0}, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;-><init>()V

    .line 93
    .local v0, info:Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;
    iget-object v1, p0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/ConversationList;->isConversationIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iput-boolean v3, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 95
    iput-boolean v3, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    .line 100
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iput-boolean v2, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowLeftToRightSweep:Z

    .line 98
    iput-boolean v2, v0, Lcom/nemustech/tiffany/widget/TFSweepActionListView$SweepActionBarInfo;->allowRightToLeftSweep:Z

    goto :goto_0
.end method

.method public onDrawSweepActionBar(Landroid/content/Context;IFILandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "ctx"
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"
    .parameter "rc"
    .parameter "canvas"

    .prologue
    .line 111
    const-string v3, "SweepHandler"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const-string v3, "SweepHandler"

    const-string v4, "onDrawSweepActionBar(), itemIndex:%d, progress:%d, sweepState:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    if-eqz p4, :cond_1

    const/4 v3, 0x1

    move/from16 v0, p4

    move v1, v3

    if-ne v0, v1, :cond_c

    :cond_1
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 117
    .local v17, touching:Z
    :goto_0
    const/4 v3, 0x1

    move/from16 v0, p4

    move v1, v3

    if-ne v0, v1, :cond_d

    const/4 v3, 0x1

    move v12, v3

    .line 120
    .local v12, dragging:Z
    :goto_1
    const/4 v14, 0x0

    .line 121
    .local v14, needBoundUpdate:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    move v3, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 122
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    .line 123
    const/4 v14, 0x1

    .line 127
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    move v3, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 128
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    .line 129
    const/4 v14, 0x1

    .line 132
    :cond_3
    if-eqz v14, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcHeight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->mLastDrawRcWidth:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SweepHandler;->setupDrawablesBound(II)V

    .line 137
    :cond_4
    const v10, 0x3f4ccccd

    .line 140
    .local v10, INITIAL_OPACITY:F
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    move v3, v0

    move v0, v3

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    .line 144
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mConversationList:Lcom/android/mms/ui/ConversationList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->getNumber(I)Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, number:Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 146
    :cond_6
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    .line 150
    :goto_2
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/SweepHandler;->currentIndex:I

    .line 153
    .end local v15           #number:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-nez v3, :cond_8

    .line 154
    const-string v3, "SweepHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepDraw start :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_8
    const/high16 v3, 0x3f80

    cmpl-float v3, p3, v3

    if-eqz v3, :cond_9

    const/high16 v3, -0x4080

    cmpl-float v3, p3, v3

    if-nez v3, :cond_a

    .line 157
    :cond_9
    const-string v3, "SweepHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSweepDraw done :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_a
    const/4 v3, 0x0

    cmpl-float v3, p3, v3

    if-lez v3, :cond_10

    .line 164
    move/from16 v13, p3

    .line 167
    .local v13, drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 168
    .local v16, ss:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    const/high16 v4, 0x434c

    const v5, 0x424bffff

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    neg-float v3, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgBg:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 175
    const v11, 0x3e4ccccd

    .line 176
    .local v11, MSG_TXT_FADE_IN_PROGRESS:F
    const/high16 v3, 0x3fa0

    const v4, 0x3e4ccccd

    sub-float v4, v13, v4

    mul-float v6, v3, v4

    .line 177
    .local v6, opacity:F
    float-to-double v3, v6

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v3, v3, v7

    if-gez v3, :cond_f

    const/4 v6, 0x0

    .line 181
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    const/high16 v4, 0x437f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mMsgIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 213
    .end local v11           #MSG_TXT_FADE_IN_PROGRESS:F
    :goto_4
    return-void

    .line 115
    .end local v6           #opacity:F
    .end local v10           #INITIAL_OPACITY:F
    .end local v12           #dragging:Z
    .end local v13           #drawProgress:F
    .end local v14           #needBoundUpdate:Z
    .end local v16           #ss:I
    .end local v17           #touching:Z
    :cond_c
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_0

    .line 117
    .restart local v17       #touching:Z
    :cond_d
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    .line 148
    .restart local v10       #INITIAL_OPACITY:F
    .restart local v12       #dragging:Z
    .restart local v14       #needBoundUpdate:Z
    .restart local v15       #number:Ljava/lang/String;
    :cond_e
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    goto/16 :goto_2

    .line 178
    .end local v15           #number:Ljava/lang/String;
    .restart local v6       #opacity:F
    .restart local v11       #MSG_TXT_FADE_IN_PROGRESS:F
    .restart local v13       #drawProgress:F
    .restart local v16       #ss:I
    :cond_f
    float-to-double v3, v6

    const-wide v7, 0x3fe999999999999aL

    cmpl-double v3, v3, v7

    if-lez v3, :cond_b

    const/high16 v6, 0x3f80

    goto :goto_3

    .line 190
    .end local v6           #opacity:F
    .end local v11           #MSG_TXT_FADE_IN_PROGRESS:F
    .end local v13           #drawProgress:F
    .end local v16           #ss:I
    :cond_10
    const/high16 v3, -0x4080

    mul-float v13, v3, p3

    .line 193
    .restart local v13       #drawProgress:F
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Canvas;->save()I

    move-result v16

    .line 194
    .restart local v16       #ss:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    const/high16 v4, 0x434c

    const v5, 0x424bffff

    mul-float/2addr v5, v13

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float v4, v13, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p6

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallBg:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 197
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 201
    const v9, 0x3e4ccccd

    .line 202
    .local v9, CALL_TXT_FADE_IN_PROGRESS:F
    const/high16 v3, 0x3fa0

    const v4, 0x3e4ccccd

    sub-float v4, v13, v4

    mul-float v6, v3, v4

    .line 203
    .restart local v6       #opacity:F
    float-to-double v3, v6

    const-wide v7, 0x3fa999999999999aL

    cmpg-double v3, v3, v7

    if-gez v3, :cond_12

    const/4 v6, 0x0

    .line 207
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/SweepHandler;->isCallable:Z

    move v3, v0

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    .line 210
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    const/high16 v4, 0x437f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mCallIcon:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_4

    .line 204
    :cond_12
    float-to-double v3, v6

    const-wide v7, 0x3fe999999999999aL

    cmpl-double v3, v3, v7

    if-lez v3, :cond_11

    const/high16 v6, 0x3f80

    goto :goto_5

    .line 208
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SweepHandler;->mWrongCallText:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    move-object/from16 v3, p0

    move-object/from16 v4, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/SweepHandler;->drawFadingText(Landroid/graphics/Canvas;Ljava/lang/String;FFF)V

    goto :goto_6
.end method

.method public onListShouldDrawSelector(IFI)Z
    .locals 3
    .parameter "itemIndex"
    .parameter "sweepProgress"
    .parameter "sweepState"

    .prologue
    const-string v2, "SweepHandler"

    .line 244
    const-string v0, "SweepHandler"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "SweepHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShouldDrawSelector(), itemIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sweepState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
