.class public Lcom/android/music/list/view/AbstractMpListView$musicHandler;
.super Landroid/os/Handler;
.source "AbstractMpListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/view/AbstractMpListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "musicHandler"
.end annotation


# instance fields
.field private UpdateCount:I

.field private mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private pauseCheck:Z

.field final synthetic this$0:Lcom/android/music/list/view/AbstractMpListView;


# direct methods
.method public constructor <init>(Lcom/android/music/list/view/AbstractMpListView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 192
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 187
    iput-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 188
    iput v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 193
    sput v1, Lcom/android/music/list/view/AbstractMpListView;->position:I

    .line 194
    sput v1, Lcom/android/music/list/view/AbstractMpListView;->max:I

    .line 195
    sput v1, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 196
    iput-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 197
    iput v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 198
    sput-boolean v1, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "msg"

    .prologue
    .line 209
    const/4 v7, -0x1

    .line 210
    .local v7, index:I
    const/4 v12, 0x0

    .line 211
    .local v12, playType:I
    const/4 v4, 0x0

    .line 212
    .local v4, SetTagString:Ljava/lang/String;
    const/4 v11, 0x0

    .line 213
    .local v11, playCheck:Z
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    if-nez v16, :cond_1

    .line 214
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 637
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local p0
    :cond_1
    const-string v13, ""

    .line 218
    .local v13, subTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {v3}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 219
    const-string v16, "CORECHECK"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ListView : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 222
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const-wide/16 v18, 0x1f4

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 227
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaListType()I

    move-result v12

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v11

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getPosition()I

    move-result v16

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->position:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getDuration()I

    move-result v16

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->max:I

    .line 242
    const/16 v16, 0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 243
    const/16 v16, 0x1

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 247
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v10

    .line 248
    .local v10, mplistFilter:Lcom/android/music/common/data/MpListFilter;
    if-eqz v10, :cond_3

    move-object v0, v10

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    if-eqz v16, :cond_3

    .line 250
    move-object v0, v10

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 252
    move-object v0, v10

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 253
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v10

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 259
    :cond_3
    :goto_2
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/music/list/view/AbstractMpListView;

    .line 260
    .local v14, tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-nez v14, :cond_7

    .line 262
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler: no subTag = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " String.valueOf(playType) = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 321
    .end local v10           #mplistFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v14           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 323
    .local v6, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "musicHandler: fail to get current media from music core player."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 328
    .end local v6           #e:Landroid/os/RemoteException;
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v16

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    :goto_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto/16 :goto_0

    .line 403
    :pswitch_0
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 405
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler, UPDATE: play thread  run type = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "play thread isPlay = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " index ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " playType ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/16 v16, 0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_20

    .line 414
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-nez v16, :cond_13

    .line 416
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "musicHandler, UPDATE: oldPlayIndex == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sput-object v4, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 418
    sput v12, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 419
    sput-object v13, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    .line 508
    :cond_4
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/music/list/view/AbstractMpListView;

    .line 509
    .restart local v14       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread 1 ===> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-eqz v14, :cond_1f

    .line 512
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 513
    .local v15, view:Landroid/view/View;
    if-nez v15, :cond_1c

    .line 515
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 245
    .end local v14           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v15           #view:Landroid/view/View;
    :cond_5
    const/16 v16, 0x2

    :try_start_2
    sput v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    goto/16 :goto_1

    .line 255
    .restart local v10       #mplistFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_6
    move-object v0, v10

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 256
    move-object v0, v10

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object v13, v0

    goto/16 :goto_2

    .line 267
    .restart local v14       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    :cond_7
    const/16 v16, 0xd

    move v0, v12

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    const/16 v16, 0x9

    move v0, v12

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 269
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v7

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v5

    .line 271
    .local v5, currentId:I
    const-string v16, "%s_%d_%d"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 279
    .end local v5           #currentId:I
    :goto_5
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "musicHandler:index=%d,type=%d,TagString=%s,isStop=%s"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aput-object v4, v18, v19

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/16 v16, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 283
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 284
    .restart local v15       #view:Landroid/view/View;
    if-eqz v15, :cond_b

    .line 286
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler Event = UPDATERESUME SetTagString = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " playType = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 288
    .local v9, mpView:Lcom/android/music/list/view/MpView;
    if-eqz v9, :cond_9

    .line 290
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "musicHandler SetIcon"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 294
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TagBack"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/MpView;

    .line 295
    .local v8, mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v16

    monitor-enter v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 296
    if-eqz v8, :cond_a

    .line 298
    :try_start_3
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string v18, "musicHandler SetProgressValue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget v17, Lcom/android/music/list/view/AbstractMpListView;->position:I

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->max:I

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/MpView;->SetProgressValue(II)V

    .line 301
    :cond_a
    invoke-virtual {v14}, Lcom/android/music/list/view/AbstractMpListView;->invalidate()V

    .line 302
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    :cond_b
    :try_start_4
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x3

    invoke-virtual/range {v16 .. v17}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 306
    const/16 v16, 0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 307
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0xa

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 275
    .end local v15           #view:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v7

    .line 276
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    goto/16 :goto_5

    .line 302
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    .restart local v15       #view:Landroid/view/View;
    :catchall_0
    move-exception v17

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v17

    .line 312
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    :cond_d
    sput-object v4, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 313
    sput v12, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 314
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "SEND UPDATEFORCE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 318
    .end local v15           #view:Landroid/view/View;
    :cond_e
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 329
    .end local v10           #mplistFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v14           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 331
    .restart local v6       #e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_4

    .line 337
    .end local v6           #e:Landroid/os/RemoteException;
    :pswitch_1
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x2

    invoke-virtual/range {v16 .. v17}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 338
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 339
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 340
    const/16 v16, -0x1

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 341
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 342
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 344
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/music/list/view/AbstractMpListView;

    .line 345
    .restart local v14       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v14, :cond_0

    .line 347
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 348
    .restart local v15       #view:Landroid/view/View;
    if-eqz v15, :cond_0

    .line 351
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 352
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thred delete old listview = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/music/list/view/MpView;->SetNoIndex()V

    .line 354
    if-eqz v9, :cond_f

    .line 356
    invoke-virtual {v9}, Lcom/android/music/list/view/MpView;->invalidate()V

    goto/16 :goto_0

    .line 359
    :cond_f
    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 385
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local v14           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v15           #view:Landroid/view/View;
    :pswitch_2
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 386
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v16, :cond_10

    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    sget v16, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_11

    .line 387
    :cond_10
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 390
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 391
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_12

    .line 393
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 394
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 397
    :cond_12
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x1

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 422
    :cond_13
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v16, :cond_4

    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    sget v16, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_4

    .line 424
    :cond_14
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 426
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread 5 ===> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mhandler => "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/music/list/view/AbstractMpListView;

    .line 429
    .restart local v14       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v14, :cond_15

    .line 431
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 432
    .restart local v15       #view:Landroid/view/View;
    if-eqz v15, :cond_15

    .line 435
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget v17, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 437
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thred delete old listview = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Lcom/android/music/list/view/MpView;->SetNoIndex()V

    .line 439
    if-eqz v9, :cond_17

    .line 441
    invoke-virtual {v9}, Lcom/android/music/list/view/MpView;->invalidate()V

    .line 449
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local v15           #view:Landroid/view/View;
    :cond_15
    :goto_6
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread 6 ===> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "oldmListType = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sput v12, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 453
    sput-object v13, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    .line 455
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v16, :cond_16

    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 458
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 459
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 463
    :cond_16
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    check-cast v14, Lcom/android/music/list/view/AbstractMpListView;

    .line 464
    .restart local v14       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v14, :cond_1a

    .line 466
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 467
    .restart local v15       #view:Landroid/view/View;
    if-nez v15, :cond_18

    .line 469
    sput-object v4, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 470
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 471
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x64

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 444
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    .restart local p0
    :cond_17
    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    goto/16 :goto_6

    .line 474
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local p0
    :cond_18
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread 7 ===> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget v17, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 478
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    if-nez v9, :cond_1b

    .line 482
    invoke-static {}, Lcom/android/music/list/view/MpView;->SetNoIndex()V

    .line 489
    :goto_7
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TagBack"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/MpView;

    .line 490
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 491
    if-eqz v8, :cond_19

    .line 493
    :try_start_7
    sget v17, Lcom/android/music/list/view/AbstractMpListView;->position:I

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->max:I

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/MpView;->SetProgressValue(II)V

    .line 495
    :cond_19
    invoke-virtual {v14}, Lcom/android/music/list/view/AbstractMpListView;->invalidate()V

    .line 496
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 502
    sput-object v4, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 505
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local v15           #view:Landroid/view/View;
    :cond_1a
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 486
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    .restart local v15       #view:Landroid/view/View;
    :cond_1b
    const/16 v16, 0x1

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 487
    sget v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    goto :goto_7

    .line 496
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    :catchall_1
    move-exception v17

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v17

    .line 518
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .restart local p0
    :cond_1c
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread 2 ===> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget v17, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 520
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    if-eqz v9, :cond_1d

    .line 522
    const/16 v16, 0x1

    sput v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 523
    sget v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 525
    :cond_1d
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread 3 ===> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TagBack"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/MpView;

    .line 527
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 528
    if-eqz v8, :cond_1e

    .line 530
    :try_start_9
    sget v17, Lcom/android/music/list/view/AbstractMpListView;->position:I

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->max:I

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/MpView;->SetProgressValue(II)V

    .line 532
    :cond_1e
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "musicHandler,play thread 4 ===> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 534
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 538
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local v15           #view:Landroid/view/View;
    :cond_1f
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x320

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 534
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    .restart local v15       #view:Landroid/view/View;
    :catchall_2
    move-exception v17

    :try_start_a
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v17

    .line 544
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local v14           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v15           #view:Landroid/view/View;
    :cond_20
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread oldPlayIndex = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " pauseCheck "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " playType "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-nez v16, :cond_21

    .line 550
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 553
    :cond_21
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v16, :cond_27

    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_22

    sget v16, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, v16

    move v1, v12

    if-eq v0, v1, :cond_27

    .line 555
    :cond_22
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 556
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "musicHandler,play thread pauseCheck "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/view/AbstractMpListView;

    .line 558
    .local v3, Abview:Lcom/android/music/list/view/AbstractMpListView;
    if-nez v3, :cond_23

    .line 560
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v17, 0x0

    const-wide/16 v18, 0x12c

    invoke-virtual/range {v16 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 563
    :cond_23
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 564
    .restart local v15       #view:Landroid/view/View;
    if-nez v15, :cond_24

    .line 566
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 569
    .restart local p0
    :cond_24
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget v17, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 570
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    if-eqz v9, :cond_25

    .line 572
    sget v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 574
    :cond_25
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TagBack"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/MpView;

    .line 575
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 576
    if-eqz v8, :cond_26

    .line 578
    :try_start_b
    sget v17, Lcom/android/music/list/view/AbstractMpListView;->position:I

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->max:I

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/MpView;->SetProgressValue(II)V

    .line 580
    :cond_26
    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 581
    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v18, 0x0

    const-wide/16 v19, 0x12c

    invoke-virtual/range {v17 .. v20}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    monitor-exit v16

    goto/16 :goto_0

    :catchall_3
    move-exception v17

    monitor-exit v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v17

    .line 588
    .end local v3           #Abview:Lcom/android/music/list/view/AbstractMpListView;
    .end local v8           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v9           #mpView:Lcom/android/music/list/view/MpView;
    .end local v15           #view:Landroid/view/View;
    :cond_27
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "view_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    .line 589
    .restart local v15       #view:Landroid/view/View;
    if-nez v15, :cond_28

    .line 591
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 594
    :cond_28
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget v17, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/music/list/view/MpView;

    .line 595
    .restart local v9       #mpView:Lcom/android/music/list/view/MpView;
    if-eqz v9, :cond_29

    .line 598
    sget v16, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 600
    :cond_29
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TagBack"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/music/list/view/MpView;

    .line 601
    .restart local v8       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v16

    monitor-enter v16

    .line 602
    if-eqz v8, :cond_2a

    .line 604
    :try_start_c
    sget v17, Lcom/android/music/list/view/AbstractMpListView;->position:I

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->max:I

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/music/list/view/MpView;->SetProgressValue(II)V

    .line 606
    :cond_2a
    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 607
    monitor-exit v16
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 623
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v16, :cond_2b

    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    move/from16 v16, v0

    if-eqz v16, :cond_2b

    .line 625
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 626
    sget-object v16, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 628
    :cond_2b
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 629
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 631
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v16

    const-string v17, "musicHandler,play thread End..."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 607
    :catchall_4
    move-exception v17

    :try_start_d
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v17

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public musicClose()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 205
    return-void
.end method
