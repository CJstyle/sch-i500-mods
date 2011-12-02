.class Lcom/android/music/discplus/view/DiscView$1;
.super Ljava/lang/Object;
.source "DiscView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/view/DiscView;->initAdapter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/view/DiscView;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;

.field final synthetic val$player:Lcom/android/music/player/service/ICorePlayerService;

.field final synthetic val$string:Ljava/lang/String;

.field final synthetic val$subListType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/player/service/ICorePlayerService;Lcom/android/music/discplus/view/DiscListAdapter;IILandroid/database/Cursor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/music/discplus/view/DiscView$1;->this$0:Lcom/android/music/discplus/view/DiscView;

    iput-object p2, p0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    iput-object p3, p0, Lcom/android/music/discplus/view/DiscView$1;->val$discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;

    iput p4, p0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    iput p5, p0, Lcom/android/music/discplus/view/DiscView$1;->val$type:I

    iput-object p6, p0, Lcom/android/music/discplus/view/DiscView$1;->val$cursor:Landroid/database/Cursor;

    iput-object p7, p0, Lcom/android/music/discplus/view/DiscView$1;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 22
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v2, "DiscView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ItemClick Position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    if-eqz v2, :cond_2

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/music/discplus/data/ListViewData;

    .line 463
    .local v20, listViewData:Lcom/android/music/discplus/data/ListViewData;
    if-nez v20, :cond_0

    const-wide/16 v2, 0x0

    move-wide v13, v2

    .line 464
    .local v13, auidoId:J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-gtz v2, :cond_1

    .line 506
    .end local v13           #auidoId:J
    .end local v20           #listViewData:Lcom/android/music/discplus/data/ListViewData;
    :goto_1
    return-void

    .line 463
    .restart local v20       #listViewData:Lcom/android/music/discplus/data/ListViewData;
    :cond_0
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/music/discplus/data/ListViewData;->mAudioId:J

    move-wide v2, v0

    move-wide v13, v2

    goto :goto_0

    .line 469
    .restart local v13       #auidoId:J
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v19

    .line 470
    .local v19, isPlaying:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getTotalMediaCount()I

    move-result v21

    .line 471
    .local v21, mediaCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v2

    int-to-long v15, v2

    .line 472
    .local v15, currentId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v2

    int-to-long v11, v2

    .line 473
    .local v11, currentMediaAudioId:J
    if-lez v21, :cond_3

    cmp-long v2, v13, v11

    if-nez v2, :cond_3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/discplus/data/ListViewData;->mId:I

    move v2, v0

    int-to-long v2, v2

    cmp-long v2, v15, v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 476
    .local v18, isEqualAudioId:Z
    :goto_2
    if-eqz v18, :cond_5

    .line 477
    if-eqz v19, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->pause()V

    .line 498
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v8, v0

    move-wide v9, v15

    invoke-virtual/range {v7 .. v12}, Lcom/android/music/discplus/view/DiscListAdapter;->setPlayingAudioId(IJJ)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$discListAdapter:Lcom/android/music/discplus/view/DiscListAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/music/discplus/view/DiscListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .end local v11           #currentMediaAudioId:J
    .end local v13           #auidoId:J
    .end local v15           #currentId:J
    .end local v18           #isEqualAudioId:Z
    .end local v19           #isPlaying:Z
    .end local v20           #listViewData:Lcom/android/music/discplus/data/ListViewData;
    .end local v21           #mediaCount:I
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->this$0:Lcom/android/music/discplus/view/DiscView;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/music/discplus/view/DiscView;->access$700(Lcom/android/music/discplus/view/DiscView;)Lcom/android/music/discplus/view/DiscView$CDList;

    move-result-object v2

    iget-object v2, v2, Lcom/android/music/discplus/view/DiscView$CDList;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    goto :goto_1

    .line 473
    .restart local v11       #currentMediaAudioId:J
    .restart local v13       #auidoId:J
    .restart local v15       #currentId:J
    .restart local v19       #isPlaying:Z
    .restart local v20       #listViewData:Lcom/android/music/discplus/data/ListViewData;
    .restart local v21       #mediaCount:I
    :cond_3
    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_2

    .line 480
    .restart local v18       #isEqualAudioId:Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v2, v0

    invoke-interface {v2}, Lcom/android/music/player/service/ICorePlayerService;->play()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 500
    .end local v11           #currentMediaAudioId:J
    .end local v15           #currentId:J
    .end local v18           #isEqualAudioId:Z
    .end local v19           #isPlaying:Z
    .end local v21           #mediaCount:I
    :catch_0
    move-exception v2

    move-object/from16 v17, v2

    .line 501
    .local v17, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/music/discplus/view/DiscView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAdapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 483
    .end local v17           #e:Landroid/os/RemoteException;
    .restart local v11       #currentMediaAudioId:J
    .restart local v15       #currentId:J
    .restart local v18       #isEqualAudioId:Z
    .restart local v19       #isPlaying:Z
    .restart local v21       #mediaCount:I
    :cond_5
    :try_start_2
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/discplus/data/ListViewData;->mId:I

    move v4, v0

    .line 484
    .local v4, subListId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v2, v0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v2, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v2, v0

    const/16 v3, 0xb

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v2, v0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 488
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->this$0:Lcom/android/music/discplus/view/DiscView;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v5, v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/music/discplus/view/DiscView;->access$600(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 492
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$type:I

    move v2, v0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$type:I

    move v2, v0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_9

    :cond_8
    const/4 v2, -0x1

    move v6, v2

    .line 494
    .local v6, _id:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->this$0:Lcom/android/music/discplus/view/DiscView;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$player:Lcom/android/music/player/service/ICorePlayerService;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$subListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$string:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/music/discplus/view/DiscView;->access$600(Lcom/android/music/discplus/view/DiscView;Lcom/android/music/player/service/ICorePlayerService;IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 492
    .end local v6           #_id:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$cursor:Landroid/database/Cursor;

    move-object v2, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/discplus/view/DiscView$1;->val$type:I

    move v3, v0

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    move v6, v2

    goto :goto_5
.end method
