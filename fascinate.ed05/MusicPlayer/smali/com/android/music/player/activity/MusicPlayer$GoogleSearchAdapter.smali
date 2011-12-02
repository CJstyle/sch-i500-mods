.class Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleSearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4266
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;>;"
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    .line 4267
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4268
    iput-object p4, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;->items:Ljava/util/ArrayList;

    .line 4269
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 4272
    move-object v2, p2

    .line 4273
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    .line 4274
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 4275
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f030022

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4277
    .end local v3           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    .line 4278
    .local v0, ti:Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;
    if-eqz v0, :cond_1

    .line 4279
    const v4, 0x7f0c00ac

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4281
    .local v1, titleview:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 4282
    iget-object v4, v0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4286
    .end local v1           #titleview:Landroid/widget/TextView;
    :cond_1
    return-object v2
.end method
