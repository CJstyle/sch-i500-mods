.class Lcom/android/music/player/activity/MusicPlayer$23;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 3120
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, " "

    .line 3123
    const/4 v3, 0x0

    .line 3124
    .local v3, query:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3125
    .local v2, mime:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3127
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    .line 3128
    .local v1, item:Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;
    iget v5, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    packed-switch v5, :pswitch_data_0

    .line 3160
    :goto_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 3162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3163
    .local v0, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3164
    const-string v5, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3165
    const-string v5, "query"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3166
    const-string v5, "android.intent.extra.title"

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v6, v6, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3167
    const-string v5, "android.intent.extra.focus"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3168
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 3170
    return-void

    .line 3130
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_0
    iget-object v4, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3131
    move-object v3, v4

    .line 3133
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 3135
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    if-nez v5, :cond_0

    .line 3136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3138
    :cond_0
    const-string v2, "audio/*"

    .line 3139
    goto :goto_0

    .line 3141
    :pswitch_1
    iget-object v4, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3142
    iget-object v3, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3143
    const-string v2, "vnd.android.cursor.item/artist"

    .line 3144
    goto/16 :goto_0

    .line 3146
    :pswitch_2
    iget-object v4, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 3147
    move-object v3, v4

    .line 3149
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_1

    .line 3150
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    if-nez v5, :cond_1

    .line 3151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3153
    :cond_1
    const-string v2, "vnd.android.cursor.item/album"

    goto/16 :goto_0

    .line 3166
    .restart local v0       #i:Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$23;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00ea

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 3128
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
