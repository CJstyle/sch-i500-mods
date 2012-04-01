.class public Lcom/sec/android/app/videoplayer/view/VideoBookmarkSoftKey;
.super Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;
.source "VideoBookmarkSoftKey.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBookmarkSoftKey;->initViews()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBookmarkSoftKey;->initViews()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoBookmarkSoftKey;->initViews()V

    .line 25
    return-void
.end method


# virtual methods
.method protected initViews()V
    .locals 3

    .prologue
    .line 28
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 29
    .local v0, li:Landroid/view/LayoutInflater;
    const v1, 0x7f03000e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBookmarkSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;->mLeftButton:Landroid/widget/Button;

    .line 32
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoBookmarkSoftKey;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSoftKeyView;->mRightButton:Landroid/widget/Button;

    .line 33
    return-void
.end method
