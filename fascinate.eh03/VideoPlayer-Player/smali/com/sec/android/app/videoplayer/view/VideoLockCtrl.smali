.class public Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;
.super Landroid/widget/RelativeLayout;
.source "VideoLockCtrl.java"


# instance fields
.field private final HIDE_LOCK_ICON:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLockImage:Landroid/widget/ImageView;

.field private mLockLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "VideoLockController"

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->TAG:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mContext:Landroid/content/Context;

    .line 18
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    .line 19
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->HIDE_LOCK_ICON:I

    .line 61
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->initView()V

    .line 27
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, -0x2

    .line 31
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->removeAllViews()V

    .line 37
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    .line 40
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method


# virtual methods
.method public hideLockIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    return-void
.end method

.method public showLockIcon()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mLockLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoLockCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 53
    return-void
.end method
