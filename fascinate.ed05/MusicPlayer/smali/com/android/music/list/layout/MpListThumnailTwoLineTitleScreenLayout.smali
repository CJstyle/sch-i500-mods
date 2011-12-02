.class public Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpListThumnailTwoLineTitleScreenLayout.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;->mView:Landroid/view/View;

    .line 29
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
    .locals 5
    .parameter "layoutData"

    .prologue
    .line 58
    iget-object v3, p0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    .local v0, titleImage:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    .local v1, titleMainText:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 65
    iget-object v3, p0, Lcom/android/music/list/layout/MpListThumnailTwoLineTitleScreenLayout;->mView:Landroid/view/View;

    const v4, 0x7f0c0068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, titleSubText:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mSmallText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-boolean v3, p1, Lcom/android/music/list/data/LayoutData;->hasBitmap:Z

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p1, Lcom/android/music/list/data/LayoutData;->mTitleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v3, p1, Lcom/android/music/list/data/LayoutData;->mTitleResource:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
