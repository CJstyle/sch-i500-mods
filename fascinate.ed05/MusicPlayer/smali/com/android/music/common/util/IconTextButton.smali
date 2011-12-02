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
.method public resizeButton()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/music/common/util/IconTextButton;->requestLayout()V

    .line 134
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setDimmingButton()V
    .locals 2

    .prologue
    .line 116
    const v0, 0x55ffffff

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/common/util/IconTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 118
    return-void
.end method

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

.method public setImageAndText(ILjava/lang/String;)V
    .locals 0
    .parameter "resId1"
    .parameter "s"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/music/common/util/IconTextButton;->setImageResource(I)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/music/common/util/IconTextButton;->setText(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setImageAndText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "d"
    .parameter "s"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/music/common/util/IconTextButton;->setImageResource(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/android/music/common/util/IconTextButton;->setText(Ljava/lang/String;)V

    .line 95
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

.method public setImageResource(II)V
    .locals 1
    .parameter "resId"
    .parameter "alpha"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 65
    :cond_0
    return-void
.end method

.method public setImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setNormalButton()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/music/common/util/IconTextButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 123
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

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/music/common/util/IconTextButton;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 90
    :cond_0
    return-void
.end method
