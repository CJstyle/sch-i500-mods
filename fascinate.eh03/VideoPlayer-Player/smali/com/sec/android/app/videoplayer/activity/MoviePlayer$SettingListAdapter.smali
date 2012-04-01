.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3650
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    .line 3651
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3652
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3656
    move-object v3, p2

    .line 3658
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 3660
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    #getter for: Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer;->access$1900(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3661
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3664
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;

    .line 3666
    .local v0, item:Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;
    const v5, 0x7f0a0010

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3667
    .local v1, settingItem:Landroid/widget/TextView;
    const v5, 0x7f0a0011

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3669
    .local v2, settingValue:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->getItem()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3671
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->getItem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3674
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3676
    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3679
    :cond_2
    return-object v3
.end method
