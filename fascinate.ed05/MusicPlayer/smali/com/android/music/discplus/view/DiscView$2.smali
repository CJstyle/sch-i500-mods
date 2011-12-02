.class Lcom/android/music/discplus/view/DiscView$2;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->onClickCDFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    iput p2, p0, Lcom/android/music/discplus/view/DiscView$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 578
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$800(Lcom/android/music/discplus/view/DiscView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-virtual {v0}, Lcom/android/music/discplus/activity/DiscPlus;->getCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    .line 579
    .local v1, player:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentSelection()I

    move-result v10

    .line 581
    .local v10, positions:I
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getPlusData()Lcom/android/music/discplus/data/DiscPlusData;

    move-result-object v0

    iget-object v8, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 582
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    if-ltz v10, :cond_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v10, :cond_1

    .line 599
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #positions:I
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #positions:I
    :cond_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 587
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    iget v2, p0, Lcom/android/music/discplus/view/DiscView$2;->val$type:I

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget v3, p0, Lcom/android/music/discplus/view/DiscView$2;->val$type:I

    move v6, v4

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/music/discplus/view/DiscView;->access$600(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$900(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-static {v0}, Lcom/android/music/discplus/view/DiscView;->access$900(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDPlay;

    move-result-object v0

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/music/discplus/view/DiscView$CDPlay;->isPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_1
    iget-object v0, p0, Lcom/android/music/discplus/view/DiscView$2;->this$0:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->upDateMediaBtn()V

    goto :goto_0

    .line 592
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 593
    .local v9, e:Landroid/os/RemoteException;
    sget-object v0, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickCDFocus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
