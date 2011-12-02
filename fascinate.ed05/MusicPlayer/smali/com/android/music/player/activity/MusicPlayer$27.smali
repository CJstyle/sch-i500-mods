.class Lcom/android/music/player/activity/MusicPlayer$27;
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
    .line 4202
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v7, " "

    .line 4203
    const/4 v3, 0x0

    .line 4204
    .local v3, query:Ljava/lang/String;
    const/4 v2, 0x0

    .line 4205
    .local v2, mime:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4207
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    .line 4208
    .local v1, item:Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;
    iget v5, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    packed-switch v5, :pswitch_data_0

    .line 4237
    :goto_0
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v6, "GOOGLE_SEARCH_POPUP_DIALOG:%d,%s,%s,%s,%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v9

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v9, v9, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v9, v9, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 4241
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4242
    .local v0, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4243
    const-string v5, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4244
    const-string v5, "query"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4245
    const-string v5, "android.intent.extra.title"

    iget-object v6, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v6, v6, Lcom/android/music/player/activity/MusicPlayer;->meta:Lcom/android/music/common/data/MediaMetadata;

    iget-object v6, v6, Lcom/android/music/common/data/MediaMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4246
    const-string v5, "android.intent.extra.focus"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4247
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V

    .line 4249
    return-void

    .line 4210
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_0
    iget-object v4, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 4211
    move-object v3, v4

    .line 4213
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v9, :cond_0

    .line 4215
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    if-ne v5, v9, :cond_0

    .line 4216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4218
    :cond_0
    const-string v2, "audio/*"

    .line 4219
    goto/16 :goto_0

    .line 4221
    :pswitch_1
    iget-object v4, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 4222
    iget-object v3, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 4223
    const-string v2, "vnd.android.cursor.item/artist"

    .line 4224
    goto/16 :goto_0

    .line 4226
    :pswitch_2
    iget-object v4, v1, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    .line 4227
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    if-ne v5, v9, :cond_1

    .line 4228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4233
    :goto_1
    const-string v2, "vnd.android.cursor.item/album"

    goto/16 :goto_0

    .line 4229
    :cond_1
    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->type:I

    if-ne v5, v9, :cond_2

    .line 4230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/music/player/activity/MusicPlayer$27;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    iget-object v5, v5, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 4232
    :cond_2
    move-object v3, v4

    goto :goto_1

    .line 4208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
