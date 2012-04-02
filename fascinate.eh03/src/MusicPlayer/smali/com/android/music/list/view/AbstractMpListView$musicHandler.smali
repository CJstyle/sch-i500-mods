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
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 212
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 207
    iput-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 208
    iput v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 213
    sput-wide v2, Lcom/android/music/list/view/AbstractMpListView;->position:J

    .line 214
    sput-wide v2, Lcom/android/music/list/view/AbstractMpListView;->max:J

    .line 215
    sput v1, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 216
    iput-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 217
    iput v1, p0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 218
    sput-boolean v1, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 220
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 229
    const/4 v9, -0x1

    .line 230
    .local v9, index:I
    const/4 v14, 0x0

    .line 231
    .local v14, playType:I
    const/4 v6, 0x0

    .line 232
    .local v6, SetTagString:Ljava/lang/String;
    const/4 v13, 0x0

    .line 233
    .local v13, playCheck:Z
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    if-nez v18, :cond_1

    .line 234
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 653
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local p0
    :cond_1
    const-string v15, ""

    .line 239
    .local v15, subTag:Ljava/lang/String;
    sget-object v18, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 240
    const-string v18, "CORECHECK"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ListView : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 243
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    const-wide/16 v20, 0x1f4

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 248
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaListType()I

    move-result v14

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v13

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->position()J

    move-result-wide v18

    sput-wide v18, Lcom/android/music/list/view/AbstractMpListView;->position:J

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->duration()J

    move-result-wide v18

    sput-wide v18, Lcom/android/music/list/view/AbstractMpListView;->max:J

    .line 263
    const/16 v18, 0x1

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 264
    const/16 v18, 0x1

    sput v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 268
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v12

    .line 269
    .local v12, mplistFilter:Lcom/android/music/common/data/MpListFilter;
    if-eqz v12, :cond_3

    move-object v0, v12

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    if-eqz v18, :cond_3

    .line 271
    move-object v0, v12

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->bIsID:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 273
    move-object v0, v12

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 274
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v12

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 280
    :cond_3
    :goto_2
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/music/list/view/AbstractMpListView;

    .line 281
    .local v16, tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-nez v16, :cond_7

    .line 283
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler: no subTag = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " String.valueOf(playType) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 344
    .end local v12           #mplistFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v16           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 346
    .local v8, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "musicHandler: fail to get current media from music core player."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 351
    .end local v8           #e:Landroid/os/RemoteException;
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto/16 :goto_0

    .line 421
    :pswitch_0
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 422
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler, UPDATE: play thread  run type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->this$0:Lcom/android/music/list/view/AbstractMpListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "play thread isPlay = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " index ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " playType ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v18, 0x1

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 430
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-nez v18, :cond_13

    .line 432
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "musicHandler, UPDATE: oldPlayIndex == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    sput-object v6, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 434
    sput v14, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 435
    sput-object v15, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    .line 524
    :cond_4
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/music/list/view/AbstractMpListView;

    .line 525
    .restart local v16       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread 1 ===> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-eqz v16, :cond_1f

    .line 528
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 529
    .local v17, view:Landroid/view/View;
    if-nez v17, :cond_1c

    .line 531
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 266
    .end local v16           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v17           #view:Landroid/view/View;
    :cond_5
    const/16 v18, 0x2

    :try_start_1
    sput v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    goto/16 :goto_1

    .line 276
    .restart local v12       #mplistFilter:Lcom/android/music/common/data/MpListFilter;
    :cond_6
    move-object v0, v12

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 277
    move-object v0, v12

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    move-object v15, v0

    goto/16 :goto_2

    .line 289
    .restart local v16       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    :cond_7
    const/16 v18, 0xd

    move v0, v14

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v18, 0x9

    move v0, v14

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 291
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getCurrent_ID()I

    move-result v9

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v7

    .line 293
    .local v7, currentId:I
    const-string v18, "%s_%d_%d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v15, v19, v20

    const/16 v20, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 301
    .end local v7           #currentId:I
    :goto_4
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "musicHandler:index=%d,type=%d,TagString=%s,isStop=%s"

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    aput-object v6, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/16 v18, 0x3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 306
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 307
    .restart local v17       #view:Landroid/view/View;
    if-eqz v17, :cond_b

    .line 309
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler Event = UPDATERESUME SetTagString = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " playType = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 311
    .local v11, mpView:Lcom/android/music/list/view/MpView;
    if-eqz v11, :cond_9

    .line 313
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "musicHandler SetIcon"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 317
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TagBack"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/music/list/view/MpView;

    .line 318
    .local v10, mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v18

    monitor-enter v18
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    if-eqz v10, :cond_a

    .line 321
    :try_start_2
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v19

    const-string v20, "musicHandler SetProgressValue"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-wide v19, Lcom/android/music/list/view/AbstractMpListView;->position:J

    sget-wide v21, Lcom/android/music/list/view/AbstractMpListView;->max:J

    move-object v0, v10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 324
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/list/view/AbstractMpListView;->invalidate()V

    .line 325
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    :cond_b
    :try_start_3
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 329
    const/16 v18, 0x1

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 330
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0xa

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 297
    .end local v17           #view:Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I

    move-result v9

    .line 298
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto/16 :goto_4

    .line 325
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    .restart local v17       #view:Landroid/view/View;
    :catchall_0
    move-exception v19

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v19

    .line 335
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    :cond_d
    sput-object v6, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 336
    sput v14, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 337
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "SEND UPDATEFORCE"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    .end local v17           #view:Landroid/view/View;
    :cond_e
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3

    .line 355
    .end local v12           #mplistFilter:Lcom/android/music/common/data/MpListFilter;
    .end local v16           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    :pswitch_1
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 356
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 357
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 358
    const/16 v18, -0x1

    sput v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 359
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 360
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 362
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/music/list/view/AbstractMpListView;

    .line 363
    .restart local v16       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v16, :cond_0

    .line 365
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 366
    .restart local v17       #view:Landroid/view/View;
    if-eqz v17, :cond_0

    .line 369
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 370
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thred delete old listview = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Lcom/android/music/list/view/MpView;->SetNoIndex()V

    .line 372
    if-eqz v11, :cond_f

    .line 374
    invoke-virtual {v11}, Lcom/android/music/list/view/MpView;->invalidate()V

    goto/16 :goto_0

    .line 377
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 403
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local v16           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v17           #view:Landroid/view/View;
    :pswitch_2
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->removeMessages(I)V

    .line 404
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v18, :cond_10

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, v18

    move v1, v14

    if-eq v0, v1, :cond_11

    .line 405
    :cond_10
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 408
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_12

    .line 411
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->UpdateCount:I

    .line 412
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 415
    :cond_12
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x1

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 438
    :cond_13
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v18, :cond_4

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, v18

    move v1, v14

    if-eq v0, v1, :cond_4

    .line 440
    :cond_14
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 442
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread 5 ===> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mhandler => "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v20, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/music/list/view/AbstractMpListView;

    .line 445
    .restart local v16       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v16, :cond_15

    .line 447
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 448
    .restart local v17       #view:Landroid/view/View;
    if-eqz v17, :cond_15

    .line 451
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 453
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thred delete old listview = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/android/music/list/view/MpView;->SetNoIndex()V

    .line 455
    if-eqz v11, :cond_17

    .line 457
    invoke-virtual {v11}, Lcom/android/music/list/view/MpView;->invalidate()V

    .line 465
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local v17           #view:Landroid/view/View;
    :cond_15
    :goto_5
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread 6 ===> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "oldmListType = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sput v14, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 469
    sput-object v15, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    .line 471
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v18, :cond_16

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 474
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 475
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 479
    :cond_16
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    check-cast v16, Lcom/android/music/list/view/AbstractMpListView;

    .line 480
    .restart local v16       #tempView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v16, :cond_1a

    .line 482
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 483
    .restart local v17       #view:Landroid/view/View;
    if-nez v17, :cond_18

    .line 485
    sput-object v6, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 486
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    .line 487
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x64

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 460
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    .restart local p0
    :cond_17
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    .line 490
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local p0
    :cond_18
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread 7 ===> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 494
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    if-nez v11, :cond_1b

    .line 498
    invoke-static {}, Lcom/android/music/list/view/MpView;->SetNoIndex()V

    .line 505
    :goto_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TagBack"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/music/list/view/MpView;

    .line 506
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v18

    monitor-enter v18

    .line 507
    if-eqz v10, :cond_19

    .line 509
    :try_start_6
    sget-wide v19, Lcom/android/music/list/view/AbstractMpListView;->position:J

    sget-wide v21, Lcom/android/music/list/view/AbstractMpListView;->max:J

    move-object v0, v10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 511
    :cond_19
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/list/view/AbstractMpListView;->invalidate()V

    .line 512
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 518
    sput-object v6, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 521
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local v17           #view:Landroid/view/View;
    :cond_1a
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 502
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    .restart local v17       #view:Landroid/view/View;
    :cond_1b
    const/16 v18, 0x1

    sput v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 503
    sget v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    goto :goto_6

    .line 512
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    :catchall_1
    move-exception v19

    :try_start_7
    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v19

    .line 534
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .restart local p0
    :cond_1c
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread 2 ===> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 536
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    if-eqz v11, :cond_1d

    .line 538
    const/16 v18, 0x1

    sput v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 539
    sget v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 541
    :cond_1d
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread 3 ===> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TagBack"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/music/list/view/MpView;

    .line 543
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v18

    monitor-enter v18

    .line 544
    if-eqz v10, :cond_1e

    .line 546
    :try_start_8
    sget-wide v19, Lcom/android/music/list/view/AbstractMpListView;->position:J

    sget-wide v21, Lcom/android/music/list/view/AbstractMpListView;->max:J

    move-object v0, v10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 548
    :cond_1e
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "musicHandler,play thread 4 ===> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    .line 550
    monitor-exit v18
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 554
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local v17           #view:Landroid/view/View;
    :cond_1f
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x320

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 550
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    .restart local v17       #view:Landroid/view/View;
    :catchall_2
    move-exception v19

    :try_start_9
    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v19

    .line 560
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local v16           #tempView:Lcom/android/music/list/view/AbstractMpListView;
    .end local v17           #view:Landroid/view/View;
    :cond_20
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread oldPlayIndex = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " pauseCheck "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " playType "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-nez v18, :cond_21

    .line 566
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 569
    :cond_21
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v18, :cond_27

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_22

    sget v18, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, v18

    move v1, v14

    if-eq v0, v1, :cond_27

    .line 571
    :cond_22
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    .line 572
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "musicHandler,play thread pauseCheck "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->pauseCheck:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/view/AbstractMpListView;

    .line 574
    .local v5, Abview:Lcom/android/music/list/view/AbstractMpListView;
    if-nez v5, :cond_23

    .line 576
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v19, 0x0

    const-wide/16 v20, 0x12c

    invoke-virtual/range {v18 .. v21}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 579
    :cond_23
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 580
    .restart local v17       #view:Landroid/view/View;
    if-nez v17, :cond_24

    .line 582
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 585
    .restart local p0
    :cond_24
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 586
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    if-eqz v11, :cond_25

    .line 588
    sget v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 590
    :cond_25
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TagBack"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/music/list/view/MpView;

    .line 591
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v18

    monitor-enter v18

    .line 592
    if-eqz v10, :cond_26

    .line 594
    :try_start_a
    sget-wide v19, Lcom/android/music/list/view/AbstractMpListView;->position:J

    sget-wide v21, Lcom/android/music/list/view/AbstractMpListView;->max:J

    move-object v0, v10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 596
    :cond_26
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    .line 597
    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/16 v20, 0x0

    const-wide/16 v21, 0x12c

    invoke-virtual/range {v19 .. v22}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 598
    monitor-exit v18

    goto/16 :goto_0

    :catchall_3
    move-exception v19

    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v19

    .line 604
    .end local v5           #Abview:Lcom/android/music/list/view/AbstractMpListView;
    .end local v10           #mpBackView:Lcom/android/music/list/view/MpView;
    .end local v11           #mpView:Lcom/android/music/list/view/MpView;
    .end local v17           #view:Landroid/view/View;
    :cond_27
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListView;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "view_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v17

    .line 605
    .restart local v17       #view:Landroid/view/View;
    if-nez v17, :cond_28

    .line 607
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->invalidate()V

    goto/16 :goto_0

    .line 610
    :cond_28
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget v19, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/music/list/view/MpView;

    .line 611
    .restart local v11       #mpView:Lcom/android/music/list/view/MpView;
    if-eqz v11, :cond_29

    .line 614
    sget v18, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/MpView;->SetIcon(I)V

    .line 616
    :cond_29
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TagBack"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/music/list/view/MpView;

    .line 617
    .restart local v10       #mpBackView:Lcom/android/music/list/view/MpView;
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$100()Ljava/lang/String;

    move-result-object v18

    monitor-enter v18

    .line 618
    if-eqz v10, :cond_2a

    .line 620
    :try_start_b
    sget-wide v19, Lcom/android/music/list/view/AbstractMpListView;->position:J

    sget-wide v21, Lcom/android/music/list/view/AbstractMpListView;->max:J

    move-object v0, v10

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/list/view/MpView;->SetProgressValue(JJ)V

    .line 622
    :cond_2a
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    .line 623
    monitor-exit v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 639
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v18, :cond_2b

    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    move/from16 v18, v0

    if-eqz v18, :cond_2b

    .line 641
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 642
    sget-object v18, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 644
    :cond_2b
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 645
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 647
    invoke-static {}, Lcom/android/music/list/view/AbstractMpListView;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "musicHandler,play thread End..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 623
    :catchall_4
    move-exception v19

    :try_start_c
    monitor-exit v18
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v19

    .line 351
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
    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 225
    return-void
.end method
