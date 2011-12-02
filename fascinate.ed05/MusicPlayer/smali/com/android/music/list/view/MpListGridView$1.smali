.class Lcom/android/music/list/view/MpListGridView$1;
.super Ljava/lang/Object;
.source "MpListGridView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/view/MpListGridView;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/view/MpListGridView;

.field final synthetic val$iPlaylistID:I


# direct methods
.method constructor <init>(Lcom/android/music/list/view/MpListGridView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iput p2, p0, Lcom/android/music/list/view/MpListGridView$1;->val$iPlaylistID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 216
    packed-switch p2, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 220
    :pswitch_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v6}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v5, subBuilder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 222
    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 223
    const v6, 0x7f0a00f5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 224
    const v6, 0x7f0a00a5

    new-instance v7, Lcom/android/music/list/view/MpListGridView$1$2;

    invoke-direct {v7, p0}, Lcom/android/music/list/view/MpListGridView$1$2;-><init>(Lcom/android/music/list/view/MpListGridView$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a00a6

    new-instance v8, Lcom/android/music/list/view/MpListGridView$1$1;

    invoke-direct {v8, p0}, Lcom/android/music/list/view/MpListGridView$1$1;-><init>(Lcom/android/music/list/view/MpListGridView$1;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 241
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, v6, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    .line 242
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v6, v6, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 248
    .end local v5           #subBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v6}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 250
    .local v2, mDB:Lcom/android/music/common/data/MusicDB;
    new-array v4, v12, [Ljava/lang/String;

    .line 251
    .local v4, playlistTitle:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v6, v6, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v7, v7, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v8, "name"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    .line 252
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v6, v6, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v2, v9, v6}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    .line 253
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v6, v6, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v7, v7, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 255
    .local v0, iPlaylistID:I
    new-array v3, v12, [Ljava/lang/String;

    .line 256
    .local v3, playlistConditions:[Ljava/lang/String;
    const-string v6, "0"

    aput-object v6, v3, v10

    .line 257
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    .line 258
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v6, v6, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 259
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v6, v6, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v7, v7, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v8, "thumbnail_uri"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    .line 261
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v6}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "ListType"

    const/16 v7, 0x1a

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    const-string v6, "TitleText"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v6, "Conditions"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v6, "CheckListType"

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    iget-object v6, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v6}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
