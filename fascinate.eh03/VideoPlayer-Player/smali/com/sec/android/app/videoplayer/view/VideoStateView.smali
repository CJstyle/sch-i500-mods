.class public Lcom/sec/android/app/videoplayer/view/VideoStateView;
.super Landroid/view/View;
.source "VideoStateView.java"


# static fields
.field private static mIconMax:I


# instance fields
.field private bStreaming:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBufferingIcon:[Landroid/graphics/drawable/Drawable;

.field private mConnectionIcon:[Landroid/graphics/drawable/Drawable;

.field private mIconCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconMax:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    .line 23
    iput v1, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconCnt:I

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconMax:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    .line 60
    sget v0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconMax:I

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v4

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v7

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v8

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 33
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 40
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 42
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 44
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 45
    const/4 v3, 0x1

    .line 50
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 42
    .restart local v1       #i:I
    .restart local v2       #info:[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1           #i:I
    .end local v2           #info:[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public doRefreshIcon()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconCnt:I

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->invalidate()V

    .line 117
    return-void
.end method

.method public getVideoSurfaceHeight()I
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 122
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    .local v4, bg:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBufferingIcon:[Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconCnt:I

    sget v11, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconMax:I

    rem-int/2addr v10, v11

    aget-object v5, v9, v10

    .line 124
    .local v5, dBuffering:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mConnectionIcon:[Landroid/graphics/drawable/Drawable;

    iget v10, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconCnt:I

    sget v11, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mIconMax:I

    rem-int/2addr v10, v11

    aget-object v6, v9, v10

    .line 126
    .local v6, dConnection:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingRight()I

    move-result v10

    sub-int v8, v9, v10

    .line 127
    .local v8, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getPaddingBottom()I

    move-result v10

    sub-int v7, v9, v10

    .line 129
    .local v7, h:I
    if-eqz v5, :cond_0

    .line 131
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v9, v8, v9

    div-int/lit8 v0, v9, 0x2

    .line 132
    .local v0, XsBuffering:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v2, v9, 0x2

    .line 133
    .local v2, YsBuffering:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v5, v0, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    .end local v0           #XsBuffering:I
    .end local v2           #YsBuffering:I
    :cond_0
    if-eqz v6, :cond_1

    .line 137
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v9, v8, v9

    div-int/lit8 v1, v9, 0x2

    .line 138
    .local v1, XsConnection:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v3, v9, 0x2

    .line 139
    .local v3, YsConnection:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v6, v1, v3, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    .end local v1           #XsConnection:I
    .end local v3           #YsConnection:I
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    if-eqz v4, :cond_2

    .line 149
    if-eqz v5, :cond_2

    .line 150
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    :cond_2
    iget-boolean v9, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    if-eqz v9, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 157
    if-eqz v6, :cond_3

    .line 158
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 168
    return-void

    .line 162
    :cond_4
    if-eqz v5, :cond_3

    .line 163
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setDrawableMode(Ljava/lang/String;)V
    .locals 2
    .parameter "scheme"

    .prologue
    .line 83
    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    .line 88
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rtsp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :cond_2
    const-string v0, "VideoStateView"

    const-string v1, "setDrawableMode() : Buffering.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/VideoStateView;->bStreaming:Z

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoStateView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
