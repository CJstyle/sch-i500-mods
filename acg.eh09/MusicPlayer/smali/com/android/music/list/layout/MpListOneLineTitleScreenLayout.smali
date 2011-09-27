.class public Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpListOneLineTitleScreenLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iget-object v0, p0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;->mView:Landroid/view/View;

    .line 21
    return-void
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 25
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 3
    .parameter "layoutData"

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/music/list/layout/MpListOneLineTitleScreenLayout;->mView:Landroid/view/View;

    const v2, 0x7f0c0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, titleText:Landroid/widget/TextView;
    iget-object v1, p1, Lcom/android/music/list/data/LayoutData;->mBigText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 41
    return-void
.end method
