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
    .line 194
    iput-object p1, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iput p2, p0, Lcom/android/music/list/view/MpListGridView$1;->val$iPlaylistID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 196
    packed-switch p2, :pswitch_data_0

    .line 250
    :goto_0
    return-void

    .line 200
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v1}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 203
    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 204
    const v1, 0x7f0a00a8

    new-instance v2, Lcom/android/music/list/view/MpListGridView$1$2;

    invoke-direct {v2, p0}, Lcom/android/music/list/view/MpListGridView$1$2;-><init>(Lcom/android/music/list/view/MpListGridView$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00a9

    new-instance v3, Lcom/android/music/list/view/MpListGridView$1$1;

    invoke-direct {v3, p0}, Lcom/android/music/list/view/MpListGridView$1$1;-><init>(Lcom/android/music/list/view/MpListGridView$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 221
    iget-object v1, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    .line 222
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v0, v0, Lcom/android/music/list/view/MpListGridView;->subContextAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v0}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    .line 230
    new-array v1, v8, [Ljava/lang/String;

    .line 231
    iget-object v2, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v2, v2, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v3, v3, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v4, "name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 232
    iget-object v2, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v2, v2, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v5, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 233
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v0, v0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v2, v2, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 235
    new-array v2, v8, [Ljava/lang/String;

    .line 236
    const-string v3, "0"

    aput-object v3, v2, v6

    .line 237
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 238
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v0, v0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    .line 239
    iget-object v0, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v0, v0, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    iget-object v3, v3, Lcom/android/music/list/view/MpListGridView;->mCursor:Landroid/database/Cursor;

    const-string v4, "thumbnail_uri"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 241
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v3}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    const-string v3, "ListType"

    const/16 v4, 0x1a

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v3, "TitleText"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "Conditions"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "CheckListType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    iget-object v1, p0, Lcom/android/music/list/view/MpListGridView$1;->this$0:Lcom/android/music/list/view/MpListGridView;

    invoke-static {v1}, Lcom/android/music/list/view/MpListGridView;->access$100(Lcom/android/music/list/view/MpListGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
