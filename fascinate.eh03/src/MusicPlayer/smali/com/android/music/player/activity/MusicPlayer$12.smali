.class Lcom/android/music/player/activity/MusicPlayer$12;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V
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
    .line 1249
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const v5, 0x7f0c00ad

    .line 1252
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    if-nez v1, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicPlayer;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v1}, Lcom/android/music/player/activity/MusicPlayer;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1256
    :cond_2
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "mTitleInfoButton: onClick : but !hasWindowFocus() or Finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1260
    :cond_3
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    .line 1262
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1263
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v4, v4, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/android/music/player/data/MusicAlbumInfo;->mArtist:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    :cond_4
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1265
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v4, v4, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/android/music/player/data/MusicAlbumInfo;->mTitle:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    :cond_5
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v1, v1, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1267
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v4, v4, Lcom/android/music/player/activity/MusicPlayer;->mediaAlbumInfo:Lcom/android/music/player/data/MusicAlbumInfo;

    iget-object v4, v4, Lcom/android/music/player/data/MusicAlbumInfo;->mAlbum:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_6
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1270
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    if-nez v1, :cond_7

    .line 1271
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1272
    .local v0, mListAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    .line 1273
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mGoogleSearchListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1274
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1276
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mTwOptionPopupDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    .line 1277
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1279
    .end local v0           #mListAdapter:Landroid/widget/ListAdapter;
    :cond_7
    new-instance v0, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;

    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v2, v2, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->searchItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/music/player/activity/MusicPlayer$GoogleSearchAdapter;-><init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 1280
    .restart local v0       #mListAdapter:Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1281
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1282
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->googleSearchMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1284
    :cond_8
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$12;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    const-string v2, "googleSearchMessageBox != null - atdialog.getListView() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
