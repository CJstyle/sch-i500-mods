.class public abstract Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractMpListTitleScreenLayout.java"


# instance fields
.field protected inflater:Landroid/view/LayoutInflater;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->inflater:Landroid/view/LayoutInflater;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mResolver:Landroid/content/ContentResolver;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->setOrientation(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public GetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/music/list/layout/AbstractMpListTitleScreenLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method public abstract getDefaultHeight()I
.end method

.method public abstract getDefaultWidth()I
.end method

.method public optionMenuOperate(I)V
    .locals 0
    .parameter "itemId"

    .prologue
    .line 46
    return-void
.end method

.method public abstract setBimap(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
.end method

.method public abstract setTitleDisplay(Lcom/android/music/list/data/LayoutData;)V
.end method
