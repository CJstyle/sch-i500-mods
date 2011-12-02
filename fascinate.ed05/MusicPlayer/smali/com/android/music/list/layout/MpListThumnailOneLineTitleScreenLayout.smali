.class public Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpListThumnailOneLineTitleScreenLayout.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;->mContext:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;->mView:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 34
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 4
    .parameter "layoutData"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    .local v0, titleImage:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 51
    iget-object v2, p0, Lcom/android/music/list/layout/MpListThumnailOneLineTitleScreenLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, titleText:Landroid/widget/TextView;
    iget-object v2, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    iget-boolean v2, p1, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p1, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v2, p1, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
