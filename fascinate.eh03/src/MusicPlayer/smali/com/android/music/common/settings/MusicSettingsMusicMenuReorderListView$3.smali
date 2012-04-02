.class Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;
.super Ljava/lang/Object;
.source "MusicSettingsMusicMenuReorderListView.java"

# interfaces
.implements Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 477
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;>;"
    if-ne p1, p2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-static {v2, v3}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$102(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z

    .line 480
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2, v4}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setScrollbarFadingEnabled(Z)V

    .line 505
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 483
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-static {v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$100(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-static {v2, v3}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->access$102(Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;Z)Z

    .line 499
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;

    .line 500
    .local v1, fromItem:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter$ViewItem;
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 501
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2, v4}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->setScrollbarFadingEnabled(Z)V

    .line 502
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView$3;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderAdapter;->changeArray(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
