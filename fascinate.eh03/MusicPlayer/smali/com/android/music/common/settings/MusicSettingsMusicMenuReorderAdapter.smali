.class public Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;
.super Landroid/widget/BaseAdapter;
.source "MusicSettingsMusicMenuReorderAdapter.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpSetViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    }
.end annotation


# instance fields
.field protected mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mListView:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mListView:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    .line 34
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->makeArray()V

    .line 35
    return-void
.end method


# virtual methods
.method public changeArray(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;>;"
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    .line 53
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getChecked()[Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexView()Lcom/sec/android/touchwiz/widget/TwIndexScrollView;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    iget v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 75
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x7f0c00f2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mMainText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object p2
.end method

.method protected makeArray()V
    .locals 6

    .prologue
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    .line 39
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenuOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, tmpString:Ljava/lang/String;
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v0, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, token:Ljava/lang/String;
    new-instance v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    invoke-direct {v3, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;)V

    .line 45
    .local v3, viewItem:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    .line 46
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mId:I

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;->mMainText:Ljava/lang/String;

    .line 47
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    .end local v2           #token:Ljava/lang/String;
    .end local v3           #viewItem:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    :cond_0
    return-void
.end method

.method public reset(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 100
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 112
    return-void
.end method

.method public setIndexView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .locals 0
    .parameter "mindex"

    .prologue
    .line 104
    return-void
.end method

.method public setListView(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 108
    return-void
.end method
