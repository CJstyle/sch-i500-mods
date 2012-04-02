.class public Lcom/android/music/common/util/IconTextButton;
.super Landroid/widget/LinearLayout;
.source "IconTextButton.java"


# instance fields
.field mButton:Landroid/widget/LinearLayout;

.field mContext:Landroid/content/Context;

.field mImage:Landroid/widget/ImageView;

.field mResources:Landroid/content/res/Resources;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/android/music/common/util/IconTextButton;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/android/music/common/util/IconTextButton;->initViews()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/android/music/common/util/IconTextButton;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/android/music/common/util/IconTextButton;->initViews()V

    .line 34
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/android/music/common/util/IconTextButton;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/music/common/util/IconTextButton;->mButton:Landroid/widget/LinearLayout;

    .line 40
    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    .line 41
    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    .line 42
    iget-object v2, p0, Lcom/android/music/common/util/IconTextButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/util/IconTextButton;->mResources:Landroid/content/res/Resources;

    .line 43
    return-void
.end method


# virtual methods
.method public setImageAndText(II)V
    .locals 0
    .parameter "resId1"
    .parameter "resId2"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/music/common/util/IconTextButton;->setImageResource(I)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/music/common/util/IconTextButton;->setText(I)V

    .line 100
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public setText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 79
    :cond_0
    return-void
.end method
