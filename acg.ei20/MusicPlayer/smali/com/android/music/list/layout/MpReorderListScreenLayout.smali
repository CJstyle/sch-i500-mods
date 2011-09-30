.class public Lcom/android/music/list/layout/MpReorderListScreenLayout;
.super Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.source "MpReorderListScreenLayout.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->mView:Landroid/view/View;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/list/layout/MpReorderListScreenLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .parameter "image"
    .parameter "imageUri"

    .prologue
    .line 33
    return-void
.end method

.method public setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
    .locals 4
    .parameter "layoutData"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0065

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, topTitleText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00f5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/android/music/list/layout/MpReorderListScreenLayout;->mView:Landroid/view/View;

    const v3, 0x7f0c0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, Cancel:Landroid/widget/Button;
    new-instance v2, Lcom/android/music/list/layout/MpReorderListScreenLayout$1;

    invoke-direct {v2, p0}, Lcom/android/music/list/layout/MpReorderListScreenLayout$1;-><init>(Lcom/android/music/list/layout/MpReorderListScreenLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
