.class Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareAppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3213
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;>;"
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    .line 3214
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3215
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3218
    move-object v3, p2

    .line 3220
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 3222
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 3223
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f03003b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3226
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/music/player/activity/MusicPlayer$ShareAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;

    .line 3228
    .local v2, ti:Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;
    if-eqz v2, :cond_2

    .line 3229
    const v5, 0x7f0c0141

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3230
    .local v0, appicon:Landroid/widget/ImageView;
    const v5, 0x7f0c0142

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3232
    .local v1, appname:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 3233
    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3236
    :cond_1
    if-eqz v1, :cond_2

    .line 3237
    invoke-virtual {v2}, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3241
    .end local v0           #appicon:Landroid/widget/ImageView;
    .end local v1           #appname:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
