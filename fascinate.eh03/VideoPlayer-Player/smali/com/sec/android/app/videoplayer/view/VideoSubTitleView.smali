.class public Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
.super Landroid/widget/RelativeLayout;
.source "VideoSubTitleView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubTitleLayout:Landroid/view/View;

.field private mSubTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleLayout:Landroid/view/View;

    .line 18
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    .line 22
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->initView()V

    .line 25
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    const/16 v2, 0x18

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->removeAllViews()V

    .line 36
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleLayout:Landroid/view/View;

    .line 39
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleLayout:Landroid/view/View;

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    .line 41
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 42
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleLayout:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    return-void
.end method


# virtual methods
.method public updateLayout(Z)V
    .locals 4
    .parameter "isControlShow"

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const/16 v1, 0xa6

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 79
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    return-void

    .line 77
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public updateSubTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "subTitle"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-void
.end method

.method public updateSubTitleProperty()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->mSubTitleText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getSubTitleSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 62
    :cond_0
    return-void
.end method
